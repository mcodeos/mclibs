# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// Externally-adjustable eFuse family shape (component inventory C12,
// protection chain alongside the supervisor family in sup.mc and the
// varistor parts in mcpub passive). Distilled from the page-verified TI
// "TPS25200 5V eFuse With Precision Adjustable Current Limit and
// Overvoltage Clamp" sheet (tps25200.pdf in mcpub power/tps25200; pinout
// Table 4-1, functional description, application section).
//
// The shape is the adjustable-limit form: a dedicated ILIM pin programs
// the current limit with one resistor to ground, EN is an active-high
// logic input that must not float, and FAULT is an active-low open-drain
// flag (pull up to the logic rail in the consuming board, not in the
// family shape). A fixed-limit eFuse is a different shape (no ILIM pad):
// it takes its own family value when a second consumer appears (E5060 --
// concrete parts cannot add or drop pins on an inherited shape).
//
// The shared ground pad rides both power rows (ORING.LM66100 form: the
// return is one physical pad referenced by the input and output pairs).
// The output row states a range nominal bounded by the fixed overvoltage
// clamp, not a regulated output nominal -- the device is a pass-through
// switch (lm66100 applied-nominal ruling).

abstract component EFUSE
{
    name = "Adjustable eFuse (precision current limit, overvoltage clamp)"
    description = "Protected series power switch: input pair, clamped pass-through output pair sharing one ground pad, resistor-programmed current limit, active-high enable, active-low open-drain fault flag"

    pins = [
        psnk [6, 5] = IN{VIN, GND}::DC(2.5V~6.5V)      // input pair, return GND
        psrc [1, 5] = OUT{VOUT, GND}::DC(2.5V~5.55V)   // protected output, clamp-bounded window; same ground pad
        io 2 = ILIM, "external R_ILIM to GND programs the current limit (33 kOhm ~ 1100 kOhm; traces as short as possible)"
        in 4 = EN, "logic enable, active high; must not be left floating (tie through >= 300 kOhm if VIN-fed)"
        out 3 = _FAULT, "fault flag, active-low open-drain (overcurrent / overvoltage / overtemperature); pull up to the logic rail"
    ]
}
