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

// Stepper driver pin-shape family (C8 gap: stepper subfamily). Distilled
// from the page-verified DRV8889 PWP pinout (mcpub motor/drv8889, TI
// ZHCSJO5 p.3 package drawing; Pin Functions table cross-checked against
// the figure pin-by-pin):
//   1 CPL, 2 CPH, 3 VCP, 4 VM, 5 PGND, 6 AOUT1, 7 AOUT2, 8 BOUT2, 9 BOUT1,
//   10 PGND, 11 VM, 12 GND, 13 DVDD, 14 nFAULT, 15 VREF, 16 nSCS, 17 VSDO,
//   18 SDO, 19 SDI, 20 SCLK, 21 STEP, 22 DIR, 23 DRVOFF, 24 nSLEEP;
//   thermal pad (unnumbered) = system ground per the Pin Functions PAD row.
//   The RGE (VQFN) variant keys differently -- a separate face, not folded.
//
// STEP/DIR adopts the two-lane STEPDIR(RECEIVER) face (the new interface's
// first named consumer); the serial configuration port adopts the full
// four-member SPI(SLAVE) face (SCLK/SDI/SDO/nSCS). The two winding outputs
// stay plain pins -- the stepper motor is the consuming device across them.

abstract component STEPDRV
{
    name = "Stepper driver"
    description = "Stepper driver shape (HTSSOP-24 with PowerPAD): STEP/DIR indexer control adopting STEPDIR(RECEIVER), full SPI(SLAVE) configuration port, dual winding output pairs, charge pump, internal logic regulator, VM motor supply with PGND/GND/PowerPAD all to system ground"

    pins = [
        [21, 22] = STEPDIR{STEP, DIR}::STEPDIR(RECEIVER), "Indexer control: step pulse train + direction level (internal pulldowns)"
        [20, 19, 18, 16] = SPI{SCLK, SDI, SDO, nSCS}::SPI(SLAVE), "Serial configuration and status port (internal pullup on nSCS)"

        out 6 = AOUT1, "Winding A output"
        out 7 = AOUT2, "Winding A output"
        out 9 = BOUT1, "Winding B output"
        out 8 = BOUT2, "Winding B output"

        in 17 = VSDO, "SDO output logic supply (tie 3.3V or 5V for the desired level)"
        in 23 = DRVOFF, "Output disable (high = outputs off, internal pullup to DVDD)"
        in 24 = _SLEEP, "Sleep mode input (datasheet nSLEEP; high = enabled, internal pulldown)"
        out 14 = _FAULT, "Fault indication (datasheet nFAULT; open-drain, external pullup)"
        in 15 = VREF, "Current set reference input (max 3.3V)"

        out 13 = DVDD, "Internal logic supply regulator (bypass 0.47uF to GND)"
        out 3 = VCP, "Charge pump output (bypass 0.22uF to VM)"
        2 = CPH, "Charge pump switching node (0.022uF VM-rated to CPL)"
        1 = CPL, "Charge pump switching node"

        psnk [[4, 11], [5, 10, 12, [pad]]] = [VM, GND]::DC(24V), "Motor supply 4.5-45V; PGND, GND and PowerPAD all to system ground (ZHCSJO5 PAD row); family default 24V"
    ]

    // Terminal macro: bind the motor rail and wire the datasheet External
    // Components table. The bulk VM-rated capacitor (CVM2) has no fixed value
    // in ZHCSJO5 (system-level choice, section 9.1) so it stays on the design
    // side; the macro wires the two 0.01uF pin bypassers, the charge pump
    // parts and the DVDD bypasser.
    func Power([VM_RAIL, GNDP]::DC(24V)) {
        VM_RAIL - CAP(10nF, ±20%, CAP.X7R, 100V) - GNDP
        VM_RAIL - CAP(10nF, ±20%, CAP.X7R, 100V) - GNDP
        VCP - CAP(220nF, ±20%, CAP.X7R, 16V) - VM_RAIL
        CPH - CAP(22nF, ±20%, CAP.X7R, 100V) - CPL
        DVDD - CAP(470nF, ±20%, CAP.X7R, 6.3V) - GNDP
        VM_RAIL - VM
        GNDP - GND
    }
}
