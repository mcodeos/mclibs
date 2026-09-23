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

// QFN32 audio-MCU pin-shape family (U226 b3878: sedimented from the pwrint
// board's board-internal MCU.AUDIO32 per the part-binding playbook — family
// shapes live in mclibs, boards instantiate the abstract, real parts in mcpub
// bind with `:`).
// The three power-sink rows state no nominal (U227 b3877, applied-nominal-
// design.md §4.1 ruling 1): an input requirement is an application-side
// property; the per-domain current draw (amp:) is device truth and stays.

abstract component MCU.QFN32
{
    package = PKG.QFN32
    name = "QFN32 audio MCU"
    description = "QFN32 audio MCU pin shape: digital/core/analog power sink rows, differential ADC input, I2C master, unbound pads"

    pins = [
        psnk [5,21]   = [VDD, GND]::DC(amp:120mA)             // digital power sink
        psnk [14,21]  = [VDD_CORE, GND]::DC(amp:90mA)         // core power sink
        psnk [17,18]  = [AVDD, AGND]::DC(amp:8mA)             // analog power sink (return AGND)
        io [6,7]      = ADC{P, N}::ADC.DIFF(Receiver)         // differential analog input
        io [8,9]      = I2C0::I2C(Master)
        nc 10 = NC
        nc 11 = NC
        nc 12 = NC
        nc 13 = NC
        nc 15 = NC
        nc 16 = NC
        nc 19 = NC
        nc 20 = NC
    ]

    // Terminal-level wiring macro: bind the three domains to the MCU power
    // pins (boundary = container terminal). Each incoming pair drops one local
    // decoupling capacitor at its continuation (hot->pin, ret->pin, cap across).
    func power([VDD_3V3, GND]::DC(3.3V), [VCC_1V2, GND]::DC(1.2V), [VDDA, GNDA]::DC(3.3V))
    {
        [VDD_3V3, GND]  => CAP(100nF).Cap(_) -> [VDD, GND]
        [VCC_1V2, GND]  => CAP(100nF).Cap(_) -> [VDD_CORE, GND]
        [VDDA, GNDA]    => CAP(100nF).Cap(_) -> [AVDD, AGND]
    }
}
