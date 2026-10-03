# Copyright (c) 2026 MCode
#
# Licensed under the Apache License, Version 2.0.

// UART-to-LIN transceiver pin-shape family (C3 gap: the bus-side PHY for
// LIN, single-wire battery-domain).
// Anatomy distilled from the page-verified MCP2003 PDIP/SOIC-8 pinout
// (mcpub comm/mcp2003, DS20002230G p.1 package drawing):
//   1 = RXD, 2 = CS, 3 = WAKE, 4 = TXD, 5 = VSS, 6 = LBUS, 7 = VBB, 8 = VREN
// CS and WAKE carry overbars in the figure (active low); identifiers keep the
// plain spelling. The device runs from the 12V battery domain on VBB -- there
// is no logic VDD pin; the logic side is level-compatible with the VREN
// domain. Logic side adopts UART.TTL(DCE) (the uart2rs485 precedent view);
// bus side binds the LIN conductor view role-less -- a mediated device takes
// its shape from the face table, the master/slave roles belong to the
// controllers above this PHY.

abstract component UARTtoLIN
{
    name = "UART to LIN transceiver"
    description = "LIN transceiver shape: TXD/RXD logic side adopting UART.TTL(DCE), LBUS single-wire bus side, VBB/VSS 12V battery-domain supply pair, active-low _CS and _WAKE control inputs, VREN regulator-enable output"

    pins = [
        [1, 4] = UART{RXD, TXD}::UART.TTL(DCE), ["Receive Output (to DTE RX)", "Driver Input (from DTE TX)"]   // DCE view: member 1 TX drives the DTE's RX; bare rows merged into the adoption (4.10)
        io [6, 5] = LIN{LBUS, VSS}::LIN(), "LIN bus wire with return"   // role-less conductor view

        psnk [7, 5] = [VBB, VSS]::DC(12V)   // VSS rides both rows: bus return on the face, supply return on the crossing
        in 2 = _CS, "Chip select (datasheet CS with overbar)"
        in 3 = _WAKE, "Wake-up input (datasheet WAKE with overbar)"
        out 8 = VREN, "Regulator enable output (high in all modes except Power-Down, drives the logic input of an external regulator)"
    ]

    // Terminal macro: bind the 12V battery domain onto the supply pins
    // Statement-unity law (design-axioms B10): the ::DC pair taps ride one
    // vector-zip statement.
    func Power([VBB_12V, GND]::DC(12V)) {
        VBB_12V - CAP(100nF, ±20%, CAP.X5R, 25V) - GND
        [VBB_12V, GND] - [VBB, VSS]  // supply pair, one bundle
    }
}
