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

// SOT23-5 buck (DCDC) pin-shape family (U192 ruling 1: package pin-shape
// abstracts live in mclibs; real parts in mcpub bind with `:`).
// Pin order is the verified device face (hbl LP3220 board):
//   1 = EN, 2 = GND, 3 = LX, 4 = Vin, 5 = FB
// The VIN sink row states no nominal (U227 b3877, applied-nominal-design.md
// §4.1 ruling 1): an input requirement is an application-side property, so
// the generic base declares the DC crossing only and the real part's
// accepted window (spec input_req) adjudicates each board's feed.
// The LX source row keeps the canonical output nominal: a source nominal is
// device truth, and the variant-level specialization of that nominal is
// ruling 2 (案 A), not yet landed.

abstract component DCDC.SOT23_5
{
    package = PKG.SOT_23_5
    name = "SOT23-5 buck"
    description = "SOT23-5 buck pin shape: EN enable, LX switch node, Vin/GND input pair, FB feedback"

    pins = [
        psnk [4, 2] = VIN{Vin, GND}::DC()      // sink: input supply pair (no nominal — application side)
        psrc [3, 2] = LX{Lx, GND}::DC(1.2V)    // source: switch node (::DC is the filtered rail contract, delivered through the inductor)
        in 1 = EN                              // chip enable
        in 5 = FB                              // output voltage feedback
    ]

    func enable() {
        VIN.Vin -> RES(47kΩ) -> EN  // EN driven off the input rail through 47k
    }
}
