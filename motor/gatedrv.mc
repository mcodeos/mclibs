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
