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

# 74LVC Series - Low voltage, low power, general purpose (1.65V~5.5V)
# Applications: 3.3V systems, IoT, portable devices

# 74LVC00 - Quad 2-input NAND gate
component LVC.74LVC00
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = B3, "Input B3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = A4, "Input A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = B4, "Input B4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
        // U208 gate-grain LOGIC adoption: ordinals pair with the interface
        // member order; the book rows above stay authoritative for names
        // and voltage windows.
        [1,2,3] = G1::LOGIC.NAND()
        [4,5,6] = G2::LOGIC.NAND()
        [9,10,8] = G3::LOGIC.NAND()
        [12,13,11] = G4::LOGIC.NAND()
    ]
}

# 74LVC02 - Quad 2-input NOR gate
component LVC.74LVC02
{
    pins = [
        1 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = B1, "Input B1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = B2, "Input B2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = GND, "Ground"
        8 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = A4, "Input A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
        // U208 gate-grain LOGIC adoption: ordinals pair with the interface
        // member order; the book rows above stay authoritative for names
        // and voltage windows.
        [2,3,1] = G1::LOGIC.NOR()
        [5,6,4] = G2::LOGIC.NOR()
        [8,9,10] = G3::LOGIC.NOR()
        [11,12,13] = G4::LOGIC.NOR()
    ]
}

# 74LVC04 - Hex inverter
component LVC.74LVC04
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A4, "Input A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = Y5, "Output Y5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = A5, "Input A5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = Y6, "Output Y6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = A6, "Input A6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
        // U208 gate-grain LOGIC adoption: ordinals pair with the interface
        // member order; the book rows above stay authoritative for names
        // and voltage windows.
        [1,2] = G1::LOGIC.NOT()
        [3,4] = G2::LOGIC.NOT()
        [5,6] = G3::LOGIC.NOT()
        [9,8] = G4::LOGIC.NOT()
        [11,10] = G5::LOGIC.NOT()
        [13,12] = G6::LOGIC.NOT()
    ]
}

# 74LVC74 - Dual D flip-flop
component LVC.74LVC74
{
    pins = [
        1 = _CLR1, "Clear 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = CLK1, "Clock 1 - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = _PR1, "Preset 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q1N, "Output Q1 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Q2N, "Output Q2 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = _PR2, "Preset 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = CLK2, "Clock 2 - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = D2, "Data 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = _CLR2, "Clear 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC125 - Quad bus buffer with 3-state outputs (active low)
component LVC.74LVC125
{
    pins = [
        1 = _OE1, "Output enable 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = _OE2, "Output enable 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = _OE3, "Output enable 3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = A4, "Input A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = _OE4, "Output enable 4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC08 - Quad 2-input AND gate
component LVC.74LVC08
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = B3, "Input B3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = A4, "Input A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = B4, "Input B4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
        // U208 gate-grain LOGIC adoption: ordinals pair with the interface
        // member order; the book rows above stay authoritative for names
        // and voltage windows.
        [1,2,3] = G1::LOGIC.AND()
        [4,5,6] = G2::LOGIC.AND()
        [9,10,8] = G3::LOGIC.AND()
        [12,13,11] = G4::LOGIC.AND()
    ]
}

# 74LVC32 - Quad 2-input OR gate
component LVC.74LVC32
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = B3, "Input B3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = A4, "Input A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = B4, "Input B4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
        // U208 gate-grain LOGIC adoption: ordinals pair with the interface
        // member order; the book rows above stay authoritative for names
        // and voltage windows.
        [1,2,3] = G1::LOGIC.OR()
        [4,5,6] = G2::LOGIC.OR()
        [9,10,8] = G3::LOGIC.OR()
        [12,13,11] = G4::LOGIC.OR()
    ]
}

# 74LVC86 - Quad 2-input XOR gate
component LVC.74LVC86
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = B3, "Input B3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = A4, "Input A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = B4, "Input B4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
        // U208 gate-grain LOGIC adoption: ordinals pair with the interface
        // member order; the book rows above stay authoritative for names
        // and voltage windows.
        [1,2,3] = G1::LOGIC.XOR()
        [4,5,6] = G2::LOGIC.XOR()
        [9,10,8] = G3::LOGIC.XOR()
        [12,13,11] = G4::LOGIC.XOR()
    ]
}

# 74LVC10 - Triple 3-input NAND gate
component LVC.74LVC10
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = B2, "Input B2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = C2, "Input C2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = B3, "Input B3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = C3, "Input C3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = C1, "Input C1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
        // U208 gate-grain LOGIC adoption: ordinals pair with the interface
        // member order; the book rows above stay authoritative for names
        // and voltage windows.
        [1,2,13,12] = G1::LOGIC.NAND.3()
        [3,4,5,6] = G2::LOGIC.NAND.3()
        [9,10,11,8] = G3::LOGIC.NAND.3()
    ]
}

# 74LVC20 - Dual 4-input NAND gate
component LVC.74LVC20
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        nc 3 = NC, "No connection"
        4 = C1, "Input C1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = D1, "Input D1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = B2, "Input B2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        nc 11 = NC, "No connection"
        12 = C2, "Input C2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = D2, "Input D2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
        // U208 gate-grain LOGIC adoption: ordinals pair with the interface
        // member order; the book rows above stay authoritative for names
        // and voltage windows.
        [1,2,4,5,6] = G1::LOGIC.NAND.4()
        [9,10,12,13,8] = G2::LOGIC.NAND.4()
    ]
}

# 74LVC30 - 8-input NAND gate
component LVC.74LVC30
{
    pins = [
        1 = A, "Input A", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = B, "Input B", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = C, "Input C", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = D, "Input D", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = E, "Input E", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = F, "Input F", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y, "Output Y", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        nc 9 = NC, "No connection"
        nc 10 = NC, "No connection"
        11 = G, "Input G", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = H, "Input H", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        nc 13 = NC, "No connection"
        14 = VCC, "Power supply 1.65V~5.5V"
        // U208 gate-grain LOGIC adoption: ordinals pair with the interface
        // member order; the book rows above stay authoritative for names
        // and voltage windows.
        [1,2,3,4,5,6,11,12,8] = G1::LOGIC.NAND.8()
    ]
}

# 74LVC14 - Hex Schmitt trigger inverter
component LVC.74LVC14
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A4, "Input A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = Y5, "Output Y5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = A5, "Input A5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = Y6, "Output Y6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = A6, "Input A6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
        // U208 gate-grain LOGIC adoption: ordinals pair with the interface
        // member order; the book rows above stay authoritative for names
        // and voltage windows.
        [1,2] = G1::LOGIC.NOT()
        [3,4] = G2::LOGIC.NOT()
        [5,6] = G3::LOGIC.NOT()
        [9,8] = G4::LOGIC.NOT()
        [11,10] = G5::LOGIC.NOT()
        [13,12] = G6::LOGIC.NOT()
    ]
}

# 74LVC03 - Quad 2-input NAND gate (open collector)
component LVC.74LVC03
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = Y1, "Output Y1 (open collector)", voltage:[low:0V ~ 0.05*VCC, high:0V ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Y2, "Output Y2 (open collector)", voltage:[low:0V ~ 0.05*VCC, high:0V ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3 (open collector)", voltage:[low:0V ~ 0.05*VCC, high:0V ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = B3, "Input B3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = Y4, "Output Y4 (open collector)", voltage:[low:0V ~ 0.05*VCC, high:0V ~ VCC]
        12 = A4, "Input A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = B4, "Input B4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
        // U208 gate-grain LOGIC adoption: ordinals pair with the interface
        // member order; the book rows above stay authoritative for names
        // and voltage windows.
        [1,2,3] = G1::LOGIC.NAND()
        [4,5,6] = G2::LOGIC.NAND()
        [9,10,8] = G3::LOGIC.NAND()
        [12,13,11] = G4::LOGIC.NAND()
    ]
}

# 74LVC126 - Quad bus buffer with 3-state outputs (high enable)
component LVC.74LVC126
{
    pins = [
        1 = OE1, "Output enable 1 - active high", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = OE2, "Output enable 2 - active high", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = OE3, "Output enable 3 - active high", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = A4, "Input A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = OE4, "Output enable 4 - active high", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC138 - 3-to-8 line decoder
component LVC.74LVC138
{
    pins = [
        1 = A, "Input A", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = B, "Input B", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = C, "Input C", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = _G2A, "Enable G2A", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = _G2B, "Enable G2B", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = G1, "Enable G1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = _Y7, "Output Y7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = _Y6, "Output Y6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = _Y5, "Output Y5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = _Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = _Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = _Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = _Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = _Y0, "Output Y0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC139 - Dual 2-to-4 line decoder
component LVC.74LVC139
{
    pins = [
        1 = _G1, "Enable 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = B1, "Input B1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = _Y10, "Output Y10", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = _Y11, "Output Y11", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = _Y12, "Output Y12", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = _Y13, "Output Y13", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = _Y23, "Output Y23", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = _Y22, "Output Y22", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = _Y21, "Output Y21", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = _Y20, "Output Y20", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = B2, "Input B2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = _G2, "Enable 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC42 - BCD to decimal decoder
component LVC.74LVC42
{
    pins = [
        1 = _Y0, "Output Y0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        2 = _Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = _Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = _Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = _Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = _Y5, "Output Y5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = _Y6, "Output Y6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = _Y7, "Output Y7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = _Y8, "Output Y8", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = _Y9, "Output Y9", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = A0, "Input A0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC47 - BCD to 7-segment decoder (common anode, active low)
# Part number not in any manufacturer catalog (LVC family has no 7-segment decoder); pinout per TI SN7447A
component LVC.74LVC47
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = _LT, "Lamp test", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = _BI_RBO, "Blanking input/Ripple blanking output", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = _RBI, "Ripple blanking input", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = A0, "Input A0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = GND, "Ground"
        9 = _e, "Segment e", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = _d, "Segment d", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = _c, "Segment c", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = _b, "Segment b", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = _a, "Segment a", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = _g, "Segment g", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = _f, "Segment f", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC48 - BCD to 7-segment decoder (common cathode, active high)
# Part number not in any manufacturer catalog (LVC family has no 7-segment decoder); pinout per TI SN7448A
component LVC.74LVC48
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = _LT, "Lamp test", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = _BI_RBO, "Blanking input/Ripple blanking output", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = _RBI, "Ripple blanking input", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = A0, "Input A0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = GND, "Ground"
        9 = e, "Segment e", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = d, "Segment d", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = c, "Segment c", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = b, "Segment b", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = a, "Segment a", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = g, "Segment g", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = f, "Segment f", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC147 - 10-to-4 line priority encoder (active low)
component LVC.74LVC147
{
    pins = [
        1 = _I4, "Input 4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = _I5, "Input 5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = _I6, "Input 6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = _I7, "Input 7", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = _I8, "Input 8", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = _A2, "Output A2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = _A1, "Output A1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = _A0, "Output A0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = _I9, "Input 9", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = _I1, "Input 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = _I2, "Input 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = _I3, "Input 3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = _A3, "Output A3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        nc 15 = NC, "No connection"
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC76 - Dual JK flip-flop (negative edge triggered)
component LVC.74LVC76
{
    pins = [
        1 = CLK1, "Clock 1 - negative edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = _PR1, "Preset 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = _CLR1, "Clear 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = J1, "Input J1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = VCC, "Power supply 1.65V~5.5V"
        6 = CLK2, "Clock 2 - negative edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = _PR2, "Preset 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = _CLR2, "Clear 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        9 = J2, "Input J2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = Q2N, "Output Q2 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = K2, "Input K2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = GND, "Ground"
        14 = Q1N, "Output Q1 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = K1, "Input K1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
    ]
}

# 74LVC174 - Hex D flip-flop with common clock and clear
component LVC.74LVC174
{
    pins = [
        1 = _CLR, "Clear", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = D1, "Data 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = D3, "Data 3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = D4, "Data 4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = D5, "Data 5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = D6, "Data 6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC373 - Octal D latch with 3-state outputs
component LVC.74LVC373
{
    pins = [
        1 = _OE, "Output enable", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = D0, "Data 0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = D1, "Data 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = D2, "Data 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = D3, "Data 3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        9 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = GND, "Ground"
        11 = LE, "Latch enable", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = D4, "Data 4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = D5, "Data 5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        17 = D6, "Data 6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        18 = D7, "Data 7", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        19 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        20 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC374 - Octal D flip-flop with 3-state outputs
component LVC.74LVC374
{
    pins = [
        1 = _OE, "Output enable", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = D0, "Data 0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = D1, "Data 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = D2, "Data 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = D3, "Data 3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        9 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = GND, "Ground"
        11 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = D4, "Data 4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = D5, "Data 5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        17 = D6, "Data 6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        18 = D7, "Data 7", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        19 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        20 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC160 - Synchronous 4-bit decimal counter with synchronous clear and load
component LVC.74LVC160
{
    pins = [
        1 = _CLR, "Clear", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = D0, "Data 0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = D1, "Data 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = D2, "Data 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = D3, "Data 3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = ENP, "Enable P", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = GND, "Ground"
        9 = _LOAD, "Load", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = ENT, "Enable T", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC190 - Synchronous decimal up/down counter with asynchronous load
component LVC.74LVC190
{
    pins = [
        1 = D1, "Data 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = _EN, "Count enable", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = DIR, "Direction (up=L, down=H)", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = D3, "Data 3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = D2, "Data 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = _LOAD, "Load", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = MAX_MIN, "Maximum/minimum output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = _RCO, "Ripple carry output - active low pulse", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = D0, "Data 0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC90 - Asynchronous decade counter
component LVC.74LVC90
{
    pins = [
        1 = CLKA, "Clock A - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = CLKB, "Clock B - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = QA, "Output QA", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = QB, "Output QB", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = QC, "Output QC", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = QD, "Output QD", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = R01, "Reset 0-1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = GND, "Ground"
        9 = R02, "Reset 0-2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = R91, "Reset 9-1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = R92, "Reset 9-2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        nc 12 = NC, "No connection"
        nc 13 = NC, "No connection"
        14 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC161 - Synchronous 4-bit binary counter with synchronous clear and load
component LVC.74LVC161
{
    pins = [
        1 = _CLR, "Clear", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = D0, "Data 0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = D1, "Data 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = D2, "Data 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = D3, "Data 3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = ENP, "Enable P", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = GND, "Ground"
        9 = _LOAD, "Load", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = ENT, "Enable T", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC163 - Synchronous 4-bit binary counter with synchronous clear
component LVC.74LVC163
{
    pins = [
        1 = _CLR, "Clear", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = D0, "Data 0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = D1, "Data 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = D2, "Data 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = D3, "Data 3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = ENP, "Enable P", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = GND, "Ground"
        9 = _LOAD, "Load", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = ENT, "Enable T", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC191 - Synchronous 4-bit binary up/down counter with asynchronous load
component LVC.74LVC191
{
    pins = [
        1 = D1, "Data 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = _EN, "Count enable", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = DIR, "Direction (up=L, down=H)", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = D3, "Data 3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = D2, "Data 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = _LOAD, "Load", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = MAX_MIN, "Maximum/minimum output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = _RCO, "Ripple carry output - active low pulse", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = D0, "Data 0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC393 - Dual 4-bit asynchronous binary counter
component LVC.74LVC393
{
    pins = [
        1 = CLK1, "Clock 1 - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = _CLR1, "Clear 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = Q10, "Output Q10", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = Q11, "Output Q11", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = Q12, "Output Q12", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q13, "Output Q13", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = GND, "Ground"
        8 = Q23, "Output Q23", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        9 = Q22, "Output Q22", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q21, "Output Q21", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q20, "Output Q20", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = _CLR2, "Clear 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = CLK2, "Clock 2 - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC4017 - Decade counter/divider with 10 decoded outputs
component LVC.74LVC4017
{
    pins = [
        1 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        2 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Q8, "Output Q8", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q9, "Output Q9", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = CO, "Carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = _EN, "Enable", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = RESET, "Reset - active high", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC4022 - Octal counter/divider with 8 decoded outputs
component LVC.74LVC4022
{
    pins = [
        1 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        2 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        3 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        5 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = CO, "Carry output", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = _EN, "Enable", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = RESET, "Reset - active high", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC164 - 8-bit serial-in parallel-out shift register with asynchronous clear
component LVC.74LVC164
{
    pins = [
        1 = A, "Input A", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = B, "Input B", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = _CLR, "Clear", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = Q0, "Output Q0", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = Q1, "Output Q1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = Q2, "Output Q2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Q3, "Output Q3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = Q4, "Output Q4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        11 = Q5, "Output Q5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = Q6, "Output Q6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC165 - 8-bit parallel-in serial-out shift register with parallel load
component LVC.74LVC165
{
    pins = [
        1 = _SH_LD, "Shift/Load", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = CLK, "Clock", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = D4, "Parallel input D4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = D5, "Parallel input D5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = D6, "Parallel input D6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = D7, "Parallel input D7", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = Q7N, "Output Q7 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Q7, "Serial output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = SER, "Serial data input", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = D0, "Parallel input D0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = D1, "Parallel input D1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = D2, "Parallel input D2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = D3, "Parallel input D3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = CLK_INH, "Clock inhibit", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC595 - 8-bit serial-in parallel-out shift register with 3-state outputs and output latch
component LVC.74LVC595
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
        9 = QHS, "Serial data output for cascading", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = _MR, "Master reset", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = SH_CP, "Shift register clock", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = ST_CP, "Storage register clock", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = _OE, "Output enable", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = DS, "Serial data input", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = QH, "Output QH", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC597 - 8-bit parallel-in serial-out shift register with latch
component LVC.74LVC597
{
    pins = [
        1 = _SH_LD, "Shift/load", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = D0, "Data 0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = D1, "Data 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = D3, "Data 3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = D4, "Data 4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = D5, "Data 5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = D6, "Data 6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        9 = D7, "Data 7", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = GND, "Ground"
        11 = CLK, "Clock", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = CLK_INH, "Clock inhibit", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = Q7, "Output Q7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = Q7N, "Output Q7 complement", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        nc 15 = NC, "No connection"
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC194 - 4-bit bidirectional shift register with parallel load
component LVC.74LVC194
{
    pins = [
        1 = _CLR, "Clear", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = DSR, "Serial data right", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = A, "Parallel input A", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = B, "Parallel input B", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = C, "Parallel input C", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = D, "Parallel input D", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = DSL, "Serial data left", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = GND, "Ground"
        9 = S0, "Mode control S0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = S1, "Mode control S1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = QD, "Output QD", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        13 = QC, "Output QC", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = QB, "Output QB", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        15 = QA, "Output QA", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC151 - 8-to-1 data selector with complementary outputs
component LVC.74LVC151
{
    pins = [
        1 = D3, "Data input D3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = D2, "Data input D2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = D1, "Data input D1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = D0, "Data input D0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = Y, "Output Y", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = W, "Output W (complement)", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        7 = _E, "Enable", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = GND, "Ground"
        9 = A2, "Address input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = A1, "Address input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = A0, "Address input A0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = D7, "Data input D7", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = D6, "Data input D6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = D5, "Data input D5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = D4, "Data input D4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC153 - Dual 4-to-1 data selector
component LVC.74LVC153
{
    pins = [
        1 = _E1, "Enable 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = A1, "Address input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = D13, "Data input D3 for selector 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = D12, "Data input D2 for selector 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = D11, "Data input D1 for selector 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = D10, "Data input D0 for selector 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = Y1, "Output Y for selector 1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = GND, "Ground"
        9 = Y2, "Output Y for selector 2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = D20, "Data input D0 for selector 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        11 = D21, "Data input D1 for selector 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = D22, "Data input D2 for selector 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = D23, "Data input D3 for selector 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = A0, "Address input A0", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = _E2, "Enable 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        16 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC245 - Octal bidirectional bus transceiver with 3-state outputs
component LVC.74LVC245
{
    pins = [
        1 = DIR, "Direction control", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = A1, "Bus A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = A2, "Bus A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        4 = A3, "Bus A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = A4, "Bus A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        6 = A5, "Bus A5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = A6, "Bus A6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        8 = A7, "Bus A7", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        9 = A8, "Bus A8", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        10 = GND, "Ground"
        11 = B8, "Bus B8", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        12 = B7, "Bus B7", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = B6, "Bus B6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        14 = B5, "Bus B5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = B4, "Bus B4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        16 = B3, "Bus B3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        17 = B2, "Bus B2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        18 = B1, "Bus B1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        19 = _OE, "Output enable", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        20 = VCC, "Power supply 1.65V~5.5V"
    ]
}

# 74LVC244 - Octal buffer/line driver with 3-state outputs
component LVC.74LVC244
{
    pins = [
        1 = _OE1, "Output enable 1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        5 = Y2, "Output Y2", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        6 = A3, "Input A3", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        7 = Y3, "Output Y3", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        8 = A4, "Input A4", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        9 = Y4, "Output Y4", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        10 = GND, "Ground"
        11 = Y5, "Output Y5", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        12 = A5, "Input A5", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        13 = Y6, "Output Y6", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        14 = A6, "Input A6", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        15 = Y7, "Output Y7", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        16 = A7, "Input A7", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        17 = Y8, "Output Y8", voltage:[low:0V ~ 0.05*VCC, high:0.95*VCC ~ VCC]
        18 = A8, "Input A8", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        19 = _OE2, "Output enable 2", voltage:[low:0V ~ 0.3*VCC, high:0.7*VCC ~ VCC]
        20 = VCC, "Power supply 1.65V~5.5V"
    ]
}
