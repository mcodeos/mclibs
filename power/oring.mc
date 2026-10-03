# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// Ideal-diode ORing pin-shape family, 2:1 (U226 b3878: sedimented from a
// verified board-internal ORING.IDEAL per the part-binding playbook).
// Two source inputs are combined onto one output pair; the ORing declaration
// is what admits the PWR-3 source contention on the shared output.
// The input sink rows state no nominal (U227 b3877 nominal-law ruling): the fed
// voltage is an application-side property. The output
// source row keeps the board's canonical output nominal (source nominal is
// device truth; the sedimented shape is the board's 5V rail face).

abstract component ORING.IDEAL
{
    name = "Ideal-diode ORing, 2:1"
    description = "Two power inputs combined onto one output pair (ideal-diode ORing; anti-backfeed per branch)"

    pins = [
        psnk [1,2] = [IN1, GND]::DC()          // source input 1 (return GND)
        psnk [3,4] = [IN2, GND]::DC()          // source input 2 (return GND)
        psrc [5,6] = [OUT, GND]::DC(5V)        // combined output pair
    ]
}
