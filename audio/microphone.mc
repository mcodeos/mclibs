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

# Microphone abstract shapes (component inventory C7, electroacoustic family)
#
# Two forms, per the U192 ruling — real parts bind one of these with `:`
# (part-binding playbook). Pin rows are the verified hbl device faces.

// ---------------------------------------------------------------------------------------------
// Electret capsule microphone: differential capsule output + quiet capsule ground pair
// ---------------------------------------------------------------------------------------------
abstract component MICROPHONE.ELECTRET
{
    name = "Electret capsule microphone"
    description = "Differential analog capsule output; capsule body ground expects quiet copper (return intent is declared by the consuming module, conduit does not cross layers)"

    pins = [
        [1, 2] = MIC{P, N} @class(analog)  // differential analog output, P/N as one differential pair
        [3, 4] = GND @role(quiet)          // capsule body ground: expects quiet copper (6051/6052 judge)
    ]
}

// ---------------------------------------------------------------------------------------------
// MEMS silicon microphone: single-ended analog output + quiet 3.3V power pair
// ---------------------------------------------------------------------------------------------
abstract component MICROPHONE.MEMS
{
    name = "MEMS silicon microphone, analog output"
    description = "Single-ended analog output; the whole power pair expects a quiet identity (hot VCC lands on the quiet rail via the domain face, return on the quiet conduit)"

    pins = [
        out 1 = P @class(analog)                              // microphone signal positive
        psnk [4, [2, 3]] = [VCC, GND]::DC(3.3V) @role(quiet)  // power pair expects quiet identity (6051/6052 per member)
    ]
}
