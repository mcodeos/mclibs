# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// Character LCD module family shape (component inventory C9, display
// chain). Distilled from a page-verified manufacturer datasheet (pin
// table, electrical characteristics, controller information --
// industry-standard character-LCD controller instruction set, 1/16
// duty / 1/5 bias).
//
// The shape is the 16-pad face: supply pair, contrast node, three MPU
// control lines, the eight bi-directional three-state data lines, and
// the side LED backlight pair. Modules without a backlight (14-pad, or
// pads 15/16 absent) and graphics/OLED modules are different shapes:
// they take their own family values when a consumer appears (E5060 --
// concrete parts cannot add or drop pins on an inherited shape).
//
// Direction words are datasheet facts only: RS/RW/E are module inputs,
// the DB lines are bi-directional three-state (busy-flag read), and the
// backlight is a passive LED junction (no direction words, no interface
// adoption -- ruling-19 census A1). Board-side interface views (GPIO
// consumers on the control lines, the write-only 4-bit strap) are the
// consuming board's choice, not the module shape's.

abstract component LCD.CHR
{
    name = "Character LCD module (16-pad, backlight)"
    description = "Dot-matrix character module on an industry-standard character-LCD controller instruction set: logic supply pair, contrast node, RS/RW/E control lines, bi-directional three-state 8-bit data bus (lower byte unused in 4-bit operation), side LED backlight pair"

    pins = [
        psnk [2, 1] = PWR{VDD, VSS}::DC(4.5V~5.5V)   // logic supply pair, return VSS
        in 3 = V0, "contrast drive node (3.6 ~ 3.8V at VDD=5.0V; divider or DAC between VDD and VSS)"
        in 4 = RS, "register select: RS=0 command, RS=1 data"
        in 5 = RW, "read/write select: R/W=0 write, R/W=1 read; write-only boards strap it low"
        in 6 = E, "operation enable, data latched on the falling edge"
        io [7, 8, 9, 10] = DB[0, 1, 2, 3], "low data byte, bi-directional three-state; not used in 4-bit operation"
        io [11, 12, 13, 14] = DB[4, 5, 6, 7], "high data byte = the 4-bit bus; bi-directional three-state (busy-flag read)"
        15 = LEDA, "backlight anode (side white LED, VLED 4.9 ~ 5.1V, ILED 10/32/40 mA min/typ/max via on-board resistor)"
        16 = LEDK, "backlight cathode (board ground)"
    ]
}
