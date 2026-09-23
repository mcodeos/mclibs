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

// UART-to-RS485 transceiver functional face (U181). Pin order is the
// canonical MAX485-class SOIC-8 device face: 1 RO, 2 /RE, 3 DE, 4 DI,
// 5 GND, 6 A, 7 B, 8 VCC. Pins are declared first (with per-lane
// directions), then adopted into the interface views: bus side into the
// 2-wire UART.RS485 base family, logic side into UART.TTL viewed as DCE
// (the transceiver drives the DTE's RX through RO and receives the DTE's
// TX on DI). RE keeps its plain spelling: the leading underscore is
// reserved for inverting output members.
abstract component UARTtoRS485
{
    name = "UARTtoRS485"
    desc = "UART to RS485 Transceiver"

    partno = ""
    package = ""
    spec.HBM = ±0kV
    spec.workingtemperature = -0°C ~ +0°C

    pins = [
        out 1 = RO, "Receive Output (to DTE RX)"
        in 2 = RE, "Receiver enable, active low (parts mark /RE)"
        in 3 = DE, "Driver enable, active high"
        in 4 = DI, "Driver Input (from DTE TX)"
        [1, 4] = UART{RO, DI}::UART.TTL(DCE)     // adoption: directions stay as declared
        io [6, 7] = RS485{A, B}::UART.RS485(), "RS485 bus pair"
        psnk [8, 5] = [VCC, GND]::DC(5V)
    ]

    func UARTtoRS485(pwr::DC(5V))
    {
        pwr -> [VCC, GND]
    }

    func IPDMatch()
    {
        VCC - RES(5.1kΩ) - RS485.A - RES(120Ω) - RS485.B - RES(5.1kΩ) - GND
    }

    func AutoTrans()
    {
        TRANS.NPN Q
        VCC - RES(4.7kΩ) - (Q.COLLECTOR + DE + RE)
        UART.DI - RES(4.7kΩ) - Q.BASE
        Q.EMITTER + GND
    }
}
