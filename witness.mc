# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// U357 grammar-witness file: the recipe capability set in its K1 home --
// top-level definition, func inside the recipe body, an abstract base, and
// adoption via the :: capability head. knowledge-layer-design.md names
// abstract component / recipe as the mechanism carriers of the standard
// body; no library file exercised that spelling before this one.
// Standalone witness: nothing in the library consumes this file; it loads
// only when a project references it directly.

use $::mcode.ifs

recipe CURRENT_LIMIT
{
    func Route(src, snk)
    {
        a - b
    }
}

abstract component CUR_LIM_BASE(vin::UV.VOLT, ilim::UV.AMP)
{
    name = "current-limited source, abstract base"
    pins = [
        [1,2] = DC{VIN, GND}::DC(vin), ["Power input"]
    ]
    spec = [
        limit = ilim
    ]
}

component CUR_LIM(vin::UV.VOLT, ilim::UV.AMP) :: CURRENT_LIMIT
{
    name = "current-limited source, capability adopted"
    pins = [
        [1,2] = DC{VIN, GND}::DC(vin), ["Power input"]
    ]
    spec = [
        limit = ilim
    ]
}
