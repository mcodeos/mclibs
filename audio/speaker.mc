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

# Speaker abstract shape (component inventory C7, electroacoustic family)
#
# Real parts bind with `:` (part-binding playbook). Pin rows are the verified
# hbl device face: BTL bridge-driven differential load plus two skeleton/shield
# quiet grounds.

use $::mcode.ifs

abstract component SPEAKER.BTL
{
    name = "BTL-driven speaker"
    description = "Bridge-tied-load speaker: differential drive pair as the BTL receiver side, skeleton/shield grounds expecting quiet copper"

    pins = [
        in [1, 2] = IN{P, N}::AMP.BTL(Receiver)  // BTL bridge-driven load, plus/minus
        3 = GND @role(quiet)                     // skeleton/shield ground: expects quiet copper (6051/6052 judge)
        4 = GND @role(quiet)                     // (current binding = consuming module's self-held quiet island)
    ]
}
