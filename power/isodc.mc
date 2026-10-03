# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// Isolated DCDC converter pin-shape family, SOIC8 (U226 b3878: sedimented
// from the pwrint board's board-internal DC.ISO_SRC per the part-binding
// playbook).
// The primary sink row states no nominal (U227 b3877, applied-nominal-
// design.md §4.1 ruling 1). The secondary source row keeps the output
// nominal: a source nominal is device truth.
// The secondary return GND_ISO is a separate return copper from the primary
// GND — no shared copper, no DC bridge across the isolation barrier; the
// isolation itself is decided by the bound conduit role, with no ::DC
// contract word across the barrier.

abstract component DCDC.ISO_SOIC8
{
    name = "Isolated DCDC converter, SOIC8"
    description = "Primary sink pair, secondary source pair with isolated return, one unbound pad"

    pins = [
        psnk [1,2] = [PRI, GND]::DC()             // primary sink (return GND)
        psrc [4,5] = [SEC, GND_ISO]::DC(5V)       // secondary source (return GND_ISO — separate return copper)
        nc 3 = NC
    ]
}
