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

// SPI NOR flash pin-shape family (U192: storage abstraction, C5 gap).
// Device-shape face distilled from the verified hbl GD25Q32E board (SOP8,
// standard SPI NOR pinout):
//   1 = _CS, 2 = SO/IO1, 3 = _WP/IO2, 4 = VSS, 5 = SI/IO0, 6 = SCLK,
//   7 = _HOLD/IO3, 8 = VCC
// SPI adoption rides the Slave wire order [SCLK, SI, SO, CS] =
// pins [6, 5, 2, 1] (b3804 face: ordinal = wire identity, SCLK first). The
// `power` terminal macro (decoupling + pullups on the strap pins) rides the
// base: funcs are inside the variant data lock.

abstract component FLASH.SPI_NOR
{
    package = PKG.SOP8
    name = "SPI NOR flash"
    description = "SOP8 SPI NOR flash shape: _CS/_WP/_HOLD straps, SI/SO/SCLK bus, VCC/VSS supply pair, SPI Slave adoption"

    pins = [
        1 = _CS                         // chip select, active low
        2 = SO | IO1                    // serial data output
        3 = _WP | IO2                   // write protection
        5 = SI | IO0                    // serial data input
        6 = SCLK                        // serial clock input
        7 = _HOLD | IO3                 // hold, active low
        [8, 4] = [VCC, VSS]::DC(3.3V)   // supply pair

        [6, 5, 2, 1] = SPI::SPI(Slave)  // Slave wire order [SCLK, SI, SO, CS]
    ]

    // Terminal macro: bind the 3.3V domain onto the flash supply pins
    // (decoupling + chip-select / write-protect / hold pullups)
    func power([VDD_3V3, GND]::DC(3.3V)) {
        [VDD_3V3, GND] => CAP(100nF, ±20%, CAP.X5R, 25V).Cap(_) -> [VCC, VSS]  // VCC decoupling

        RES(10kΩ).Pullup([_CS, VDD_3V3])
        RES(10kΩ).Pullup([_WP, VDD_3V3])
        RES(10kΩ).Pullup([_HOLD, VDD_3V3])
    }
}
