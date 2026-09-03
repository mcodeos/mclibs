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

abstract component UARTtoRS485
{
    name = "UARTtoRS485"
    desc = "UART to RS485 Tranciever"

    partno = ""
    package = ""
    spec.HBM = ±0kV
    spec.workingtemperature = -0°C ~ +0°C

    in [VCC,GND]::DC(5V)
    io RS485{A, B}::RS485(), "RS485 interface"
    io UART{RO, DI}::UART.TTL(DTE), ["Receive Output", "Transmit Data Input"]
    in _RE, "RX enable"
    in DE, "TX enable"

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
        VCC -> RES(4.7kΩ) -> (Q.C + DE + _RE)
        UART.DI - RES(4.7kΩ) - Q.B
        Q.E + GND
    }
}
