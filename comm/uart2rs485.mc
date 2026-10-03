# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// UART-to-RS485 transceiver functional face (U181). Pin order is the
// canonical SOIC-8 RS485-transceiver device face: 1 RO, 2 /RE (declared _RE), 3 DE, 4 DI,
// 5 GND, 6 A, 7 B, 8 VCC. Logic side adopts UART.TTL viewed as DCE
// (the transceiver drives the DTE's RX through RO and receives the DTE's
// TX on DI; directions come from the DCE role face), bus side adopts the
// 2-wire UART.RS485 base family. The active-low receiver enable carries the
// `_` prefix per pin-semantics 2.8 (NAMING.md 6): the prefix marks an
// active-low signal, whatever its direction.
abstract component XCVR.RS485
{
    name = "XCVR.RS485"
    description = "UART to RS485 Transceiver"

    partno = ""
    spec.HBM = ±0kV
    spec.working_temperature = -0°C ~ +0°C

    pins = [
        [1, 4] = UART{RO, DI}::UART.TTL(DCE), ["Receive Output (to DTE RX)", "Driver Input (from DTE TX)"]   // DCE view: directions come from the role face; bare rows merged into the adoption (4.10)
        in 2 = _RE, "Receiver enable (parts mark /RE, active low)"
        in 3 = DE, "Driver enable, active high"
        io [6, 7] = RS485{A, B}::UART.RS485(), "RS485 bus pair"
        psnk [8, 5] = [VCC, GND]::DC(5V)
    ]

    func Power(pwr::DC(5V))
    {
        pwr -> [VCC, GND]
    }

    func BiasMatch()
    {
        VCC - RES(5.1kΩ) - RS485.A - RES(120Ω) - RS485.B - RES(5.1kΩ) - GND
    }

    func AutoDirection()
    {
        TRANS.NPN Q
        VCC - RES(4.7kΩ) - (Q.COLLECTOR + DE + _RE)
        UART.DI - RES(4.7kΩ) - Q.BASE
        Q.EMITTER + GND
    }
}
