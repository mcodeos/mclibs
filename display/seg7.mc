# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// Single-digit 7-segment LED display family shape (component inventory
// C9, display chain). Distilled from the page-verified Kingbright
// "SA03-11EWA" sheet (seg7.pdf in mcpub display/sa0311; internal-circuit
// pin map read off the figure, electrical/optical characteristics table).
//
// The common-anode rail is a power-sink member: every segment current
// returns through it, so it lands on the supply (psnk, DC face with the
// forward-voltage window as the range nominal -- lm66100 applied-
// nominal ruling). Segments are passive LED junctions: no direction
// words, no interface adoption (ruling-19 census A1, ec11-switch form);
// each needs its own external series resistor on the board.
//
// The common-cathode mirror and multi-digit (multiplexed commons)
// variants are different shapes: they take their own family values when
// a consumer appears (E5060 -- concrete parts cannot add, drop, or
// re-polarize pins on an inherited shape).
//
// Pad numbering is the datasheet's own (pin map transcribed verbatim):
// a=1, f=2, e=7, d=8, DP2=9, c=10, g=11, b=13, common anode=3+14;
// pin 6 exists and is N/C; pins 4, 5, 12 are molded off (no pin).

abstract component SEG7.CA
{
    name = "Single-digit 7-segment LED display, common anode, right-hand decimal"
    description = "Eight high-efficiency red LED segments (a-g plus right decimal DP2) sharing one common-anode rail; segments light on the cathode-low side, one series resistor per segment on the board"

    pins = [
        psnk [3, 14] = CA::DC(1.9V~2.3V), "common-anode rail (two pads, one net; VF window at IF=10mA)"
        1 = A, "segment a (top)"
        13 = B, "segment b (top right)"
        10 = C, "segment c (bottom right)"
        8 = D, "segment d (bottom)"
        7 = E, "segment e (bottom left)"
        2 = F, "segment f (top left)"
        11 = G, "segment g (middle)"
        9 = DP2, "right-hand decimal point"
        nc 6 = NC, "no internal connection"
    ]
}
