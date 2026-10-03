# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// Dual-channel digital isolator abstract shapes (component inventory C13).
// Distilled from the page-verified TI "ISO772x High-Speed, Robust EMC,
// Reinforced and Basic Dual-Channel Digital Isolators" sheet (iso7721.pdf
// in mcpub isolation/iso7721; pinout Table 5-1 p.6, function Table 8-2
// p.25, model decode Table 8-1 p.24).
//
// The ifs ISOLATION face is the quad barrier-body shape (IN[A,B,C,D] on
// side 1, OUT[A,B,C,D] on side 2, EN2): a dual part populates the A/B legs
// only and carries no enable, so the whole-face adoption does not fit.
// Channel legs take the per-side GPIO views instead (CONSUMER on the side
// that receives, PROVIDER on the side that drives); the two side returns
// ride the supply rows -- GND1 and GND2 are separate return copper, no DC
// bridge across the barrier (same ruling as DCDC.ISO_SOIC8 in power/).
//
// Family split follows the datasheet's own decode axis (Table 8-1 p.24):
// last digit 0 = both channels forward (side 1 -> side 2); last digit 1 =
// channel A reversed (side 2 -> side 1), channel B forward. A concrete
// part cannot re-direction inherited legs (E5060), so the two footprints
// are separate family values with full pin restatement.
//
// Supply rows state the recommended range only (2.25 V ~ 5.5 V per side,
// independently settable, p.8): both sides are sinks, one pair per side.
// The default-output axis (suffix F = outputs default LOW via internal
// pull-down, no suffix = default HIGH via 1.5 MOhm pull-up, pp.1/25) is a
// spec row on the concrete part, not a shape difference.

abstract component ISO.DIG2
{
    name = "Dual-channel digital isolator, both channels forward"
    description = "Two forward logic channels across one capacitive isolation barrier (side 1 -> side 2), separate per-side supply pairs and returns; no enable pin"

    pins = [
        in [1, 4] = DC1{VCC1, GND1}::DC(2.25V~5.5V)   // side-1 supply, return GND1
        in [8, 5] = DC2{VCC2, GND2}::DC(2.25V~5.5V)   // side-2 supply, return GND2
        in [2, 3] = IN{A, B}::GPIO(CONSUMER)          // channel inputs, side 1
        out [6, 7] = OUT{B, A}::GPIO(PROVIDER)        // channel outputs, side 2 (pads ascending)
    ]
}

abstract component ISO.DIG2.REVA
{
    name = "Dual-channel digital isolator, channel A reversed"
    description = "One forward and one reverse logic channel across one capacitive isolation barrier: channel B side 1 -> side 2, channel A side 2 -> side 1; separate per-side supply pairs and returns; no enable pin"

    pins = [
        in [1, 4] = DC1{VCC1, GND1}::DC(2.25V~5.5V)   // side-1 supply, return GND1
        in [8, 5] = DC2{VCC2, GND2}::DC(2.25V~5.5V)   // side-2 supply, return GND2
        in [3, 7] = IN{B, A}::GPIO(CONSUMER)          // B input side 1 (forward); A input side 2 (reversed)
        out [2, 6] = OUT{A, B}::GPIO(PROVIDER)        // A output side 1 (reversed); B output side 2 (forward)
    ]
}
