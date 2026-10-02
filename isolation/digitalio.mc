# Copyright (c) 2026 MCode
#
# Licensed under the Apache License, Version 2.0.

interface Isolation
{
    pins = [
        1:4 = IN[A,B,C,D] @barrier(side1)
        5:8 = OUT[A,B,C,D] @barrier(side2)
        9 = EN2
        10 = GND1 @barrier(side1)
        11 = GND2 @barrier(side2)
    ]
}
