# Copyright (c) 2026 MCode
#
# Licensed under the Apache License, Version 2.0.

// Li-Po battery pin-shape family, 2-pad (U226 b3878: sedimented from the
// pwrint board's board-internal BAT.LI_PO per the part-binding playbook).
// The psbi row is the bidirectional contract: charge = sink, discharge =
// source — the discharge nominal is the sedimented board's rail face (a
// source nominal is device truth; the per-cell chemistry window belongs in
// a real part's spec, mcpub side).

abstract component BAT.LI_PO
{
    name = "Li-Po battery, 2-pad"
    description = "Two-pad Li-Po battery: one bidirectional power pair (charge sinks, discharge sources)"

    pins = [
        psbi [1,2] = BAT{VCC, GND}::DC(5V)   // bidirectional pair; BAT bus, whole-lead addressable
    ]
}
