# Copyright (c) 2026 MCode
#
# Licensed under the Apache License, Version 2.0.

// UART-to-CAN transceiver pin-shape family (C3 gap: the bus-side PHY the
// CAN node controllers have been missing).
// Anatomy distilled from the page-verified MCP2551 PDIP/SOIC-8 pinout
// (mcpub comm/mcp2551, DS21667D p.1 package drawing):
//   1 = TXD, 2 = VSS, 3 = VDD, 4 = RXD, 5 = VREF, 6 = CANL, 7 = CANH, 8 = Rs
// Logic side adopts UART.TTL(DCE) (the uart2rs485 precedent view: the
// transceiver drives the DTE's RX through RXD and receives the DTE's TX
// on TXD). Bus side binds the CAN conductor view role-less -- a mediated
// device takes its shape from the face table, it does not claim a node
// role (the controller above this PHY does).

abstract component UARTtoCAN
{
    name = "UART to CAN transceiver"
    description = "CAN transceiver shape: TXD/RXD logic side adopting UART.TTL(DCE), CANH/CANL differential bus side, VDD/VSS 5V supply pair, VDD/2 reference output, slope-control input"

    pins = [
        [4, 1] = UART{RXD, TXD}::UART.TTL(DCE), ["Receive Output (to DTE RX)", "Driver Input (from DTE TX)"]   // DCE view: member 1 TX drives the DTE's RX; bare TXD/RXD rows merged into the adoption (4.10)
        io [7, 6, 2] = CAN{CANH, CANL, GND}::CAN(), "CAN bus pair with return"   // role-less conductor view; VSS rides the face row as the bus return
        psnk [3, 2] = [VDD, VSS]::DC(5V)   // VSS rides both rows: bus return on the face, supply return on the crossing
        out 5 = VREF, "VDD/2 reference output"
        in 8 = Rs, "Slope control input (high-speed mode when tied to GND, slope resistor for rate control, standby when tied to VDD)"
    ]

    // Terminal macro: bind the 5V domain onto the transceiver supply pins;
    // Rs ties to GND = high-speed mode (DS21667D 4.1)
    // Statement-unity law (design-axioms B10): the ::DC pair taps ride one
    // vector-zip statement.
    func Power([VDD_5V, GND]::DC(5V)) {
        VDD_5V - CAP(100nF, ±20%, CAP.X5R, 25V) - GND
        [VDD_5V, GND] - [VDD, VSS]  // supply pair, one bundle
        GND - Rs
    }
}
