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

component UARTtoRS485
{
    abstract = "UART to RS485 Tranciever"

    partno = ""
    package = ""
    spec.HBM = ±0kV
    spec.workingtemperature = -0°C ~ +0°C

    pins = [
        in [8,5] = [VCC,GND]::DC(5V)
        io [6,7] = [A, B]::RS485(), "RS485 interface"
        io [1,4] = uart[RO, DI]::UART.TTL(DTE), ["Receive Output", "Transmit Data Input"]
        in 2 = _RE, "RX enable"
        in 3 = DE, "TX enable"
    ]

    func Cap(c::CAP(100nF,10V))
    {
        c.Cap(VCC, GND)
    }

    func ImpedanceMatch()
    {
        RES R[1:2](5.1kΩ), R3(120Ω)
        VCC - R1 - RS485.A - R3 - RS485.B - R2 - GND
    }

    // Substitute the chosen MOS and RES part numbers in via the parameters
    func AutoTrans(Q::Transistor.NPN.NMOS(), R[1:2]::RES(4.7kΩ))
    {
        VCC - R1 - (Q.C + DE + _RE)
        DI - R2 - Q.B 
        Q.E + GND
    }

    func Protect(D[1:2]::DIODE())
    {
        RS485.A - D1[Neg, Pos] - GND
        RS485.B - D2[Neg, Pos] - GND
    }

    func Uart2Rs485(uart::UART.TTL(DCE))
    {
        uart -> this.uart
        return RS485
    }
}
