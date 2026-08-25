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

# 74LVCT Series - Low voltage, TTL compatible (3.3V system)
# Applications: 3.3V systems requiring TTL compatibility
# Basic logic gates
# 74LVCT00 - Quad 2-input NAND gate
component LVCT.74LVCT00{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT02 - Quad 2-input NOR gate
component LVCT.74LVCT02{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = GND, "Ground"
        8 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT04 - Hex inverter
component LVCT.74LVCT04{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        3 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = GND, "Ground"
        8 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = Y5, "Output Y5", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = A5, "Input A5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = Y6, "Output Y6", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = A6, "Input A6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT08 - Quad 2-input AND gate
component LVCT.74LVCT08{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT32 - Quad 2-input OR gate
component LVCT.74LVCT32{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT86 - Quad 2-input XOR gate
component LVCT.74LVCT86{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT10 - Triple 3-input NAND gate
component LVCT.74LVCT10{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = C1, "Input C1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = GND, "Ground"
        8 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = C2, "Input C2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = C3, "Input C3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT20 - Dual 4-input NAND gate
component LVCT.74LVCT20{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = C1, "Input C1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D1, "Input D1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = GND, "Ground"
        7 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = D2, "Input D2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        9 = C2, "Input C2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT30 - 8-input NAND gate
component LVCT.74LVCT30{
    pins = [
        1 = A, "Input A", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B, "Input B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = C, "Input C", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D, "Input D", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = E, "Input E", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = F, "Input F", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = GND, "Ground"
        8 = Y, "Output Y", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = H, "Input H", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# Composite / special gates
# 74LVCT14 - Hex Schmitt trigger inverter
component LVCT.74LVCT14{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        3 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = GND, "Ground"
        8 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = Y5, "Output Y5", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = A5, "Input A5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = Y6, "Output Y6", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = A6, "Input A6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT03 - Quad 2-input NAND gate (open collector)
component LVCT.74LVCT03{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1 (open collector)", voltage:[low:0V ~ 0.4V, high:0V ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2 (open collector)", voltage:[low:0V ~ 0.4V, high:0V ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3 (open collector)", voltage:[low:0V ~ 0.4V, high:0V ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4 (open collector)", voltage:[low:0V ~ 0.4V, high:0V ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT125 - Quad bus buffer with 3-state outputs
component LVCT.74LVCT125{
    pins = [
        1 = OE1, "Output enable 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = OE2, "Output enable 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = OE3, "Output enable 3 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = OE4, "Output enable 4 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT126 - Quad bus buffer with 3-state outputs (high enable)
component LVCT.74LVCT126{
    pins = [
        1 = OE1, "Output enable 1 - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = OE2, "Output enable 2 - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = OE3, "Output enable 3 - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = OE4, "Output enable 4 - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# Decoders / encoders / data distributors
# 74LVCT138 - 3-to-8 line decoder
component LVCT.74LVCT138{
    pins = [
        1 = G1, "Enable G1 - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = G2A, "Enable G2A - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = G2B, "Enable G2B - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = A, "Input A", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B, "Input B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = C, "Input C", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = Y0, "Output Y0 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = GND, "Ground"
        9 = Y1, "Output Y1 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = Y2, "Output Y2 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Y3, "Output Y3 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = Y4, "Output Y4 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = Y5, "Output Y5 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = Y6, "Output Y6 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        15 = Y7, "Output Y7 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT139 - Dual 2-to-4 line decoder
component LVCT.74LVCT139{
    pins = [
        1 = G1, "Enable 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = B1, "Input B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = Y10, "Output Y10 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = Y11, "Output Y11 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = Y12, "Output Y12 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = Y13, "Output Y13 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = GND, "Ground"
        9 = Y23, "Output Y23 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = Y22, "Output Y22 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Y21, "Output Y21 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = Y20, "Output Y20 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = B2, "Input B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = G2, "Enable 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT42 - BCD to decimal decoder
component LVCT.74LVCT42{
    pins = [
        1 = Y0, "Output Y0 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        2 = Y1, "Output Y1 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        3 = Y2, "Output Y2 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = Y3, "Output Y3 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = Y4, "Output Y4 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = Y5, "Output Y5 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = Y6, "Output Y6 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = GND, "Ground"
        9 = Y7, "Output Y7 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = Y8, "Output Y8 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Y9, "Output Y9 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = A, "Input A (LSB)", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = B, "Input B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = C, "Input C", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = D, "Input D (MSB)", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT47 - BCD to 7-segment decoder (common anode, active low)
component LVCT.74LVCT47{
    pins = [
        1 = A, "Input A (LSB)", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B, "Input B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = C, "Input C", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = LT, "Lamp test - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = RBI, "Ripple blanking input - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = D, "Input D (MSB)", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = GND, "Ground"
        8 = RBI, "Ripple blanking output", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = a, "Segment a - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = b, "Segment b - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = c, "Segment c - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = d, "Segment d - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = e, "Segment e - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = f, "Segment f - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        15 = g, "Segment g - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT48 - BCD to 7-segment decoder (common cathode, active high)
component LVCT.74LVCT48{
    pins = [
        1 = RBI, "Ripple blanking input - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = A, "Input A (LSB)", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = B, "Input B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = C, "Input C", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D, "Input D (MSB)", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = LT, "Lamp test - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = RBI, "Ripple blanking output", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = GND, "Ground"
        9 = VCC, "Power supply 3.0V~3.6V"
        10 = g, "Segment g - active high", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = f, "Segment f - active high", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = e, "Segment e - active high", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = d, "Segment d - active high", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = c, "Segment c - active high", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        15 = b, "Segment b - active high", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        16 = a, "Segment a - active high", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
    ]
}

# 74LVCT147 - 10-to-4 line priority encoder (active low)
component LVCT.74LVCT147{
    pins = [
        1 = Y0, "Output Y0 (LSB) - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        2 = Y1, "Output Y1 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        3 = Y2, "Output Y2 - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = Y3, "Output Y3 (MSB) - active low", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = GND, "Ground"
        6 = I9, "Input I9 (highest priority) - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = I8, "Input I8 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = I7, "Input I7 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        9 = I6, "Input I6 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = I5, "Input I5 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = I4, "Input I4 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = I3, "Input I3 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = I2, "Input I2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = I1, "Input I1 (lowest priority) - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# Flip-flops / latches
# 74LVCT74 - Dual D flip-flop
component LVCT.74LVCT74{
    pins = [
        1 = CLR1, "Clear 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = CLK1, "Clock 1 - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = PR1, "Preset 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = Q1N, "Output Q1 complement", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = GND, "Ground"
        8 = Q2N, "Output Q2 complement", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = PR2, "Preset 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = CLK2, "Clock 2 - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = CLR2, "Clear 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT76 - Dual JK flip-flop (negative edge triggered)
component LVCT.74LVCT76{
    pins = [
        1 = CLK1, "Clock 1 - negative edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = J1, "Input J1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = K1, "Input K1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = CLR1, "Clear 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = PR1, "Preset 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = Q1N, "Output Q1 complement", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = GND, "Ground"
        9 = Q2N, "Output Q2 complement", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = PR2, "Preset 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = CLR2, "Clear 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = K2, "Input K2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = J2, "Input J2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = CLK2, "Clock 2 - negative edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT174 - Hex D flip-flop with common clock and clear
component LVCT.74LVCT174{
    pins = [
        1 = CLR, "Clear - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D4, "Data 4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = D5, "Data 5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = D6, "Data 6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = Q6, "Output Q6", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = Q5, "Output Q5", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Q4, "Output Q4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        15 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT373 - Octal D latch with 3-state outputs
component LVCT.74LVCT373{
    pins = [
        1 = OE, "Output enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D4, "Data 4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = D5, "Data 5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = D6, "Data 6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = D7, "Data 7", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        9 = D8, "Data 8", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = GND, "Ground"
        11 = Q8, "Output Q8", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = Q7, "Output Q7", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = Q6, "Output Q6", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = Q5, "Output Q5", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        15 = Q4, "Output Q4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        16 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        17 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        18 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        19 = LE, "Latch enable - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        20 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT374 - Octal D flip-flop with 3-state outputs
component LVCT.74LVCT374{
    pins = [
        1 = OE, "Output enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D4, "Data 4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = D5, "Data 5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = D6, "Data 6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = D7, "Data 7", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        9 = D8, "Data 8", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = GND, "Ground"
        11 = Q8, "Output Q8", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = Q7, "Output Q7", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = Q6, "Output Q6", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = Q5, "Output Q5", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        15 = Q4, "Output Q4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        16 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        17 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        18 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        19 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        20 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# Counters / dividers
# 74LVCT160 - Synchronous 4-bit decimal counter with synchronous clear and load
component LVCT.74LVCT160{
    pins = [
        1 = CLR, "Clear - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = ENP, "Enable P", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = ENT, "Enable T", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = Q0, "Output Q0", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = LOAD, "Load - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT190 - Synchronous decimal up/down counter with asynchronous load
component LVCT.74LVCT190{
    pins = [
        1 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = LOAD, "Load - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = DOWN, "Count down - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = MAXMIN, "Max/min indicator", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Q0, "Output Q0", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        15 = EN, "Enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT90 - Asynchronous decade counter
component LVCT.74LVCT90{
    pins = [
        1 = CLKA, "Clock A - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = CLKB, "Clock B - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = QA, "Output QA", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = QB, "Output QB", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = QC, "Output QC", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = QD, "Output QD", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = R01, "Reset 0-1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = R02, "Reset 0-2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = R91, "Reset 9-1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = R92, "Reset 9-2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT161 - Synchronous 4-bit binary counter with synchronous clear and load
component LVCT.74LVCT161{
    pins = [
        1 = CLR, "Clear - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = ENP, "Enable P", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = ENT, "Enable T", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = Q0, "Output Q0", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = LOAD, "Load - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT163 - Synchronous 4-bit binary counter with synchronous clear
component LVCT.74LVCT163
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
        9 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = Q0, "Output Q0", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = LOAD, "Load - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT191 - Synchronous 4-bit binary up/down counter with asynchronous load
component LVCT.74LVCT191
{
    pins = [
        1 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = D0, "Data 0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D1, "Data 1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D3, "Data 3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = LOAD, "Load - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = DOWN, "Count down - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = MAXMIN, "Max/min indicator", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Q0, "Output Q0", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        15 = EN, "Enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT393 - Dual 4-bit asynchronous binary counter
component LVCT.74LVCT393
{
    pins = [
        1 = CLK1, "Clock 1 - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = CLR1, "Clear 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Q10, "Output Q10", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = Q11, "Output Q11", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = Q12, "Output Q12", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = Q13, "Output Q13", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = GND, "Ground"
        8 = Q23, "Output Q23", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        9 = Q22, "Output Q22", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = Q21, "Output Q21", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Q20, "Output Q20", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = CLR2, "Clear 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = CLK2, "Clock 2 - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT4017 - Decade counter/divider with 10 decoded outputs
component LVCT.74LVCT4017
{
    pins = [
        1 = Q5, "Output Q5", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        2 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        3 = Q0, "Output Q0", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = Q6, "Output Q6", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = Q7, "Output Q7", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = GND, "Ground"
        9 = Q8, "Output Q8", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = Q4, "Output Q4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Q9, "Output Q9", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = CO, "Carry output", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = EN, "Enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = RESET, "Reset - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT4022 - Octal counter/divider with 8 decoded outputs
component LVCT.74LVCT4022
{
    pins = [
        1 = Q4, "Output Q4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        2 = Q5, "Output Q5", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        3 = Q6, "Output Q6", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = Q7, "Output Q7", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = Q0, "Output Q0", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = GND, "Ground"
        9 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = CO, "Carry output", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = EN, "Enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = RESET, "Reset - active high", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# Shift registers
# 74LVCT164 - 8-bit serial-in parallel-out shift register with asynchronous clear
component LVCT.74LVCT164
{
    pins = [
        1 = A, "Input A", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B, "Input B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = CLR, "Clear - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = Q0, "Output Q0", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = GND, "Ground"
        9 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = Q4, "Output Q4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = Q5, "Output Q5", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = Q6, "Output Q6", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        13 = Q7, "Output Q7", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT165 - 8-bit parallel-in serial-out shift register with parallel load
component LVCT.74LVCT165
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
        13 = Q7, "Output Q7", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = Q7N, "Output Q7 complement", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT595 - 8-bit serial-in parallel-out shift register with 3-state outputs and output latch
component LVCT.74LVCT595
{
    pins = [
        1 = SER, "Serial input", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = QA, "Output QA", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        3 = QB, "Output QB", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = QC, "Output QC", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = QD, "Output QD", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = QE, "Output QE", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        7 = QF, "Output QF", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = GND, "Ground"
        9 = QG, "Output QG", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = QH, "Output QH", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = QHS, "Serial output QHS", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = OE, "Output enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = RCLK, "Register clock", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = SRCLK, "Shift register clock", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = SRCLR, "Shift register clear - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT597 - 8-bit parallel-in serial-out shift register with latch
component LVCT.74LVCT597
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
        13 = Q7, "Output Q7", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = Q7N, "Output Q7 complement", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT194 - 4-bit bidirectional shift register with parallel load
component LVCT.74LVCT194
{
    pins = [
        1 = DSR, "Serial data right", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = QA, "Output QA", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        3 = QB, "Output QB", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = QC, "Output QC", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        5 = QD, "Output QD", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = DSL, "Serial data left", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = S1, "Mode select S1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        8 = GND, "Ground"
        9 = S0, "Mode select S0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        10 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = CLR, "Clear - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = DA, "Data A", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = DB, "Data B", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = DC, "Data C", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = DD, "Data D", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# Data selectors / bus transceivers
# 74LVCT151 - 8-to-1 data selector with complementary outputs
component LVCT.74LVCT151
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
        10 = Y, "Output Y", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        11 = YN, "Output Y complement", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = S0, "Select S0", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = S1, "Select S1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = S2, "Select S2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = EN, "Enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT153 - Dual 4-to-1 data selector
component LVCT.74LVCT153
{
    pins = [
        1 = A1, "Select A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = B1, "Select B1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = D10, "Data 10", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        4 = D11, "Data 11", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = D12, "Data 12", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        6 = D13, "Data 13", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = GND, "Ground"
        9 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = D23, "Data 23", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        11 = D22, "Data 22", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        12 = D21, "Data 21", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = D20, "Data 20", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        14 = B2, "Select B2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = A2, "Select A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        16 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT245 - Octal bidirectional bus transceiver with 3-state outputs
component LVCT.74LVCT245
{
    pins = [
        1 = OE, "Output enable - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = A1, "Data A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = B1, "Data B1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = A2, "Data A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = B2, "Data B2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = A3, "Data A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = B3, "Data B3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = A4, "Data A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        9 = B4, "Data B4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = GND, "Ground"
        11 = B5, "Data B5", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = A5, "Data A5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = B6, "Data B6", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = A6, "Data A6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = B7, "Data B7", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        16 = A7, "Data A7", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        17 = B8, "Data B8", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        18 = A8, "Data A8", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        19 = DIR, "Direction control", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        20 = VCC, "Power supply 3.0V~3.6V"
    ]
}

# 74LVCT244 - Octal buffer/line driver with 3-state outputs
component LVCT.74LVCT244
{
    pins = [
        1 = OE1, "Output enable 1 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        5 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        6 = A3, "Input A3", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        7 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        8 = A4, "Input A4", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        9 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        10 = GND, "Ground"
        11 = Y5, "Output Y5", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        12 = A5, "Input A5", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        13 = Y6, "Output Y6", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        14 = A6, "Input A6", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        15 = Y7, "Output Y7", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        16 = A7, "Input A7", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        17 = Y8, "Output Y8", voltage:[low:0V ~ 0.4V, high:2.9V ~ VCC]
        18 = A8, "Input A8", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        19 = OE2, "Output enable 2 - active low", voltage:[low:0V ~ 0.8V, high:2.0V ~ VCC]
        20 = VCC, "Power supply 3.0V~3.6V"
    ]
}