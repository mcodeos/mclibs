# Copyright 2026 MCode
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

// Three-phase gate driver pin-shape family (C8 gap, interface side B6: the
// complementary-PWM consumer the MCU timers have been missing).
// Anatomy distilled from the page-verified DRV8304H RHA pinout
// (mcpub motor/drv8304, TI ZHCSI91B p.3 package drawing; Pin Functions
// table p.3-5 cross-checked pin-by-pin against the figure):
//   1 CPL, 2 CPH, 3 VCP, 4 VM, 5 VDRAIN, 6 GHA, 7 SHA, 8 GLA, 9 SPA,
//   10 SNA, 11 SNB, 12 SPB, 13 GLB, 14 SHB, 15 GHB, 16 GHC, 17 SHC,
//   18 GLC, 19 SPC, 20 SNC, 21 SOC, 22 SOB, 23 SOA, 24 VREF, 25 nFAULT,
//   26 MODE, 27 IDRIVE, 28 VDS, 29 GAIN, 30 ENABLE, 31 CAL, 32 AGND,
//   33 DVDD, 34 INHA, 35 INLA, 36 INHB, 37 INLB, 38 INHC, 39 INLC, 40 PGND
// The figure leaves the exposed thermal pad unlabeled (no net name), so the
// face carries the 40 numbered pins only. Control inputs adopt the PWM.H6
// receiver face phase-major high-side-first (INHA, INLA, INHB, INLB, INHC,
// INLC = UH, UL, VH, VL, WH, WL). The S variant swaps pins 26-29 for an SPI
// face (nSCS/SCLK/SDI/SDO) -- a different shape family, not folded here.

abstract component GATEDRV.H6
{
    package = PKG.QFN40
    name = "Three-phase smart gate driver"
    description = "Three-phase gate driver shape: six complementary PWM control inputs adopting PWM.H6(RECEIVER), three half-bridge gate output trios (GHx/SHx/GLx), per-phase low-side shunt amplifier (SPx/SNx/SOx), VM/PGND bridge power, charge pump, internal 3.3V regulator, resistor-set drive configuration"

    pins = [
        in 34 = INHA, "Phase U high-side control input"
        in 35 = INLA, "Phase U low-side control input"
        in 36 = INHB, "Phase V high-side control input"
        in 37 = INLB, "Phase V low-side control input"
        in 38 = INHC, "Phase W high-side control input"
        in 39 = INLC, "Phase W low-side control input"
        [34, 35, 36, 37, 38, 39] = PWM{INHA, INLA, INHB, INLB, INHC, INLC}::PWM.H6(RECEIVER)

        out 6 = GHA, "Phase A high-side gate driver output"
        in 7 = SHA, "Phase A high-side source sense (switch node)"
        out 8 = GLA, "Phase A low-side gate driver output"
        out 15 = GHB, "Phase B high-side gate driver output"
        in 14 = SHB, "Phase B high-side source sense (switch node)"
        out 13 = GLB, "Phase B low-side gate driver output"
        out 16 = GHC, "Phase C high-side gate driver output"
        in 17 = SHC, "Phase C high-side source sense (switch node)"
        out 18 = GLC, "Phase C low-side gate driver output"

        in 9 = SPA, "Phase A shunt amplifier input, high side of the shunt"
        in 10 = SNA, "Phase A shunt amplifier input, low side of the shunt"
        out 23 = SOA, "Phase A shunt amplifier output"
        in 12 = SPB, "Phase B shunt amplifier input, high side of the shunt"
        in 11 = SNB, "Phase B shunt amplifier input, low side of the shunt"
        out 22 = SOB, "Phase B shunt amplifier output"
        in 19 = SPC, "Phase C shunt amplifier input, high side of the shunt"
        in 20 = SNC, "Phase C shunt amplifier input, low side of the shunt"
        out 21 = SOC, "Phase C shunt amplifier output"

        psnk [4, 40] = [VM, PGND]::DC(12V)   // bridge power; family default 12V, per-project rail
        in 5 = VDRAIN, "High-side MOSFET drain sense (common drain point)"
        out 3 = VCP, "Charge pump output"
        out 33 = DVDD, "Internal 3.3V regulator output (up to 30mA)"
        1 = CPL, "Charge pump switching node"
        2 = CPH, "Charge pump switching node"
        24 = VREF, "Shunt amplifier supply and reference"
        32 = AGND, "Analog ground"

        in 26 = MODE, "PWM input mode setting (4-level input, external resistor)"
        in 27 = IDRIVE, "Gate drive current setting (7-level input, external resistor)"
        in 28 = VDS, "VDS monitor trip point setting (7-level input, external resistor)"
        in 29 = GAIN, "Shunt amplifier gain setting (4-level input, external resistor)"
        in 30 = ENABLE, "Gate driver enable (low = sleep; low pulse resets faults)"
        in 31 = CAL, "Amplifier calibration input (logic high shorts inputs for offset calibration)"
        out 25 = nFAULT, "Fault indicator output (open-drain, external pullup)"
    ]

    // Terminal macro: bind the bridge rail onto VM/PGND and wire the external
    // network the datasheet mandates (Table 1: VM decoupling 0.1uF + >=10uF,
    // VCP-VM 1uF/16V, CPH-CPL 22nF/VM-rated, DVDD 1uF/6.3V, VREF 0.1uF/6.3V)
    func Power([VM_RAIL, GND]::DC(12V)) {
        VM_RAIL - CAP(100nF, ±20%, CAP.X5R, 50V) - GND
        VM_RAIL - CAP(10µF, ±20%, CAP.X5R, 50V) - GND
        VM_RAIL - VM
        GND - PGND
        GND - AGND
        VCP - CAP(1µF, ±20%, CAP.X5R, 16V) - VM
        CPH - CAP(22nF, ±20%, CAP.X5R, 50V) - CPL
        DVDD - CAP(1µF, ±20%, CAP.X5R, 6.3V) - AGND
        VREF - CAP(100nF, ±20%, CAP.X5R, 6.3V) - AGND
    }
}

// Brushed-DC full-bridge gate driver pin-shape family: four external N-channel
// FETs driven by one package (C8 gap). Anatomy distilled from the page-verified
// DRV8701 RGE pinout (mcpub motor/drv8701p, TI ZHCSDO0A p.3 package drawing;
// Pin Functions table cross-checked pin-by-pin against the figure):
//   1 VM, 2 VCP, 3 CPH, 4 CPL, 5 GND, 6 VREF, 7 AVDD, 8 DVDD, 9 nFAULT,
//   10 SNSOUT, 11 SO, 12 IDRIVE, 13 nSLEEP, 14 IN2, 15 IN1, 16 GND,
//   17 GH1, 18 SH1, 19 GL1, 20 SN, 21 SP, 22 GL2, 23 SH2, 24 GH2;
//   the GND group is 5 / 16 / PPAD (unnumbered exposed pad), all ground
//   ("must be connected to ground" per the ZHCSDO0A GND row).
// Control face: the P variant uses IN1/IN2 PWM inputs (each adopts its own
//   single-lane PWM(RECEIVER) crossing); the E variant swaps 14/15 for PH/EN
//   -- a different shape family, not folded here (same ruling as DRV8304S).
// VM operating range 5.9-45V.

abstract component GATEDRV.H1
{
    package = PKG.QFN24
    name = "Brushed-DC full-bridge gate driver"
    description = "Single brushed-DC full-bridge gate driver shape for external N-channel FETs: two PWM control inputs each adopting PWM(RECEIVER), two half-bridge gate trios (GHx/SHx/GLx) whose SHx nodes carry the motor terminals, one shunt amplifier (SP/SN/SO), sense comparator and fault outputs open-drain, charge pump, 3.3V logic and 4.8V analog regulators, resistor-set gate drive current"

    pins = [
        in 15 = IN1::PWM(RECEIVER), "Bridge PWM input 1"
        in 14 = IN2::PWM(RECEIVER), "Bridge PWM input 2"

        out 17 = GH1, "Half-bridge 1 high-side FET gate"
        in 18 = SH1, "Phase node 1 (high-side source / low-side drain; motor terminal A)"
        out 19 = GL1, "Half-bridge 1 low-side FET gate"
        out 24 = GH2, "Half-bridge 2 high-side FET gate"
        in 23 = SH2, "Phase node 2 (high-side source / low-side drain; motor terminal B)"
        out 22 = GL2, "Half-bridge 2 low-side FET gate"

        in 21 = SP, "Shunt amplifier positive input (low-side FET common source)"
        in 20 = SN, "Shunt amplifier negative input (sense resistor to GND)"
        out 11 = SO, "Shunt amplifier output (max 1nF load)"
        out 10 = SNSOUT, "Sense comparator output (open-drain, external pullup)"
        out 9 = nFAULT, "Fault indication (open-drain, external pullup)"

        in 12 = IDRIVE, "Gate drive current setting (external resistor to GND)"
        in 13 = nSLEEP, "Sleep mode input (low = sleep, internal pulldown)"
        in 6 = VREF, "Analog reference for current regulation (0.3V to AVDD)"

        out 8 = DVDD, "Internal 3.3V logic regulator (bypass 1uF/6.3V)"
        out 7 = AVDD, "Internal 4.8V analog regulator (bypass 1uF/6.3V)"
        out 2 = VCP, "Charge pump output (bypass 1uF/16V to VM)"
        3 = CPH, "Charge pump switching node (0.1uF VM-rated to CPL)"
        4 = CPL, "Charge pump switching node"

        psnk [[1], [5, 16, [pad]]] = [VM, GND]::DC(12V), "Motor supply 5.9-45V; GND pins 5 and 16 plus the exposed PPAD all ground (ZHCSDO0A GND row); family default 12V"
    ]

    // Terminal macro: bind the bridge rail and wire the External Passive
    // Components table (CVM1 0.1uF + CVM2 >=10uF, CVCP 1uF/16V, CSW 0.1uF
    // VM-rated, CDVDD/CAVDD 1uF/6.3V each; RIDRIVE sizing is application-level
    // and stays on the design side)
    func Power([VM_RAIL, GNDP]::DC(12V)) {
        VM_RAIL - CAP(100nF, ±20%, CAP.X5R, 50V) - GNDP
        VM_RAIL - CAP(10µF, ±20%, CAP.X5R, 50V) - GNDP
        VCP - CAP(1µF, ±20%, CAP.X5R, 16V) - VM
        CPH - CAP(100nF, ±20%, CAP.X7R, 50V) - CPL
        DVDD - CAP(1µF, ±20%, CAP.X5R, 6.3V) - GNDP
        AVDD - CAP(1µF, ±20%, CAP.X5R, 6.3V) - GNDP
        VM_RAIL - VM
        GNDP - GND
    }
}

// SPI-configured three-phase gate driver pin-shape family: the S variant the
// GATEDRV.H6 header predicted. Anatomy distilled from the page-verified
// DRV8323S RTA pinout (mcpub motor/drv8323s, TI ZHCSG01C p.7 package drawing;
// Pin Functions table p.7-8 cross-checked pin-by-pin against the figure):
// pins 1-25 and 31-40 key identically to the DRV8304H RHA map; pins 26-29
// swap the resistor-set configuration (MODE/IDRIVE/VDS/GAIN) for the serial
// face 26 SDO, 27 SDI, 28 SCLK, 29 nSCS. Thermal pad labeled "Thermal Pad"
// in the figure, unnumbered, "must be connected to ground" per the table.
// VM operating range 6-60V. The H variant (26 MODE, 27 IDRIVE, 28 VDS,
// 29 GAIN) keys like GATEDRV.H6 up to regulator/gain details and is not
// folded here.

abstract component GATEDRV.H6S
{
    package = PKG.QFN40
    name = "Three-phase smart gate driver (SPI)"
    description = "SPI-configured three-phase gate driver shape: six complementary PWM control inputs adopting PWM.H6(RECEIVER), three half-bridge gate output trios (GHx/SHx/GLx), per-phase low-side shunt amplifier (SPx/SNx/SOx), full SPI(SLAVE) configuration port, VM/PGND bridge power with grounded pad, charge pump, internal 3.3V regulator"

    pins = [
        [28, 27, 26, 29] = SPI{SCLK, SDI, SDO, nSCS}::SPI(SLAVE), "Serial configuration and status port (SDO open-drain, external pullup)"

        in 34 = INHA, "Phase U high-side control input"
        in 35 = INLA, "Phase U low-side control input"
        in 36 = INHB, "Phase V high-side control input"
        in 37 = INLB, "Phase V low-side control input"
        in 38 = INHC, "Phase W high-side control input"
        in 39 = INLC, "Phase W low-side control input"
        [34, 35, 36, 37, 38, 39] = PWM{INHA, INLA, INHB, INLB, INHC, INLC}::PWM.H6(RECEIVER)

        out 6 = GHA, "Phase A high-side gate driver output"
        in 7 = SHA, "Phase A high-side source sense (switch node)"
        out 8 = GLA, "Phase A low-side gate driver output"
        out 15 = GHB, "Phase B high-side gate driver output"
        in 14 = SHB, "Phase B high-side source sense (switch node)"
        out 13 = GLB, "Phase B low-side gate driver output"
        out 16 = GHC, "Phase C high-side gate driver output"
        in 17 = SHC, "Phase C high-side source sense (switch node)"
        out 18 = GLC, "Phase C low-side gate driver output"

        in 9 = SPA, "Phase A shunt amplifier input, high side of the shunt"
        in 10 = SNA, "Phase A shunt amplifier input, low side of the shunt"
        out 23 = SOA, "Phase A shunt amplifier output"
        in 12 = SPB, "Phase B shunt amplifier input, high side of the shunt"
        in 11 = SNB, "Phase B shunt amplifier input, low side of the shunt"
        out 22 = SOB, "Phase B shunt amplifier output"
        in 19 = SPC, "Phase C shunt amplifier input, high side of the shunt"
        in 20 = SNC, "Phase C shunt amplifier input, low side of the shunt"
        out 21 = SOC, "Phase C shunt amplifier output"

        psnk [[4], [40, [pad]]] = [VM, PGND]::DC(12V)   // bridge power; thermal pad must be grounded (ZHCSG01C); family default 12V, 6-60V range
        in 5 = VDRAIN, "High-side MOSFET drain sense (common drain point)"
        out 3 = VCP, "Charge pump output"
        out 33 = DVDD, "Internal 3.3V regulator output (up to 30mA)"
        1 = CPL, "Charge pump switching node"
        2 = CPH, "Charge pump switching node"
        24 = VREF, "Shunt amplifier supply and reference"
        32 = AGND, "Analog ground"

        in 30 = ENABLE, "Gate driver enable (low = sleep; low pulse resets faults)"
        in 31 = CAL, "Amplifier calibration input (logic high shorts inputs for offset calibration)"
        out 25 = nFAULT, "Fault indicator output (open-drain, external pullup)"
    ]

    // Terminal macro: bind the bridge rail and wire the datasheet pin-table
    // recommendations (VM 0.1uF + >=10uF to PGND, VCP-VM 1uF/16V, CPH-CPL
    // 47nF/VM-rated, DVDD 1uF/6.3V and VREF 0.1uF/6.3V to AGND)
    func Power([VM_RAIL, GND]::DC(12V)) {
        VM_RAIL - CAP(100nF, ±20%, CAP.X5R, 100V) - GND
        VM_RAIL - CAP(10µF, ±20%, CAP.X5R, 100V) - GND
        VM_RAIL - VM
        GND - PGND
        GND - AGND
        VCP - CAP(1µF, ±20%, CAP.X5R, 16V) - VM
        CPH - CAP(47nF, ±20%, CAP.X7R, 100V) - CPL
        DVDD - CAP(1µF, ±20%, CAP.X5R, 6.3V) - AGND
        VREF - CAP(100nF, ±20%, CAP.X5R, 6.3V) - AGND
    }
}

// Three-phase gate driver with integrated buck regulator pin-shape family.
// Anatomy distilled from the page-verified DRV8302 DCA pinout (mcpub
// motor/drv8302, TI ZHCS138C p.3 package drawing; Pin Functions table p.3-5
// cross-checked pin-by-pin against the figure):
//   1 RT_CLK, 2 COMP, 3 VSENSE, 4 PWRGD, 5 nOCTW, 6 nFAULT, 7 DTC,
//   8 M_PWM, 9 M_OC, 10 GAIN, 11 OC_ADJ, 12 DC_CAL, 13 GVDD, 14 CP1,
//   15 CP2, 16 EN_GATE, 17 INH_A, 18 INL_A, 19 INH_B, 20 INL_B, 21 INH_C,
//   22 INL_C, 23 DVDD, 24 REF, 25 SO1, 26 SO2, 27 AVDD, 28 AGND,
//   29 PVDD1, 30 SP2, 31 SN2, 32 SP1, 33 SN1, 34 SL_C, 35 GL_C, 36 SH_C,
//   37 GH_C, 38 BST_C, 39 SL_B, 40 GL_B, 41 SH_B, 42 GH_B, 43 BST_B,
//   44 SL_A, 45 GL_A, 46 SH_A, 47 GH_A, 48 BST_A, 49 BIAS, 50 PH,
//   51 PH, 52 BST_BK, 53 PVDD2, 54 PVDD2, 55 EN_BUCK, 56 SS_TR;
//   the exposed PowerPAD is numbered 57 and labeled GND ("must be
//   electrically connected to ground plane" per the pin table).
// Distinguishing shapes versus GATEDRV.H6: an integrated buck regulator
// (its own PVDD2 supply domain with BST_BK/PH output), two shunt amplifiers
// (not three per-phase ones), bootstrap cap pins BST_A/B/C and the GVDD
// gate-drive regulator. PVDD range 8-60V. Table footnote quirk kept as
// printed: PWRGD lists I/O = I but the description says open-drain output --
// the face follows the description.

abstract component GATEDRV.H6B
{
    package = PKG.TSSOP56
    name = "Three-phase gate driver with buck regulator"
    description = "Three-phase gate driver shape with integrated buck regulator: six complementary PWM control inputs adopting PWM.H6(RECEIVER), three half-bridge gate trios (GHx/SHx/GLx) with bootstrap pins and low-side source sense (SLx), two shunt amplifiers, buck regulator with its own PVDD2 domain, gate-drive and analog regulators, resistor/logic-set configuration"

    pins = [
        in 17 = INH_A, "Phase A high-side control input"
        in 18 = INL_A, "Phase A low-side control input"
        in 19 = INH_B, "Phase B high-side control input"
        in 20 = INL_B, "Phase B low-side control input"
        in 21 = INH_C, "Phase C high-side control input"
        in 22 = INL_C, "Phase C low-side control input"
        [17, 18, 19, 20, 21, 22] = PWM{INH_A, INL_A, INH_B, INL_B, INH_C, INL_C}::PWM.H6(RECEIVER)

        out 47 = GH_A, "Phase A high-side gate driver output"
        in 46 = SH_A, "Phase A high-side source sense (switch node)"
        out 45 = GL_A, "Phase A low-side gate driver output"
        44 = SL_A, "Phase A low-side source sense (shunt to ground)"
        48 = BST_A, "Phase A bootstrap capacitor pin"
        out 42 = GH_B, "Phase B high-side gate driver output"
        in 41 = SH_B, "Phase B high-side source sense (switch node)"
        out 40 = GL_B, "Phase B low-side gate driver output"
        39 = SL_B, "Phase B low-side source sense (shunt to ground)"
        43 = BST_B, "Phase B bootstrap capacitor pin"
        out 37 = GH_C, "Phase C high-side gate driver output"
        in 36 = SH_C, "Phase C high-side source sense (switch node)"
        out 35 = GL_C, "Phase C low-side gate driver output"
        34 = SL_C, "Phase C low-side source sense (shunt to ground)"
        38 = BST_C, "Phase C bootstrap capacitor pin"

        in 32 = SP1, "Shunt amplifier 1 positive input"
        in 33 = SN1, "Shunt amplifier 1 negative input"
        out 25 = SO1, "Shunt amplifier 1 output"
        in 30 = SP2, "Shunt amplifier 2 positive input"
        in 31 = SN2, "Shunt amplifier 2 negative input"
        out 26 = SO2, "Shunt amplifier 2 output"

        psnk [[29], [28, [pad]]] = [PVDD1, GND]::DC(12V), "Gate driver supply 8-60V; AGND and the numbered PowerPAD (57, GND) ground it (ZHCS138C); family default 12V"
        psnk [[53, 54], [28]] = [PVDD2, GND]::DC(12V), "Buck regulator supply, separate domain from PVDD1"

        out 23 = DVDD, "Internal 3.3V regulator output"
        out 27 = AVDD, "Internal 6V analog regulator output"
        13 = GVDD, "Gate driver voltage regulator (bootstrap supply rail)"
        14 = CP1, "Charge pump capacitor pin"
        15 = CP2, "Charge pump capacitor pin"
        24 = REF, "Reference input for shunt amplifier output bias"

        // Buck regulator domain
        in 1 = RT_CLK, "Buck resistor timing / external clock"
        out 2 = COMP, "Buck error amplifier output"
        in 3 = VSENSE, "Buck output voltage sense"
        out 4 = PWRGD, "Buck power-good indicator (open-drain, external pullup; table I/O column prints I, description says output -- face follows the description)"
        52 = BST_BK, "Buck bootstrap capacitor pin"
        out 50 = PH, "Buck switch node (internal high-side MOSFET source)"
        out 51 = PH, "Buck switch node (internal high-side MOSFET source)"
        in 49 = BIAS, "Buck bias pin (1Mohm resistor or 0.1uF cap to GND)"
        in 55 = EN_BUCK, "Buck enable input"
        in 56 = SS_TR, "Buck soft-start and tracking"

        // Configuration and control
        in 8 = M_PWM, "PWM input mode (6-PWM or 3-PWM with internal complement)"
        in 9 = M_OC, "Overcurrent mode (cycle-by-cycle limit or shutdown)"
        10 = GAIN, "Shunt amplifier gain select (low = 10V/V, high = 40V/V)"
        in 11 = OC_ADJ, "Overcurrent trip set (voltage divider from DVDD)"
        in 12 = DC_CAL, "Shunt amplifier offset calibration (high shorts inputs)"
        in 7 = DTC, "Dead-time adjustment (external resistor to GND)"
        in 16 = EN_GATE, "Gate enable (low = sleep; low pulse resets faults)"
        out 5 = nOCTW, "Overcurrent/overtemperature warning (open-drain, external pullup)"
        out 6 = nFAULT, "Fault report (open-drain, external pullup)"
    ]

    // Terminal macro: bind the two supply domains and wire the datasheet
    // External Components table (CGVDD 2.2uF/16V, CCP 0.022uF PVDD1-rated,
    // CDVDD 1uF/6.3V, CAVDD 1uF/10V, CPVDD1 >=4.7uF, CBST_X 0.1uF/16V).
    // Buck compensation network (COMP/VSENSE), soft-start RC and DTC
    // resistor are application-level and stay on the design side.
    func Power([VM_RAIL, GNDP]::DC(12V)) {
        VM_RAIL - CAP(100nF, ±20%, CAP.X5R, 100V) - GNDP
        VM_RAIL - CAP(4.7µF, ±20%, CAP.X5R, 100V) - GNDP
        VM_RAIL - PVDD1
        VM_RAIL - PVDD2
        GNDP - AGND
        GNDP - GND
        GVDD - CAP(2.2µF, ±20%, CAP.X5R, 16V) - GNDP
        CP1 - CAP(22nF, ±20%, CAP.X7R, 100V) - CP2
        AVDD - CAP(1µF, ±20%, CAP.X5R, 10V) - AGND
        DVDD - CAP(1µF, ±20%, CAP.X5R, 6.3V) - AGND
        BST_A - CAP(100nF, ±20%, CAP.X7R, 16V) - SH_A
        BST_B - CAP(100nF, ±20%, CAP.X7R, 16V) - SH_B
        BST_C - CAP(100nF, ±20%, CAP.X7R, 16V) - SH_C
    }
}
