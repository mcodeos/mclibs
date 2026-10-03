# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// SOT23-5 LDO pin-shape family (U192 ruling 1: package pin-shape abstracts
// live in mclibs; real parts in mcpub bind with `:` and keep the family name).
// Pin order is the verified device face (hbl SGM2019 board):
//   1 = Vin, 2 = GND, 3 = CE, 4 = FB, 5 = Vout
// The VIN sink row states no nominal (U227 b3877, applied-nominal-design.md
// §4.1 ruling 1): an input requirement is an application-side property, so
// the generic base declares the DC crossing only and the real part's
// accepted window (spec input_req) adjudicates each board's feed.
// The VOUT source row keeps the canonical output nominal: a source nominal
// is device truth, and the variant-level specialization of that nominal is
// ruling 2 (案 A), not yet landed.

abstract component LDO.SOT23_5
{
    name = "SOT23-5 LDO"
    description = "SOT23-5 LDO pin shape: Vin/GND input pair, CE enable, FB feedback, Vout/GND regulated pair"

    pins = [
        psnk [1, 2] = VIN{Vin, GND}::DC()        // sink: unregulated input pair (no nominal — application side)
        in 3 = CE                                // chip enable, active high
        in 4 = FB                                // output voltage feedback
        psrc [5, 2] = VOUT{Vout, GND}::DC(3.3V)  // source: regulated output pair
    ]

    func Enable() {
        VIN.Vin -> CE  // tie CE to the input hot rail to enable
    }
}
