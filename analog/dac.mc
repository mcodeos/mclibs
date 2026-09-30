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
    package = PKG.SOP8
    name = "single-channel write-only SPI DAC"
    description = "Write-only SPI DAC shape: analog output on the DAC transmitter face, CS/SCK/SDI bus, VDD/VSS supply pair, LDAC sync strap, VREF reference input, SPI.WO Slave adoption"

    pins = [
        out 8 = VOUT::DAC(TRANSMITTER)     // analog output, the DAC drives the line

        [2, 3, 4] = SPI::SPI.WO(SLAVE)     // Slave wire order [CS, SCLK, SI]

        [1, 7] = [VDD, VSS]::DC(3.3V)      // supply pair; family default 3.3V, part VDD range 2.7-5.5V (DS22248A)
        5 = LDAC                           // output sync strap
        6 = VREF @role(quiet)              // reference input; quiet expectation pairs with the VSS return
    ]

    // Terminal macro: bind the 3.3V domain onto the DAC supply pins
    // (supply decoupling, reference bypass, LDAC tied low so every write
    // lands in the output register immediately)
    func Power([VDD_RAIL, GND]::DC(3.3V)) {
        VDD_RAIL - CAP(100nF, ±20%, CAP.X5R, 25V) - GND
        VDD_RAIL - VDD
        GND - VSS  // VDD decoupling

        GND - CAP(100nF, ±20%, CAP.X5R, 25V) - VREF  // reference bypass

        GND - LDAC  // tie low: latch on every CS rising edge
    }
}
