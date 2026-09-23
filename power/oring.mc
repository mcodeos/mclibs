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

// Ideal-diode ORing pin-shape family, 2:1 (U226 b3878: sedimented from the
// pwrint board's board-internal ORING.IDEAL per the part-binding playbook).
// Two source inputs are combined onto one output pair; the ORing declaration
// is what admits the PWR-3 source contention on the shared output.
// The input sink rows state no nominal (U227 b3877, applied-nominal-design.md
// §4.1 ruling 1): the fed voltage is an application-side property. The output
// source row keeps the board's canonical output nominal (source nominal is
// device truth; the sedimented shape is the board's 5V rail face).

abstract component ORING.IDEAL
{
    package = PKG.SOT_23_6
    name = "Ideal-diode ORing, 2:1"
    description = "Two power inputs combined onto one output pair (ideal-diode ORing; anti-backfeed per branch)"

    pins = [
        psnk [1,2] = [IN1, GND]::DC()          // source input 1 (return GND)
        psnk [3,4] = [IN2, GND]::DC()          // source input 2 (return GND)
        psrc [5,6] = [OUT, GND]::DC(5V)        // combined output pair
    ]
}
