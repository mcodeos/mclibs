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

# PL3085A cn.ireader-opto

use mc.ifs.serial
use mc.ifs.power
use mc.std.comm

component UARTtoRS485.PL3085A {

    abstract = "UART/RS485 Tranciever"

    partno = "PL3085A"
    package = "SOIC8"

    spec.HBM = ±15kV
    spec.workingtemperature = -40°C ~ +85°C

    pins = [
        in [8,5] = [VCC,GND]::DC(5V)
        io [6,7] = [A, B]::RS485(), "RS485 interface"
        io [1,4] = [RO, DI]::UART.TTL(DTE)
        
        io 2 = _RE, "Receive enable"
        io 3 = DE, "Data transist enable"
    ]
}

module PL3085A_Uart2Rs485(powerSupply, uartDECInterface)
{
    PL3085A(powerSupply) PL.Cap().ImpedanceMatch().AutoTrans().Protect()
    PL.UART + uartDECInterface

    // Exporting ports: module-body return is deprecated (unsupported) — use declarative io ports + `<-` binding instead.
    // Consumers access them externally as .member of <inst>.<port-name>.
    io RS485

    RS485 <- PL.RS485

    /* module-body return is deprecated (unsupported): export via the io port declarations + `<-` bindings above
    return PL.RS485
    */
}
