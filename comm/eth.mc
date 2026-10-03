# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// Ethernet 10/100 PHY pin-shape family (C4 gap: the device face the ETHERNET
// media interface has been missing).
// Anatomy distilled from the page-verified LAN8710A/LAN8710Ai 32-QFN pinout
// (mcpub comm/lan8710a, DS00002164B Table 2-8 p.14, pin multiplexing
// Table 3-2 p.26):
//   1 VDD2A, 2 LED2/nINTSEL, 3 LED1/REGOFF, 4 XTAL2, 5 XTAL1/CLKIN,
//   6 VDDCR, 7 RXCLK/PHYAD1, 8 RXD3/PHYAD2, 9 RXD2/RMIISEL, 10 RXD1/MODE1,
//   11 RXD0/MODE0, 12 VDDIO, 13 RXER/RXD4/PHYAD0, 14 CRS, 15 COL/CRS_DV/MODE2,
//   16 MDIO, 17 MDC, 18 nINT/TXER/TXD4, 19 nRST, 20 TXCLK, 21 TXEN,
//   22 TXD0, 23 TXD1, 24 TXD2, 25 TXD3, 26 RXDV, 27 VDD1A, 28 TXN, 29 TXP,
//   30 RXN, 31 RXP, 32 RBIAS, EP = VSS.
// Management side adopts MDIO (role-less: the manager lives in the MAC above);
// line side binds the ETHERNET media face role-less (the 4B5B transceiver is
// a mediated device — it claims no HOST/SWITCH node role; HP Auto-MDIX makes
// the two pairs TX/RX symmetric). The MAC data bus stays bare rows: MII vs
// RMII is a board decision sampled from the RMIISEL strap at reset
// (DS00002164B Table 2-1 p.8) — the same pad reads TXD2 in MII mode and
// must-go-to-VSS in RMII mode, so no single interface fits unconditionally
// (the mclibs mux-pad law: bare row + full alias list; board wiring adopts
// ifs MII/RMII at the module that owns the strap).

abstract component XCVR.ETH
{
    name = "Ethernet PHY transceiver"
    description = "Ethernet 10/100 PHY shape: MDIO management pair, line pairs binding the ETHERNET media face role-less, MII/RMII MAC-side bus as mode-muxed bare rows, 25MHz crystal pair with the RMII REF_CLK mux on XTAL1/CLKIN, dual 3.3V analog supplies plus variable VDDIO and the internal 1.2V core regulator decap, bias resistor, configuration straps, low-active reset"

    pins = [
        psnk [[27, 1], [[pad]]] = [VDDA, VSS]::DC(3.3V), "VDD1A/VDD2A analog port supplies 3.0-3.6V; VSS = exposed pad, via array to ground plane"
        psnk [[12], [[pad]]] = [VDDIO, VSS]::DC(3.3V), "I/O ring supply 1.6-3.6V, board selects; family default 3.3V"
        psnk [6] = VDDCR, "Internal 1.2V core regulator output: 1uF + 470pF to GND; REGOFF strap disables the regulator, board then feeds 1.08-1.32V"
        io [29, 28, 31, 30] = ETHERNET{TD\+, TD\-, RD\+, RD\-}::ETHERNET(), "Line pairs, HP Auto-MDIX (TX/RX symmetric), 1:1 center-tapped magnetics to the medium"
        io [17, 16] = MDIO{MDC, MDIO}::MDIO(), "SMI management pair; MDIO open-drain, pull-up to VDDIO"
        io 5 = XTAL1, "XTAL1/CLKIN — 25MHz crystal input (MII), or REF_CLK 50MHz +-50ppm input in RMII mode (RMIISEL strap); clock must run from hardware reset (DS00002164B §3.8.5.1 p.34)"
        io 4 = XTAL2, "XTAL2 crystal output (leave unconnected for a single-ended clock)"
        in 19 = RST{nRST}::RST(RECEIVER), "System reset, low active, internal pull-up; straps latch on the rising edge"
        in 32 = RBIAS, "Bias resistor 12.1k 1% to GND"
        out 2 = LED2, "LED2/nINTSEL — link speed LED (100M active); nINTSEL strap (to VDD2A) picks the pad-18 function nINT/TXER/TXD4"
        out 3 = LED1, "LED1/REGOFF — link/activity LED; REGOFF strap (to VDD2A) disables the internal 1.2V regulator"
        in 9 = RMIISEL, "RXD2/RMIISEL — mode strap: low (internal PD) = MII, high = RMII; latched at reset; also MII RXD2"
        in 18 = nINT, "nINT/TXER/TXD4 — interrupt output (open drain, pull-up to VDDIO) / MII TXER / symbol-mode TXD4, per nINTSEL strap"
        out 20 = TXCLK, "MII TX_CLK output 25MHz / 2.5MHz (unused in RMII)"
        in [22, 23, 24, 25, 21] = [TXD0, TXD1, TXD2, TXD3, TXEN], "MAC transmit data 0-3 and enable; TXD0/TXD1/TXEN common to MII and RMII, TXD2/TXD3 MII only (tie to VSS in RMII, DS note 3-1)"
        out [26, 7, 8, 9, 10, 11] = [RXDV, RXCLK, RXD3, RXD2, RXD1, RXD0], "MII receive valid/clock/data 3-0; RXD0/RXD1 common to MII and RMII; PHYAD1/PHYAD2/RMIISEL/MODE1/MODE0 straps ride these pads"
        out 14 = CRS, "MII carrier sense (unused in RMII; internal PD)"
        in 15 = CRS_DV, "COL/CRS_DV/MODE2 — RMII carrier/receive-valid, or MII collision detect; MODE2 strap rides the pad"
        out 13 = RXER, "RXER/RXD4/PHYAD0 — MII/RMII receive error (RMII: transceiver-required, MAC optional); PHYAD0 strap"
    ]

    // Terminal macro: bind the 3.3V domain onto the analog and I/O supplies
    // and wire the datasheet external components (DS00002164B Figure 3-13
    // p.39: VDDCR decoupling 1uF + 470pF, supply bypassers; §5.6 p.65: RBIAS
    // is wired in the pin book, not here — boards place it once against the
    // pin row). Statement-unity law (design-axioms B10): the ::DC pair taps
    // ride one vector-zip statement.
    func Power([VDD3V3, GNDP]::DC(3.3V)) {
        VDD3V3 - CAP(1uF, ±20%, CAP.X5R, 6.3V) - GNDP
        VDD3V3 - CAP(470pF, ±10%, CAP.C0G, 6.3V) - GNDP
        VDD3V3 - CAP(100nF, ±20%, CAP.X5R, 6.3V) - GNDP
        [VDD3V3, GNDP] - [VDDA, VSS]
        [VDD3V3, GNDP] - [VDDIO, VSS]
    }
}
