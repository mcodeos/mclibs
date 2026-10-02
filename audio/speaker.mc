# Copyright (c) 2026 MCode
#
# Licensed under the Apache License, Version 2.0.

# Speaker abstract shape (component inventory C7, electroacoustic family)
#
# Real parts bind with `:` (part-binding playbook). Pin rows are the verified
# hbl device face: BTL bridge-driven differential load plus two skeleton/shield
# quiet grounds.

use $::mcode.ifs

abstract component SPEAKER.BTL
{
    name = "BTL-driven speaker"
    description = "Bridge-tied-load speaker: differential drive pair as the BTL receiver side, skeleton/shield grounds expecting quiet copper"

    pins = [
        in [1, 2] = IN{P, N}::AMP.BTL(RECEIVER)  // BTL bridge-driven load, plus/minus
        3 = GND @role(quiet)                     // skeleton/shield ground: expects quiet copper (6051/6052 judge)
        4 = GND @role(quiet)                     // (current binding = consuming module's self-held quiet island)
    ]
}
