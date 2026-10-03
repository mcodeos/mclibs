# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

# Piezo sounder abstract shape (component inventory C7, electroacoustic
# family). Distilled from the page-verified piezo sounder catalog
#
# The externally-driven series ships without oscillator circuit: an external AC drive
# (catalog-typical 3 Vo-p rectangular wave, absolute max 30 Vo-p without
# DC bias) is applied across the two pins. The catalog documents no
# polarity for the pin-terminal parts, so the leaf stays a passive two
#-terminal: no direction words, no interface adoption (ruling-19 census
# A1: passive pairing data is carried by the net's other side). The drive
# network (transistor buffer + charge/discharge resistor)
# is application-level and stays on the design side.

abstract component BUZZER.PIEZO
{
    name = "Piezo sounder (externally driven)"
    description = "Two-pin passive piezo sounder without oscillator circuit: drive square wave applied across the two terminals (no polarity documented), external drive network stays on the design side"

    pins = [
        1 = A, "Drive terminal A (no polarity documented in the source catalog)"
        2 = B, "Drive terminal B (no polarity documented in the source catalog)"
    ]
}
