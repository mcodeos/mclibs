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

# CD4000B Series - Classic general purpose, low power, wide voltage (3V~18V)
# Applications: Small appliances, simple control circuits

# CD4011 - Quad 2-input NAND gate
component CD4000B.CD4011
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        7 = VSS, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        14 = VDD, "Power supply 3V~18V"
    ]
}

# CD4001 - Quad 2-input NOR gate
component CD4000B.CD4001
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        6 = A2, "Input A2", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        7 = VSS, "Ground"
        8 = A3, "Input A3", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        10 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        14 = VDD, "Power supply 3V~18V"
    ]
}

# CD4013 - Dual D flip-flop
component CD4000B.CD4013
{
    pins = [
        1 = CLK1, "Clock 1 - rising edge", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        3 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        4 = Q1N, "Output Q1 complement", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        5 = R1, "Reset 1 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        6 = S1, "Set 1 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        7 = VSS, "Ground"
        8 = S2, "Set 2 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        9 = R2, "Reset 2 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        10 = Q2N, "Output Q2 complement", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        11 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        12 = D2, "Data 2", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        13 = CLK2, "Clock 2 - rising edge", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        14 = VDD, "Power supply 3V~18V"
    ]
}

# CD4027 - Dual JK flip-flop
component CD4000B.CD4027
{
    pins = [
        1 = CLK1, "Clock 1 - rising edge", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        2 = J1, "J 1", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        3 = K1, "K 1", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        4 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        5 = Q1N, "Output Q1 complement", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        6 = R1, "Reset 1 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        7 = VSS, "Ground"
        8 = VDD, "Power supply 3V~18V"
        9 = S1, "Set 1 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        10 = S2, "Set 2 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        11 = Q2N, "Output Q2 complement", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VDD, high:0.95*VDD ~ VDD]
        13 = K2, "K 2", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        14 = J2, "J 2", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        15 = CLK2, "Clock 2 - rising edge", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
        16 = R2, "Reset 2 - active high", voltage:[low:0V ~ 0.3*VDD, high:0.7*VDD ~ VDD]
    ]
}
