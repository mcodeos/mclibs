# Copyright (c) 2026 MCode
#
# Licensed under the Apache License, Version 2.0.

component SYS.CLOCK
{
    pins = [
        in [1,2] = XTAL{X1,X2}::XTAL(OSCILLATOR), ["Crystal X1", "Crystal X2"]
        io [3,4] = I2C::I2C(), ["I2C data", "I2C clock"]
        out 5 = MFP, "used for alarm and square wave output, or GPIO"
    ]
}

