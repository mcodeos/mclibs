# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

# Incremental rotary encoder abstract shape (component inventory C10 /
# interface gap B5 counterpart). Distilled from the page-verified ALPS
# "EC11 Series" detail sheet (ec11.pdf in mcpub sensor/ec11; terminals
# A C B end-view p.2, sliding-noise test circuit p.3: A and B each through
# R to +5V, terminal C tied to ground).
#
# The abstract carries the encoder element only: the A/B quadrature
# contacts with their common. The push-on switch (EC11 terminals D/E) is
# not universal in the family and stays on the concrete part. Pad
# enumeration follows the end-view left-to-right reading: bottom row
# A, C, B -> pads 1, 2, 3 (the datasheet names terminals by letter; the
# numeric mapping is the abstract's own convention, stated here).

abstract component ENC.INC
{
    name = "Incremental rotary encoder (2-phase A/B)"
    description = "Two-phase incremental quadrature contact pair with common: the A/B pulse trains encode position delta (edge count) and direction (phase lead); no index (Z) lane; contact outputs carry no drive transistor, the reader side expects pull-ups"

    pins = [
        io [1, 2] = ENC{A, B}::ENC(TRANSMITTER) @class(digital)  // quadrature element output adopts the ENC source face
        3 = C, "encoder element common (test circuit ties it to ground; lands on the logic return)"
    ]
}

// Shaft-push switch member: same quadrature element plus the integral
// push-on switch (SPST, normally open) on two further terminals. Rows are
// restated in full -- concrete parts cannot add pins to an inherited shape
// (E5060), so the switch rides its own family value.
abstract component ENC.INC.SW
{
    name = "Incremental rotary encoder (2-phase A/B) with push-on switch"
    description = "Quadrature element of ENC.INC plus the family push-on switch: a passive normally-open contact pair with no direction words and no interface adoption (ruling-19 census A1)"

    pins = [
        io [1, 2] = ENC{A, B}::ENC(TRANSMITTER) @class(digital)  // quadrature element output adopts the ENC source face
        3 = C, "encoder element common (test circuit ties it to ground; lands on the logic return)"
        4 = D, "push-on switch terminal D (contact pair with E; not switch-common-designated in the source document)"
        5 = E, "push-on switch terminal E (contact pair with D)"
    ]
}
