# Copyright 2026 MCode
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
        in 1 = CH0::ADC.SINGLE(RECEIVER)   // channel 0, converter samples the line
        in 2 = CH1::ADC.SINGLE(RECEIVER)   // channel 1
        in 3 = CH2::ADC.SINGLE(RECEIVER)   // channel 2
        in 4 = CH3::ADC.SINGLE(RECEIVER)   // channel 3
        nc [5, 6] = NC                     // unconnected pads (DS21298E pin diagram: 14L pins 5/6 NC)
        [13, 12] = [VREF, AGND]::VREF(3.3V)  // reference pair; quiet expectation rides the VREF face (b4332); family default 3.3V, part VDD range 2.7-5.5V (DS21298E)

        [14, 7] = [VDD, DGND]::DC(3.3V)    // supply pair: the noisy side, no quiet expectation
        [11, 9, 10, 8] = SPI::SPI(SLAVE)   // Slave wire order [SCLK, SI, SO, CS]
    ]

    // Terminal macro: bind the 3.3V domain onto the ADC supply pins
    // (supply decoupling, reference decoupling, both returns tied to GND)
    func Power([VDD_RAIL, GND]::DC(3.3V)) {
        VDD_RAIL - CAP(100nF, ±20%, CAP.X5R, 25V) - GND
        VDD_RAIL - VDD
        GND - AGND  // analog return
        GND - DGND  // digital return

        GND - CAP(100nF, ±20%, CAP.X5R, 25V) - VREF  // reference bypass
    }
}
