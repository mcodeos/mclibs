# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// QFN32 audio-MCU pin-shape family (U226 b3878: sedimented from the pwrint
// board's board-internal MCU.AUDIO32 per the part-binding playbook — family
// shapes live in mclibs, boards instantiate the abstract, real parts in mcpub
// bind with `:`).
// The three power-sink rows state no nominal (U227 b3877, applied-nominal-
// design.md §4.1 ruling 1): an input requirement is an application-side
// property; the per-domain current draw (amp:) is device truth and stays.

abstract component MCU.QFN32
{
    name = "QFN32 audio MCU"
    description = "QFN32 audio MCU pin shape: digital/core/analog power sink rows, differential ADC input, I2C master, unbound pads"

    pins = [
        psnk [5,21]   = [VDD, GND]::DC(amp:120mA)             // digital power sink
        psnk [14,21]  = [VDD_CORE, GND]::DC(amp:90mA)         // core power sink
        psnk [17,18]  = [AVDD, AGND]::DC(amp:8mA)             // analog power sink (return AGND)
        io [6,7]      = ADC{P, N}::ADC.DIFF(RECEIVER)         // differential analog input
        io [8,9]      = I2C0::I2C(MASTER)
        nc 10 = NC
        nc 11 = NC
        nc 12 = NC
        nc 13 = NC
        nc 15 = NC
        nc 16 = NC
        nc 19 = NC
        nc 20 = NC
    ]

    // Terminal-level wiring macro: bind the three domains to the MCU power
    // pins (boundary = container terminal). Each incoming pair drops one local
    // decoupling capacitor at its continuation (hot->pin, ret->pin, cap
    // across). Written in operand-statement form on purpose (U328): in the
    // former `=> ... -> [VDD, GND]` chain the bare `GND` fork target named the
    // CALLER's ground spelling, so the local return pins (21) were never wired
    // by this body; `this.GND` is the local-pin qualified form that reaches
    // them. A bare `GND` operand takes the caller's spelling back to the
    // caller's net (caller-scope value, U328), so the return side is tied to
    // the local pin explicitly and the hot side to the formal by name.
    func Power([VDD_3V3, GND]::DC(3.3V), [VCC_1V2, GND]::DC(1.2V), [VDDA, GNDA]::DC(3.3V))
    {
        VDD_3V3 - CAP(100nF) - GND
        GND - this.GND
        VDD_3V3 - VDD

        VCC_1V2 - CAP(100nF) - GND
        GND - this.GND
        VCC_1V2 - VDD_CORE

        VDDA - CAP(100nF) - GNDA
        GNDA - AGND
        VDDA - AVDD
    }
}
