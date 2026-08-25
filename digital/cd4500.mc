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

# CD4500 Series - Timing/arithmetic dedicated, wide voltage (3V~18V)
# Applications: Industrial counting, timing control

# CD4518 - Dual BCD up counter
component CD4500.CD4518
{
    pins = [
        1 = CP1, "Clock input 1 - rising edge", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        2 = EN1, "Enable 1 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        3 = RST1, "Reset 1 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        4 = Q10, "Output Q10", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        5 = Q11, "Output Q11", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        6 = Q12, "Output Q12", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        7 = Q13, "Output Q13", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        8 = VSS, "Ground"
        9 = Q23, "Output Q23", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        10 = Q22, "Output Q22", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        11 = Q21, "Output Q21", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        12 = Q20, "Output Q20", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        13 = RST2, "Reset 2 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        14 = EN2, "Enable 2 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        15 = CP2, "Clock input 2 - rising edge", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        16 = VDD, "Power supply 3V~18V"
    ]
}

# CD4520 - Dual 4-bit binary up counter
component CD4500.CD4520
{
    pins = [
        1 = CP1, "Clock input 1 - rising edge", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        2 = EN1, "Enable 1 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        3 = RST1, "Reset 1 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        4 = Q10, "Output Q10", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        5 = Q11, "Output Q11", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        6 = Q12, "Output Q12", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        7 = Q13, "Output Q13", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        8 = VSS, "Ground"
        9 = Q23, "Output Q23", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        10 = Q22, "Output Q22", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        11 = Q21, "Output Q21", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        12 = Q20, "Output Q20", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        13 = RST2, "Reset 2 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        14 = EN2, "Enable 2 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        15 = CP2, "Clock input 2 - rising edge", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        16 = VDD, "Power supply 3V~18V"
    ]
}

# CD4511 - BCD to 7-segment decoder/driver
component CD4500.CD4511
{
    pins = [
        1 = A, "BCD input A", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        2 = B, "BCD input B", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        3 = C, "BCD input C", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        4 = D, "BCD input D", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        5 = LT, "Lamp test - active low", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        6 = RBI, "Ripple blanking input - active low", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        7 = BI, "Blank input - active low", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        8 = VSS, "Ground"
        9 = a, "Segment output a", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        10 = b, "Segment output b", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        11 = c, "Segment output c", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        12 = d, "Segment output d", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        13 = e, "Segment output e", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        14 = f, "Segment output f", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        15 = g, "Segment output g", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        16 = VDD, "Power supply 3V~18V"
    ]
}

# CD4543 - BCD to 7-segment latch/decoder/driver
component CD4500.CD4543
{
    pins = [
        1 = A, "BCD input A", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        2 = B, "BCD input B", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        3 = C, "BCD input C", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        4 = D, "BCD input D", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        5 = LE, "Latch enable - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        6 = BI, "Blank input - active low", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        7 = LT, "Lamp test - active low", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        8 = VSS, "Ground"
        9 = a, "Segment output a", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        10 = b, "Segment output b", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        11 = c, "Segment output c", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        12 = d, "Segment output d", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        13 = e, "Segment output e", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        14 = f, "Segment output f", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        15 = g, "Segment output g", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        16 = VDD, "Power supply 3V~18V"
    ]
}
