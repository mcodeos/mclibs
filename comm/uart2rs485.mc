# Copyright (c) 2026 MCode
#
# Licensed under the Apache License, Version 2.0.

// UART-to-RS485 transceiver functional face (U181). Pin order is the
// canonical MAX485-class SOIC-8 device face: 1 RO, 2 /RE (declared _RE), 3 DE, 4 DI,
// 5 GND, 6 A, 7 B, 8 VCC. Pins are declared first (with per-lane
// directions), then adopted into the interface views: bus side into the
// 2-wire UART.RS485 base family, logic side into UART.TTL viewed as DCE
// (the transceiver drives the DTE's RX through RO and receives the DTE's
// TX on DI). The active-low receiver enable carries the `_` prefix per
// pin-semantics 2.8 (NAMING.md 6): the prefix marks an active-low signal,
// whatever its direction.
abstract component UARTtoRS485
{
    name = "UARTtoRS485"
    description = "UART to RS485 Transceiver"

    partno = ""
    spec.HBM = ±0kV
    spec.workingtemperature = -0°C ~ +0°C

    pins = [
        out 1 = RO, "Receive Output (to DTE RX)"
        in 2 = _RE, "Receiver enable (parts mark /RE, active low)"
        in 3 = DE, "Driver enable, active high"
        in 4 = DI, "Driver Input (from DTE TX)"
        [1, 4] = UART{RO, DI}::UART.TTL(DCE)     // adoption: directions stay as declared
        io [6, 7] = RS485{A, B}::UART.RS485(), "RS485 bus pair"
        psnk [8, 5] = [VCC, GND]::DC(5V)
    ]

    func UARTtoRS485(pwr::DC(5V))
    {
        pwr -> [VCC, GND]
    }

    func IPDMatch()
    {
        VCC - RES(5.1kΩ) - RS485.A - RES(120Ω) - RS485.B - RES(5.1kΩ) - GND
    }

    func AutoTrans()
    {
        TRANS.NPN Q
        VCC - RES(4.7kΩ) - (Q.COLLECTOR + DE + _RE)
        UART.DI - RES(4.7kΩ) - Q.BASE
        Q.EMITTER + GND
    }
}
