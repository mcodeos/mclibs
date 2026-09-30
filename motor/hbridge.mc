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

// Brushed-DC H-bridge driver pin-shape families (C8 gap: the single-lane
// PWM face's named consumer -- "motor driver input" per the PWM RECEIVER
// role -- finally lands). Two families, one per control-face shape:
//
// HBRIDGE.DUAL -- distilled from the page-verified DRV8833C PWP pinout
// (mcpub motor/drv8833c, TI SLVSCP9 p.3 package drawing; Pin Functions
// table cross-checked against the figure):
//   1 nSLEEP, 2 AOUT1, 3 AISEN, 4 AOUT2, 5 BOUT2, 6 BISEN, 7 BOUT1,
//   8 nFAULT, 9 BIN1, 10 BIN2, 11 NC, 12 VM, 13 GND, 14 VINT, 15 AIN2,
//   16 AIN1; PowerPAD (unnumbered) = GND per the GND row description.
//   The RTE (VQFN) variant keys differently -- a separate face, not folded.
//
// HBRIDGE.SINGLE -- distilled from the page-verified A4950 LJ pinout
// (mcpub motor/a4950, Allegro A4950-DS rev.2 p.2 terminal list + pin-out
// diagram): 1 GND, 2 IN2, 3 IN1, 4 VREF, 5 VBB, 6 OUT1, 7 LSS, 8 OUT2,
// PAD (unnumbered) for thermal dissipation only -- the datasheet claims
// no net for it, so the face carries it as its own unnumbered pin.
//
// HBRIDGE.DUAL.E -- distilled from the page-verified L298 Multiwatt15
// pinout (mcpub motor/l298, ST L298 p.2 PIN CONNECTIONS drawing; Pin
// Functions table p.3 cross-checked pin-by-pin): 1 Sense A, 2 Out 1,
// 3 Out 2, 4 Vs, 5 Input 1, 6 Enable A, 7 Input 2, 8 GND, 9 Vss,
// 10 Input 3, 11 Enable B, 12 Input 4, 13 Out 3, 14 Out 4, 15 Sense B;
// the metal tab is connected to pin 8 (GND). The classic 1990s shape:
// per-bridge enable pins (no sleep/fault/regulator generation), dual
// supply (Vs power 2.5-46V, Vss logic 5V), per-bridge sense pins.
//
// Each PWM input adopts its own single-lane PWM(RECEIVER) crossing (the
// two inputs of one bridge are independent control signals, not a pair).

abstract component HBRIDGE.DUAL
{
    name = "Dual H-bridge motor driver"
    description = "Dual brushed-DC H-bridge driver shape (HTSSOP-16 with PowerPAD): four PWM inputs each adopting PWM(RECEIVER), two bridge output pairs with per-bridge sense, sleep and open-drain fault pins, internal 3.3V regulator, VM/GND bridge power with grounded PowerPAD"

    pins = [
        in 16 = AIN1::PWM(RECEIVER), "H-bridge A PWM input 1 (internal pulldown)"
        in 15 = AIN2::PWM(RECEIVER), "H-bridge A PWM input 2 (internal pulldown)"
        in 9 = BIN1::PWM(RECEIVER), "H-bridge B PWM input 1 (internal pulldown)"
        in 10 = BIN2::PWM(RECEIVER), "H-bridge B PWM input 2 (internal pulldown)"

        out 2 = AOUT1, "Bridge A output (positive current AOUT1 to AOUT2)"
        out 4 = AOUT2, "Bridge A output"
        out 3 = AISEN, "Bridge A sense (sense resistor to GND sets current regulation)"
        out 7 = BOUT1, "Bridge B output (positive current BOUT1 to BOUT2)"
        out 5 = BOUT2, "Bridge B output"
        out 6 = BISEN, "Bridge B sense (sense resistor to GND sets current regulation)"

        in 1 = _SLEEP, "Sleep mode input (datasheet nSLEEP; high = enabled, internal pulldown)"
        out 8 = _FAULT, "Fault indication (datasheet nFAULT; open-drain, external pullup)"

        psnk [[12], [13, [pad]]] = [VM, GND]::DC(5V)   // bridge power; GND pin and PowerPAD both ground (SLVSCP9 GND row); family default 5V, DRV8833C operating range 2.7-11.8V
        out 14 = VINT, "Internal 3.3V regulator (bypass 2.2uF to GND)"
        11 = NC, "No connect (per PWP drawing)"
    ]

    // Terminal macro: bind the motor rail and wire the external network the
    // datasheet mandates (CVM 10uF VM-rated, CVINT 2.2uF/6.3V); the return
    // param is GNDP because pin 13 already claims the name GND
    func Power([VM_RAIL, GNDP]::DC(5V)) {
        VM_RAIL - CAP(10µF, ±20%, CAP.X5R, 16V) - GNDP
        VINT - CAP(2.2µF, ±20%, CAP.X5R, 6.3V) - GNDP
        VM_RAIL - VM
        GNDP - GND
    }
}

abstract component HBRIDGE.SINGLE
{
    name = "Full-bridge motor driver"
    description = "Single brushed-DC full-bridge driver shape (SOICN-8 with exposed pad): two PWM inputs each adopting PWM(RECEIVER), one output pair, VREF current-limit reference, LSS power return for the sense resistor, VBB/GND load power"

    pins = [
        in 3 = IN1::PWM(RECEIVER), "Logic input 1"
        in 2 = IN2::PWM(RECEIVER), "Logic input 2"

        out 6 = OUT1, "DMOS full bridge output 1"
        out 8 = OUT2, "DMOS full bridge output 2"
        7 = LSS, "Power return - sense resistor connection"
        in 4 = VREF, "Analog input (current-limit reference)"

        psnk [5, 1] = [VBB, GND]::DC(12V)   // load supply; family default 12V, per-project rail
        [pad] = PAD, "Exposed pad for enhanced thermal dissipation (datasheet claims no net)"
    ]

    // Terminal macro: bind the load supply onto VBB/GND; the return param is
    // GNDP because pin 1 already claims the name GND. Datasheet BOM: C2 100uF
    // electrolytic in parallel with C1 0.22uF ceramic (50V or greater)
    func Power([VBB_RAIL, GNDP]::DC(12V)) {
        VBB_RAIL - CAP(100µF, ±20%, CAP.WET_ALUMINUM, 50V) - GNDP
        VBB_RAIL - CAP(220nF, ±20%, CAP.X5R, 50V) - GNDP
        VBB_RAIL - VBB
        GNDP - GND
    }
}

abstract component HBRIDGE.DUAL.E
{
    name = "Dual full-bridge driver (per-bridge enable)"
    description = "Classic dual full-bridge driver shape (Multiwatt15, tab = GND): four TTL PWM inputs each adopting PWM(RECEIVER), per-bridge enable pins, two bridge output pairs with per-bridge sense pins, dual supply (Vs power, Vss logic) with shared ground"

    pins = [
        in 5 = IN1::PWM(RECEIVER), "Bridge A input 1 (TTL compatible)"
        in 7 = IN2::PWM(RECEIVER), "Bridge A input 2 (TTL compatible)"
        in 10 = IN3::PWM(RECEIVER), "Bridge B input 1 (TTL compatible)"
        in 12 = IN4::PWM(RECEIVER), "Bridge B input 2 (TTL compatible)"

        in 6 = ENA, "Bridge A enable (low disables bridge A)"
        in 11 = ENB, "Bridge B enable (low disables bridge B)"

        out 2 = OUT1, "Bridge A output"
        out 3 = OUT2, "Bridge A output (load current monitored at Sense A)"
        out 13 = OUT3, "Bridge B output"
        out 14 = OUT4, "Bridge B output (load current monitored at Sense B)"
        1 = SENSEA, "Bridge A sense (sense resistor between this pin and GND)"
        15 = SENSEB, "Bridge B sense (sense resistor between this pin and GND)"

        psnk [[4], [8]] = [VS, GND]::DC(24V), "Power output stage supply 2.5-46V (tab = pin 8 GND, so no separate pad pin); family default 24V, per-project rail"
        psnk [9, 8] = [VSS, GND]::DC(5V), "Logic supply (100nF bypass per ST datasheet)"
    ]

    // Terminal macro: bind the power rail and wire the datasheet bypassers
    // (100nF non-inductive on Vs, 100nF on Vss). Sense resistor sizing is
    // application-level and stays on the design side.
    func Power([VS_RAIL, GNDP]::DC(24V)) {
        VS_RAIL - CAP(100nF, ±20%, CAP.X7R, 50V) - GNDP
        VSS - CAP(100nF, ±20%, CAP.X7R, 10V) - GNDP
        VS_RAIL - VS
        GNDP - GND
    }
}
