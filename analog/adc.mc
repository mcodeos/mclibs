# Copyright (c) 2026 MCode
#
# Licensed under the Apache License, Version 2.0.

// 4-channel SPI ADC pin-shape family (C2 gap: the converter device that
// adopts ADC.SINGLE on its channel pins -- the receiver side the sensor
// transmitters have been missing).
// Anatomy distilled from the page-verified MCP3204 SOP14 pinout (mcpub
// analog/mcp3204, DS21298E p.1 package drawing):
//   1..4 = CH0..CH3, 5, 6 = NC, 7 = DGND, 8 = CS/SHDN, 9 = DIN, 10 = DOUT,
//   11 = CLK, 12 = AGND, 13 = VREF, 14 = VDD
// SPI adoption rides the Slave wire order [SCLK, SI, SO, CS] =
// pins [11, 9, 10, 8] (b3804 face: ordinal = wire identity, SCLK first).
// Channel pins ride the ADC.SINGLE receiver face; the @class(analog) default
// is inherited from the interface (D3: adoption carries the interface default).

abstract component ADC.C4SPI
{
    name = "4-channel SPI ADC"
    description = "SPI ADC shape: four single-ended channel inputs, CLK/DIN/DOUT/CS bus, VREF/AGND quiet reference pair, VDD/DGND supply pair, SPI Slave adoption"

    pins = [
        in [1:4] = CH[0:3]::ADC.SINGLE(RECEIVER)   // channels 0-3, converter samples the lines
        nc [5, 6] = NC                     // unconnected pads (DS21298E pin diagram: 14L pins 5/6 NC)
        [13, 12] = [VREF, AGND]::VREF(3.3V)  // reference pair; quiet expectation rides the VREF face (b4332); family default 3.3V, part VDD range 2.7-5.5V (DS21298E)

        [14, 7] = [VDD, DGND]::DC(3.3V)    // supply pair: the noisy side, no quiet expectation
        [11, 9, 10, 8] = SPI::SPI(SLAVE)   // Slave wire order [SCLK, SI, SO, CS]
    ]

    // Terminal macro: bind the 3.3V domain onto the ADC supply pins
    // (supply decoupling, reference decoupling, both returns tied to GND).
    // Statement-unity law (mcd design-axioms B10): the ::DC pair taps ride
    // one vector-zip statement, and the reference bypass returns on AGND so
    // the drawing groups it with the analog pair (netlist-equal to GND under
    // the direct tie). Power is the direct-tie shape; PowerIso is the
    // bead variant.
    func Power([VDD_RAIL, GND]::DC(3.3V)) {
        VDD_RAIL - CAP(100nF, ±20%, CAP.X5R, 25V) - GND
        [VDD_RAIL, GND] - [VDD, DGND]  // supply pair, one bundle
        GND - AGND  // analog return, direct tie
        AGND - CAP(100nF, ±20%, CAP.X5R, 25V) - VREF  // reference bypass, analog side
    }

    // Isolated variant: the analog return joins the digital ground through a
    // ferrite bead instead of a direct tie. AGND stays its own net (DC-common,
    // HF-isolated), so the reference bypass returns on the analog side and the
    // VREF quiet expectation judges on AGND alone.
    func PowerIso([VDD_RAIL, GND]::DC(3.3V)) {
        VDD_RAIL - CAP(100nF, ±20%, CAP.X5R, 25V) - GND
        [VDD_RAIL, GND] - [VDD, DGND]  // supply pair, one bundle
        GND - IND.FB(600Ω, 500mA, 100MHz) - AGND  // analog return via bead
        AGND - CAP(100nF, ±20%, CAP.X5R, 25V) - VREF  // reference bypass, analog side
    }
}
