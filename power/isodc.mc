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

// Isolated DCDC converter pin-shape family, SOIC8 (U226 b3878: sedimented
// from the pwrint board's board-internal DC.ISO_SRC per the part-binding
// playbook).
// The primary sink row states no nominal (U227 b3877, applied-nominal-
// design.md §4.1 ruling 1). The secondary source row keeps the output
// nominal: a source nominal is device truth.
// The secondary return GND_ISO is a separate return copper from the primary
// GND — no shared copper, no DC bridge across the isolation barrier; the
// isolation itself is decided by the bound conduit role, with no ::DC
// contract word across the barrier.

abstract component DCDC.ISO_SOIC8
{
    package = PKG.SOIC8
    name = "Isolated DCDC converter, SOIC8"
    description = "Primary sink pair, secondary source pair with isolated return, one unbound pad"

    pins = [
        psnk [1,2] = [PRI, GND]::DC()             // primary sink (return GND)
        psrc [4,5] = [SEC, GND_ISO]::DC(5V)       // secondary source (return GND_ISO — separate return copper)
        nc 3 = NC
    ]
}
