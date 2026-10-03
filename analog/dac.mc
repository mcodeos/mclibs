# Copyright (c) 2026 MCode
#
# Licensed under the Apache License, Version 2.0.

// 1-channel write-only SPI DAC pin-shape family (C2 gap).
// Anatomy distilled from the page-verified MCP4921 8-pin pinout (mcpub
// analog/mcp4921, DS22248A p.1 package drawing + Table 3-1 p.17):
//   1 = VDD, 2 = CS, 3 = SCK, 4 = SDI, 5 = LDAC, 6 = VREF, 7 = VSS,
//   8 = VOUT
// The device has no SO pin: a write-only slave cannot conform to the full
// SPI table (wire 3 SO has no pin to carry it), so the bus face rides the
// SPI.WO slave (CS, SCLK, SI -- CS-first order like SPI.3, no data pair to
// cross) = pins [2, 3, 4].

abstract component DAC.C1SPI
{
    name = "single-channel write-only SPI DAC"
    description = "Write-only SPI DAC shape: analog output on the DAC transmitter face, CS/SCK/SDI bus, VREF/VSS quiet reference pair, VDD supply on the shared VSS return, LDAC sync strap, SPI.WO Slave adoption"

    pins = [
        [6, 7] = [VREF, VSS]::VREF(3.3V)  // reference pair; quiet expectation rides the VREF face (b4332); family default 3.3V, part VDD range 2.7-5.5V (DS22248A)
        out 8 = VOUT::DAC(TRANSMITTER)     // analog output, the DAC drives the line

        [1, 7] = [VDD, VSS]::DC(3.3V)      // supply pair: the noisy side, no quiet expectation (VSS shared with the reference pair above, ldo GND precedent)
        [2, 3, 4] = SPI::SPI.WO(SLAVE)     // Slave wire order [CS, SCLK, SI]
        5 = LDAC                           // output sync strap
    ]

    // Terminal macro: bind the 3.3V domain onto the DAC supply pins
    // (supply decoupling, reference bypass, LDAC tied low so every write
    // lands in the output register immediately)
    // Statement-unity law (mcd design-axioms B10): the ::DC pair taps ride
    // one vector-zip statement, and the reference bypass returns on VSS (the
    // reference pair's own return member) so the drawing groups it with the
    // VREF/VSS pair (netlist-equal to GND under the tie above).
    func Power([VDD_RAIL, GND]::DC(3.3V)) {
        VDD_RAIL - CAP(100nF, ±20%, CAP.X5R, 25V) - GND
        [VDD_RAIL, GND] - [VDD, VSS]  // supply pair, one bundle

        VSS - CAP(100nF, ±20%, CAP.X5R, 25V) - VREF  // reference bypass, on the reference pair

        GND - LDAC  // tie low: latch on every CS rising edge
    }
}
