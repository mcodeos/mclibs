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

# 7400 - Quad 2-input NAND gate
component TTL.7400
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = VCC, "Power supply 5V"
    ]
}

# 7402 - Quad 2-input NOR gate
component TTL.7402
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = A2, "Input A2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = GND, "Ground"
        8 = A3, "Input A3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = VCC, "Power supply 5V"
    ]
}

# 7404 - Hex inverter
component TTL.7404
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = A2, "Input A2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = A3, "Input A3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = GND, "Ground"
        8 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        9 = A4, "Input A4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = Y5, "Output Y5", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = A5, "Input A5", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = Y6, "Output Y6", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = A6, "Input A6", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = VCC, "Power supply 5V"
    ]
}

# 7408 - Quad 2-input AND gate
component TTL.7408
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = VCC, "Power supply 5V"
    ]
}

# 7432 - Quad 2-input OR gate
component TTL.7432
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = VCC, "Power supply 5V"
    ]
}

# 7474 - Dual D flip-flop
component TTL.7474
{
    pins = [
        1 = CLR1, "Clear 1 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = CLK1, "Clock 1 - rising edge", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = PR1, "Preset 1 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = Q1N, "Output Q1 complement", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = GND, "Ground"
        8 = Q2N, "Output Q2 complement", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        9 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = PR2, "Preset 2 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = CLK2, "Clock 2 - rising edge", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = D2, "Data 2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = CLR2, "Clear 2 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = VCC, "Power supply 5V"
    ]
}

# 7486 - Quad 2-input XOR gate
component TTL.7486
{
    pins = [
        1 = A1, "Input A1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = B1, "Input B1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = B2, "Input B2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = GND, "Ground"
        8 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        9 = B3, "Input B3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = A3, "Input A3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = B4, "Input B4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = A4, "Input A4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = VCC, "Power supply 5V"
    ]
}

# 74138 - 3-to-8 decoder
component TTL.74138
{
    pins = [
        1 = E3, "Enable E3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = E2N, "Enable E2 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = E1N, "Enable E1 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = A0, "Address A0", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = A1, "Address A1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = A2, "Address A2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = Y0N, "Output Y0 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        8 = GND, "Ground"
        9 = Y1N, "Output Y1 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = Y2N, "Output Y2 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = Y3N, "Output Y3 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = Y4N, "Output Y4 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = Y5N, "Output Y5 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = Y6N, "Output Y6 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        15 = Y7N, "Output Y7 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        16 = VCC, "Power supply 5V"
    ]
}

# 74151 - 8-to-1 multiplexer
component TTL.74151
{
    pins = [
        1 = D0, "Data D0", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = D1, "Data D1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = D2, "Data D2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = D3, "Data D3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = D4, "Data D4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = D5, "Data D5", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = D6, "Data D6", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        8 = GND, "Ground"
        9 = D7, "Data D7", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = E, "Enable - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = A0, "Address A0", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = A1, "Address A1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = A2, "Address A2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = YN, "Output Y - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        15 = Y, "Output Y", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        16 = VCC, "Power supply 5V"
    ]
}

# 74153 - Dual 4-to-1 multiplexer
component TTL.74153
{
    pins = [
        1 = A, "Address A", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = B, "Address B", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = E1N, "Enable 1 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = D10, "Data 1-0", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = D11, "Data 1-1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = D12, "Data 1-2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = D13, "Data 1-3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        8 = GND, "Ground"
        9 = D23, "Data 2-3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = D22, "Data 2-2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = D21, "Data 2-1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = D20, "Data 2-0", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = E2N, "Enable 2 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = Y2, "Output 2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        15 = Y1, "Output 1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        16 = VCC, "Power supply 5V"
    ]
}

# 74161 - 4-bit synchronous binary counter
component TTL.74161
{
    pins = [
        1 = CLR, "Clear - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = LOAD, "Load - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = ENT, "Enable T", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = ENP, "Enable P", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = D0, "Data D0", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = D1, "Data D1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = D2, "Data D2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        8 = GND, "Ground"
        9 = D3, "Data D3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = Q0, "Output Q0", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        15 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        16 = VCC, "Power supply 5V"
    ]
}

# 74163 - 4-bit synchronous binary counter
component TTL.74163
{
    pins = [
        1 = CLR, "Clear - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = LOAD, "Load - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = ENT, "Enable T", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = ENP, "Enable P", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = D0, "Data D0", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = D1, "Data D1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = D2, "Data D2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        8 = GND, "Ground"
        9 = D3, "Data D3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = Q0, "Output Q0", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = RCO, "Ripple carry output", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        15 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        16 = VCC, "Power supply 5V"
    ]
}

# 74175 - Quad D flip-flop
component TTL.74175
{
    pins = [
        1 = CLR, "Clear - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = Q1N, "Output Q1 complement", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = D2, "Data 2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = Q2N, "Output Q2 complement", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        8 = GND, "Ground"
        9 = Q3N, "Output Q3 complement", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        11 = D3, "Data 3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = Q4N, "Output Q4 complement", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = Q4, "Output Q4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = D4, "Data 4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        15 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        16 = VCC, "Power supply 5V"
    ]
}

# 74244 - Octal buffer/line driver
component TTL.74244
{
    pins = [
        1 = OE1, "Output enable 1 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = A1, "Input A1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = Y1, "Output Y1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = A2, "Input A2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = Y2, "Output Y2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = A3, "Input A3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = Y3, "Output Y3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        8 = A4, "Input A4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        9 = Y4, "Output Y4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = GND, "Ground"
        11 = Y5, "Output Y5", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = A5, "Input A5", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = Y6, "Output Y6", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = A6, "Input A6", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        15 = Y7, "Output Y7", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        16 = A7, "Input A7", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        17 = Y8, "Output Y8", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        18 = A8, "Input A8", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        19 = OE2, "Output enable 2 - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        20 = VCC, "Power supply 5V"
    ]
}

# 74245 - Octal bus transceiver
component TTL.74245
{
    pins = [
        1 = DIR, "Direction control", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = A1, "Bus A1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = B1, "Bus B1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = A2, "Bus A2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = B2, "Bus B2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = A3, "Bus A3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = B3, "Bus B3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        8 = A4, "Bus A4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        9 = B4, "Bus B4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = GND, "Ground"
        11 = B5, "Bus B5", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = A5, "Bus A5", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = B6, "Bus B6", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = A6, "Bus A6", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        15 = B7, "Bus B7", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        16 = A7, "Bus A7", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        17 = B8, "Bus B8", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        18 = A8, "Bus A8", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        19 = OE, "Output enable - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        20 = VCC, "Power supply 5V"
    ]
}

# 74373 - Octal transparent latch
component TTL.74373
{
    pins = [
        1 = OE, "Output enable - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = D3, "Data 3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        8 = D4, "Data 4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        9 = Q4, "Output Q4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = GND, "Ground"
        11 = Q5, "Output Q5", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = D5, "Data 5", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = Q6, "Output Q6", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = D6, "Data 6", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        15 = Q7, "Output Q7", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        16 = D7, "Data 7", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        17 = Q8, "Output Q8", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        18 = D8, "Data 8", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        19 = LE, "Latch enable", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        20 = VCC, "Power supply 5V"
    ]
}

# 74374 - Octal D flip-flop
component TTL.74374
{
    pins = [
        1 = OE, "Output enable - active low", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        2 = D1, "Data 1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        3 = Q1, "Output Q1", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        4 = D2, "Data 2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        5 = Q2, "Output Q2", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        6 = D3, "Data 3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        7 = Q3, "Output Q3", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        8 = D4, "Data 4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        9 = Q4, "Output Q4", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        10 = GND, "Ground"
        11 = Q5, "Output Q5", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        12 = D5, "Data 5", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        13 = Q6, "Output Q6", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        14 = D6, "Data 6", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        15 = Q7, "Output Q7", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        16 = D7, "Data 7", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        17 = Q8, "Output Q8", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        18 = D8, "Data 8", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        19 = CLK, "Clock - rising edge", voltage:[low:0V ~ 0.4V, high:1.2V ~ 1.8V]
        20 = VCC, "Power supply 5V"
    ]
}
