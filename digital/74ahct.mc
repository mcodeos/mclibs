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

# 74AHCT Series - High speed, TTL compatible, 5V operation (4.5V~5.5V)
# Applications: Mixed TTL/CMOS systems, legacy TTL interface

# 74AHCT00 - Quad 2-input NAND gate
component AHCT.74AHCT00
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT02 - Quad 2-input NOR gate
component AHCT.74AHCT02
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = GND, "Ground"
        8 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT04 - Hex inverter
component AHCT.74AHCT04
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = Y5, "Output Y5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = A5, "Input A5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = Y6, "Output Y6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = A6, "Input A6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT08 - Quad 2-input AND gate
component AHCT.74AHCT08
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT32 - Quad 2-input OR gate
component AHCT.74AHCT32
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT86 - Quad 2-input XOR gate
component AHCT.74AHCT86
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT10 - Triple 3-input NAND gate
component AHCT.74AHCT10
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = C1, "Input C1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = GND, "Ground"
        8 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = C2, "Input C2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = C3, "Input C3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT20 - Dual 4-input NAND gate
component AHCT.74AHCT20
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = C1, "Input C1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D1, "Input D1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = NC, "No connection"
        7 = GND, "Ground"
        8 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = D2, "Input D2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = C2, "Input C2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = NC, "No connection"
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT30 - 8-input NAND gate
component AHCT.74AHCT30
{
    pins = [
        1 = A, "Input A", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B, "Input B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = C, "Input C", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D, "Input D", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = E, "Input E", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = F, "Input F", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = GND, "Ground"
        8 = Y, "Output Y", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = NC, "No connection"
        10 = NC, "No connection"
        11 = NC, "No connection"
        12 = NC, "No connection"
        13 = G, "Input G", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT14 - Hex Schmitt trigger inverter
component AHCT.74AHCT14
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = Y5, "Output Y5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = A5, "Input A5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = Y6, "Output Y6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = A6, "Input A6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT03 - Quad 2-input NAND gate (open collector)
component AHCT.74AHCT03
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1 (open collector)", voltage:[low:0V ~ 0.05*VCC, high:0V ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2 (open collector)", voltage:[low:0V ~ 0.05*VCC, high:0V ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3 (open collector)", voltage:[low:0V ~ 0.05*VCC, high:0V ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4 (open collector)", voltage:[low:0V ~ 0.05*VCC, high:0V ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT125 - Quad 3-state bus buffer (active high)
component AHCT.74AHCT125
{
    pins = [
        1 = OE1, "Output enable 1 - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = OE2, "Output enable 2 - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = OE3, "Output enable 3 - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = OE4, "Output enable 4 - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT126 - Quad 3-state bus buffer (active low)
component AHCT.74AHCT126
{
    pins = [
        1 = OE1, "Output enable 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = OE2, "Output enable 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = OE3, "Output enable 3 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = OE4, "Output enable 4 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT138 - 3-to-8 line decoder
component AHCT.74AHCT138
{
    pins = [
        1 = G1, "Enable G1 - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = G2A, "Enable G2A - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = G2B, "Enable G2B - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = A0, "Input A0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = Y0, "Output Y0 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Y1, "Output Y1 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Y2, "Output Y2 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Y3, "Output Y3 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Y4, "Output Y4 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Y5, "Output Y5 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Y6, "Output Y6 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = Y7, "Output Y7 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT139 - Dual 2-to-4 line decoder
component AHCT.74AHCT139
{
    pins = [
        1 = E1, "Enable 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = A10, "Input A0 for decoder 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = A11, "Input A1 for decoder 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = Y10, "Output Y0 for decoder 1 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = Y11, "Output Y1 for decoder 1 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Y12, "Output Y2 for decoder 1 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = Y13, "Output Y3 for decoder 1 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Y23, "Output Y3 for decoder 2 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Y22, "Output Y2 for decoder 2 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Y21, "Output Y1 for decoder 2 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Y20, "Output Y0 for decoder 2 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = A21, "Input A1 for decoder 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = A20, "Input A0 for decoder 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = E2, "Enable 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT42 - BCD to decimal decoder
component AHCT.74AHCT42
{
    pins = [
        1 = A0, "Input A0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = Y0, "Output Y0 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Y1, "Output Y1 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = Y2, "Output Y2 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Y3, "Output Y3 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Y4, "Output Y4 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Y5, "Output Y5 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Y6, "Output Y6 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Y7, "Output Y7 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Y8, "Output Y8 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = Y9, "Output Y9 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT47 - BCD to 7-segment decoder (common anode, active low)
component AHCT.74AHCT47
{
    pins = [
        1 = LT, "Lamp test - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = RBI, "Ripple blanking input - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = A0, "Input A0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = BI_RBO, "Blanking input/Ripple blanking output", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = a, "Segment a - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = b, "Segment b - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = c, "Segment c - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = d, "Segment d - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = e, "Segment e - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = f, "Segment f - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = g, "Segment g - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT48 - BCD to 7-segment decoder (common cathode, active high)
component AHCT.74AHCT48
{
    pins = [
        1 = LT, "Lamp test - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = RBI, "Ripple blanking input - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = A0, "Input A0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = BI_RBO, "Blanking input/Ripple blanking output", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = a, "Segment a - active high", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = b, "Segment b - active high", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = c, "Segment c - active high", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = d, "Segment d - active high", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = e, "Segment e - active high", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = f, "Segment f - active high", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = g, "Segment g - active high", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT147 - 10-to-4 line priority encoder (active low)
component AHCT.74AHCT147
{
    pins = [
        1 = I1, "Input 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = I2, "Input 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = I3, "Input 3 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = I4, "Input 4 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = I5, "Input 5 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = I6, "Input 6 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = I7, "Input 7 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = A0, "Output A0 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = A1, "Output A1 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = A2, "Output A2 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = A3, "Output A3 - active low", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = I8, "Input 8 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = I9, "Input 9 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = NC, "No connection"
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT74 - Dual D flip-flop
component AHCT.74AHCT74
{
    pins = [
        1 = CLR1, "Clear 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = CLK1, "Clock 1 - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = PR1, "Preset 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q1N, "Output Q1 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Q2N, "Output Q2 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = PR2, "Preset 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = CLK2, "Clock 2 - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = CLR2, "Clear 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT76 - Dual JK flip-flop (negative edge triggered)
component AHCT.74AHCT76
{
    pins = [
        1 = CLK1, "Clock 1 - negative edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = J1, "Input J1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = K1, "Input K1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = CLR1, "Clear 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = PR1, "Preset 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = Q1N, "Output Q1 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Q2N, "Output Q2 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = PR2, "Preset 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = CLR2, "Clear 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = K2, "Input K2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = J2, "Input J2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = CLK2, "Clock 2 - negative edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT174 - Hex D flip-flop (common clock/clear, 3-state)
component AHCT.74AHCT174
{
    pins = [
        1 = CLR, "Clear - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D4, "Data 4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = D5, "Data 5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = D6, "Data 6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT373 - Octal D latch (3-state, transparent latch)
component AHCT.74AHCT373
{
    pins = [
        1 = LE, "Latch enable - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = OE, "Output enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = D4, "Data 4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = D5, "Data 5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        9 = D6, "Data 6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = D7, "Data 7", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = GND, "Ground"
        12 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        17 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        18 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        19 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        20 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT374 - Octal D flip-flop (3-state, edge triggered)
component AHCT.74AHCT374
{
    pins = [
        1 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = D4, "Data 4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = D5, "Data 5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = D6, "Data 6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        9 = D7, "Data 7", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = GND, "Ground"
        11 = OE, "Output enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        17 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        18 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        19 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        20 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT160 - Synchronous 4-bit decimal counter (synchronous clear/load)
component AHCT.74AHCT160
{
    pins = [
        1 = CLR, "Clear - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = ENP, "Enable P", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = ENT, "Enable T", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = LOAD, "Load - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT190 - Synchronous decimal up/down counter (asynchronous load)
component AHCT.74AHCT190
{
    pins = [
        1 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = UP_DN, "Up/down control", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = EN, "Enable", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = LOAD, "Load - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = MAX_MIN, "Maximum/minimum indicator", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT90 - Asynchronous BCD decade counter
component AHCT.74AHCT90
{
    pins = [
        1 = CLK1A, "Clock 1A", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = CLK1B, "Clock 1B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = R01, "Reset 01", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = R02, "Reset 02", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = R91, "Reset 91", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = R92, "Reset 92", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = CLK2A, "Clock 2A", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = CLK2B, "Clock 2B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT161 - Synchronous 4-bit binary counter (synchronous clear/load)
component AHCT.74AHCT161
{
    pins = [
        1 = CLR, "Clear - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = ENP, "Enable P", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = ENT, "Enable T", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = LOAD, "Load - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT163 - Synchronous 4-bit binary counter (synchronous clear, asynchronous load)
component AHCT.74AHCT163
{
    pins = [
        1 = CLR, "Clear - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = ENP, "Enable P", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = ENT, "Enable T", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = LOAD, "Load - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT191 - Synchronous 4-bit binary up/down counter (asynchronous load)
component AHCT.74AHCT191
{
    pins = [
        1 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = UP_DN, "Up/down control", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = EN, "Enable", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = LOAD, "Load - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = MAX_MIN, "Maximum/minimum indicator", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT393 - Dual 4-bit asynchronous binary counter
component AHCT.74AHCT393
{
    pins = [
        1 = CLK1, "Clock 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = MR1, "Master reset 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Q10, "Output Q0 for counter 1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = Q11, "Output Q1 for counter 1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = Q12, "Output Q2 for counter 1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q13, "Output Q3 for counter 1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Q23, "Output Q3 for counter 2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = Q22, "Output Q2 for counter 2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q21, "Output Q1 for counter 2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q20, "Output Q0 for counter 2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = MR2, "Master reset 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = CLK2, "Clock 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT4017 - Decade counter/Johnson counter
component AHCT.74AHCT4017
{
    pins = [
        1 = CP, "Clock input", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = MR, "Master reset", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q8, "Output Q8", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q9, "Output Q9", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = CO, "Carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = INH, "Inhibit", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT4022 - Octal counter/Johnson counter
component AHCT.74AHCT4022
{
    pins = [
        1 = CP, "Clock input", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = MR, "Master reset", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = CO, "Carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = INH, "Inhibit", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT164 - 8-bit serial-in, parallel-out shift register (asynchronous clear)
component AHCT.74AHCT164
{
    pins = [
        1 = A, "Input A", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B, "Input B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = CLK, "Clock", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = MR, "Master reset", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT165 - 8-bit parallel-in, serial-out shift register (parallel load)
component AHCT.74AHCT165
{
    pins = [
        1 = SH_LD, "Shift/load - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = D4, "Data 4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = D5, "Data 5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = D6, "Data 6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        9 = D7, "Data 7", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = GND, "Ground"
        11 = CLK, "Clock", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = CLK_INH, "Clock inhibit", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Q7N, "Output Q7 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = SER, "Serial input", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT595 - 8-bit serial-in, parallel-out shift register (3-state, output latch)
component AHCT.74AHCT595
{
    pins = [
        1 = QA, "Output QA", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        2 = QB, "Output QB", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = QC, "Output QC", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = QD, "Output QD", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = QE, "Output QE", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = QF, "Output QF", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = QG, "Output QG", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = QH, "Output QH", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = MR, "Master reset - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = SH_CP, "Shift register clock", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = ST_CP, "Storage register clock", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = OE, "Output enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = DS, "Serial data input", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = QHS, "Serial data output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT597 - 8-bit parallel-in, serial-out shift register (with latch)
component AHCT.74AHCT597
{
    pins = [
        1 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D4, "Data 4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = D5, "Data 5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = D6, "Data 6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = D7, "Data 7", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = LG, "Latch enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = CLK, "Clock", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = CLK_INH, "Clock inhibit", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Q7N, "Output Q7 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = SER, "Serial input", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT194 - 4-bit bidirectional shift register (parallel load)
component AHCT.74AHCT194
{
    pins = [
        1 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = MR, "Master reset - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = S0, "Mode control S0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = S1, "Mode control S1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = CLK, "Clock", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = DS_L, "Serial input left", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = DS_R, "Serial input right", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT151 - 8-to-1 data selector (complementary outputs)
component AHCT.74AHCT151
{
    pins = [
        1 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D4, "Data 4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = D5, "Data 5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = D6, "Data 6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = D7, "Data 7", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A0, "Address A0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = A1, "Address A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = A2, "Address A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = STROBE, "Strobe - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = Y, "Output Y", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = W, "Output W", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT153 - Dual 4-to-1 data selector
component AHCT.74AHCT153
{
    pins = [
        1 = A, "Address A", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B, "Address B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = 1D0, "Data 0 for selector 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = 1D1, "Data 1 for selector 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = 1D2, "Data 2 for selector 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = 1D3, "Data 3 for selector 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = 1STROBE, "Strobe 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = 1Y, "Output 1Y", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = 2Y, "Output 2Y", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = 2STROBE, "Strobe 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = 2D3, "Data 3 for selector 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = 2D2, "Data 2 for selector 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = 2D1, "Data 1 for selector 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = 2D0, "Data 0 for selector 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT245 - 8-bit bidirectional bus transceiver (3-state)
component AHCT.74AHCT245
{
    pins = [
        1 = DIR, "Direction control", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = OE, "Output enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = A1, "Bus A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = B1, "Bus B1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = A2, "Bus A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = B2, "Bus B2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = A3, "Bus A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = B3, "Bus B3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A4, "Bus A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = B4, "Bus B4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = GND, "Ground"
        12 = B5, "Bus B5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = A5, "Bus A5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = B6, "Bus B6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = A6, "Bus A6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = B7, "Bus B7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        17 = A7, "Bus A7", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        18 = VCC, "Power supply 4.5V~5.5V"
    ]
}

# 74AHCT244 - Octal buffer/line driver (3-state, unidirectional)
component AHCT.74AHCT244
{
    pins = [
        1 = OE1, "Output enable 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = OE2, "Output enable 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = Y5, "Output Y5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = A5, "Input A5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = Y6, "Output Y6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = A6, "Input A6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = Y7, "Output Y7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        17 = A7, "Input A7", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        18 = VCC, "Power supply 4.5V~5.5V"
    ]
}
