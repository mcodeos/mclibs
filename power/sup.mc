# Copyright (c) 2026 MCode
#
# Licensed under the Apache License, Version 2.0.

// Voltage-supervisor family (abstract; no part numbers, no vendor -- mclibs
// layer law). These are the first SOURCE-side citizens of the RST interface
// (mcode ifs/rst.mc): before this family the reset source role had zero
// adopters in the corpus, so the reset-intent chain-reachability judge had no
// live lane to walk (mcd/doc/ee/reset-intent-design.md §2, both candidates
// still gates-to-be). Polarity is a datasheet fact of the concrete part --
// abstract RESET here is "asserted while the monitored rail is outside its
// window"; active-low parts bind it in the pack entry, not here.
// Variants: SUP = POR/brown-out supervisor (VCC sense + reset output);
// SUP.WDG = adds a watchdog input (WDI) that must toggle or the supervisor
// asserts reset. Open-drain outputs need an external pull-up -- declare the
// pull-up in the consuming board, not in the family shape.

component SUP(vin::UV.VOLT, vth::UV.VOLT)
{
    name = "Voltage Supervisor"
    spec = [
        input_voltage = vin
        threshold_voltage = vth
    ]
    pins = [
        psnk [1, 2] = [VCC, GND]::DC(vin), "Supply pair"
        out 3 = RST{RESET}::RST(SOURCE), "Reset output, asserted while VCC < vth"
    ]
}

component SUP.WDG(vin::UV.VOLT, vth::UV.VOLT, twd::UV.TIME)
{
    name = "Voltage Supervisor with Watchdog"
    spec = [
        input_voltage = vin
        threshold_voltage = vth
        watchdog_timeout = twd
    ]
    pins = [
        psnk [1, 2] = [VCC, GND]::DC(vin), "Supply pair"
        in 3 = WDI, "Watchdog input; must toggle within twd or reset asserts"
        out 4 = RST{RESET}::RST(SOURCE), "Reset output, asserted while VCC < vth or WDI stalls"
    ]
}

# Usage Examples:
#
// Supervisor watching a 3.3V rail, reset feeding an MCU NRST:
//     SUP(3.3V, 2.9V) u1
//     u1.RST.RESET -> uC.RST.NRST
//     u1.VCC - V3V3
//
// Watchdog variant, WDI toggled by an MCU GPIO:
//     SUP.WDG(3.3V, 2.9V, 1.6s) u2
//     u2.WDI <- mcu.GPIO[3]
//     u2.RST.RESET -> uC.RST.NRST
