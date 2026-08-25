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

component TTL.D
{
    pins = [
        in  1 = CLK, "Clock input - rising edge trigger"
        in  2 = D,  "Data input"
        out 3 = Q,  "Output"
        out 4 = _Q, "Complementary output"
        in 5 = _CLR, "Clear - active low"
    ]
}

# JK Flip-Flop
component TTL.JK
{
    pins = [
        in  1 = CLK, "Clock input - rising edge trigger"
        in  2 = J,  "J input"
        in  3 = K,  "K input"
        out 4 = Q,  "Output"
        out 5 = _Q, "Complementary output"
        in 6 = _CLR, "Clear - active low"
        in 7 = _PR, "Preset - active low"
    ]
}

# RS Flip-Flop
component TTL.RS
{
    pins = [
        in  1 = R,  "Reset input"
        in  2 = S,  "Set input"
        out 3 = Q,  "Output"
        out 4 = _Q, "Complementary output"
    ]
}

# T Flip-Flop
component TTL.T
{
    pins = [
        in  1 = CLK, "Clock input - rising edge trigger"
        in  2 = T,  "Toggle input"
        out 3 = Q,  "Output"
        out 4 = _Q, "Complementary output"
        in 5 = _CLR, "Clear - active low"
    ]
}

# 4-Bit Binary Counter
component TTL.COUNTER_4BIT
{
    pins = [
        in  1 = CLK, "Clock input"
        in  2 = _CLR, "Clear - active low"
        in  3 = _LOAD, "Load - active low"
        in  4 = ENP, "Enable P"
        in  5 = ENT, "Enable T"
        in  6 = D0, "Data input 0"
        in  7 = D1, "Data input 1"
        in  8 = D2, "Data input 2"
        in  9 = D3, "Data input 3"
        out 10 = Q0, "Output 0"
        out 11 = Q1, "Output 1"
        out 12 = Q2, "Output 2"
        out 13 = Q3, "Output 3"
        out 14 = RCO, "Ripple carry output"
    ]
}

# Decade Counter
component TTL.COUNTER_DECADE
{
    pins = [
        in  1 = CLK, "Clock input"
        in  2 = _CLR, "Clear - active low"
        in  3 = _LOAD, "Load - active low"
        in  4 = ENP, "Enable P"
        in  5 = ENT, "Enable T"
        in  6 = D0, "Data input 0"
        in  7 = D1, "Data input 1"
        in  8 = D2, "Data input 2"
        in  9 = D3, "Data input 3"
        out 10 = Q0, "Output 0"
        out 11 = Q1, "Output 1"
        out 12 = Q2, "Output 2"
        out 13 = Q3, "Output 3"
        out 14 = RCO, "Ripple carry output"
    ]
}

# 4-Bit Shift Register (Serial-In Serial-Out)
component TTL.SHIFT_REGISTER_SISO
{
    pins = [
        in  1 = CLK, "Clock input"
        in  2 = SI, "Serial input"
        in  3 = _CLR, "Clear - active low"
        out 4 = SO, "Serial output"
    ]
}

# 4-Bit Shift Register (Serial-In Parallel-Out)
component TTL.SHIFT_REGISTER_SIPO
{
    pins = [
        in  1 = CLK, "Clock input"
        in  2 = SI, "Serial input"
        in  3 = _CLR, "Clear - active low"
        out 4 = Q0, "Parallel output 0"
        out 5 = Q1, "Parallel output 1"
        out 6 = Q2, "Parallel output 2"
        out 7 = Q3, "Parallel output 3"
    ]
}

# 2-to-4 Decoder
component TTL.DECODER_2TO4
{
    pins = [
        in  1 = A0, "Address input 0"
        in  2 = A1, "Address input 1"
        in  3 = _E, "Enable - active low"
        out 4 = Y0, "Output 0"
        out 5 = Y1, "Output 1"
        out 6 = Y2, "Output 2"
        out 7 = Y3, "Output 3"
    ]
}

# 3-to-8 Decoder
component TTL.DECODER_3TO8
{
    pins = [
        in  1 = A0, "Address input 0"
        in  2 = A1, "Address input 1"
        in  3 = A2, "Address input 2"
        in  4 = _E1, "Enable 1 - active low"
        in  5 = _E2, "Enable 2 - active low"
        in  6 = E3, "Enable 3"
        out 7 = Y0, "Output 0"
        out 8 = Y1, "Output 1"
        out 9 = Y2, "Output 2"
        out 10 = Y3, "Output 3"
        out 11 = Y4, "Output 4"
        out 12 = Y5, "Output 5"
        out 13 = Y6, "Output 6"
        out 14 = Y7, "Output 7"
    ]
}

# 4-to-1 Multiplexer
component TTL.MUX_4TO1
{
    pins = [
        in  1 = A0, "Address input 0"
        in  2 = A1, "Address input 1"
        in  3 = D0, "Data input 0"
        in  4 = D1, "Data input 1"
        in  5 = D2, "Data input 2"
        in  6 = D3, "Data input 3"
        in  7 = _E, "Enable - active low"
        out 8 = Y,  "Output"
    ]
}

# 8-to-1 Multiplexer
component TTL.MUX_8TO1
{
    pins = [
        in  1 = A0, "Address input 0"
        in  2 = A1, "Address input 1"
        in  3 = A2, "Address input 2"
        in  4 = D0, "Data input 0"
        in  5 = D1, "Data input 1"
        in  6 = D2, "Data input 2"
        in  7 = D3, "Data input 3"
        in  8 = D4, "Data input 4"
        in  9 = D5, "Data input 5"
        in 10 = D6, "Data input 6"
        in 11 = D7, "Data input 7"
        in 12 = _E, "Enable - active low"
        out 13 = Y,  "Output"
    ]
}

# 4-Bit Comparator
component TTL.COMPARATOR_4BIT
{
    pins = [
        in  1 = A0, "Input A0"
        in  2 = A1, "Input A1"
        in  3 = A2, "Input A2"
        in  4 = A3, "Input A3"
        in  5 = B0, "Input B0"
        in  6 = B1, "Input B1"
        in  7 = B2, "Input B2"
        in  8 = B3, "Input B3"
        in  9 = _IA_GTB, "Cascade input A > B"
        in 10 = _IA_LTB, "Cascade input A < B"
        in 11 = IA_EQB, "Cascade input A = B"
        out 12 = _OA_GTB, "Output A > B"
        out 13 = _OA_LTB, "Output A < B"
        out 14 = OA_EQB, "Output A = B"
    ]
}

# 7-Segment Decoder
component TTL.SEGMENT_DECODER
{
    pins = [
        in  1 = A0, "BCD input 0"
        in  2 = A1, "BCD input 1"
        in  3 = A2, "BCD input 2"
        in  4 = A3, "BCD input 3"
        in  5 = _LT, "Lamp test - active low"
        in  6 = _BI, "Blanking input - active low"
        in  7 = _RBI, "Ripple blanking input - active low"
        out  8 = a, "Segment a"
        out  9 = b, "Segment b"
        out 10 = c, "Segment c"
        out 11 = d, "Segment d"
        out 12 = e, "Segment e"
        out 13 = f, "Segment f"
        out 14 = g, "Segment g"
        out 15 = _RBO, "Ripple blanking output - active low"
    ]
}

# 4-Bit Register
component TTL.REGISTER_4BIT
{
    pins = [
        in  1 = CLK, "Clock input"
        in  2 = _CLR, "Clear - active low"
        in  3 = D0, "Data input 0"
        in  4 = D1, "Data input 1"
        in  5 = D2, "Data input 2"
        in  6 = D3, "Data input 3"
        out 7 = Q0, "Output 0"
        out 8 = Q1, "Output 1"
        out 9 = Q2, "Output 2"
        out 10 = Q3, "Output 3"
    ]
}

# 4-Bit Bus Transceiver
component TTL.BUS_TRANSCEIVER
{
    pins = [
        in  1 = DIR, "Direction control"
        in  2 = _OE, "Output enable - active low"
        in  3 = A0, "Bus A0"
        in  4 = A1, "Bus A1"
        in  5 = A2, "Bus A2"
        in  6 = A3, "Bus A3"
        in  7 = B0, "Bus B0"
        in  8 = B1, "Bus B1"
        in  9 = B2, "Bus B2"
        in 10 = B3, "Bus B3"
    ]
}
