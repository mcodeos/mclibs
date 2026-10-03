# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

# Power pins bind the DC interface from the mcode base library
use $::mcode.ifs

# General Purpose Operational Amplifier
# Basic op-amp with power supply pins
component AMP(volt::UV.VOLT)
{
    pins = [
        1 = \+ | IN\+      # Non-inverting input
        2 = \- | IN\-      # Inverting input
        3 = VOUT          # Output
        [4,5] = DC{VCC,VEE}::DC(volt), ["Positive power supply", "Negative power supply (or ground)"]
    ]
}

# Instrumentation Amplifier
# High-precision amplifier with differential inputs and high common-mode rejection
component AMP.INSTRUMENTATION(gain::UV.DB, cmrr::UV.DB, bw::UV.HZ, volt::UV.VOLT)
{
    name = "Instrumentation Amplifier"
    spec = [
        gain = gain
        common_mode_rejection_ratio = cmrr
        bandwidth = bw
        voltage = volt
    ]
    
    pins = [
        1 = \+ | IN\+      # Non-inverting input
        2 = \- | IN\-      # Inverting input
        3 = REF @role(quiet)   # Reference voltage (analog reference pin)
        4 = VOUT           # Output
        [5,6] = DC{VCC,VEE}::DC(volt), ["Positive power supply", "Negative power supply (or ground)"]
    ]
    
    func Amplify(pos, neg, ref)
    {
        input1 - this.IN\+
        input2 - this.IN\-
        vref - this.REF
        return this.VOUT
    }
}

# Comparator
# Voltage comparator with open-drain or push-pull output
component AMP.COMPARATOR(hyst::UV.VOLT, tresp::UV.TIME, volt::UV.VOLT)
{
    name = "Comparator"
    spec = [
        hysteresis = hyst
        response_time = tresp
        voltage = volt
    ]
    
    pins = [
        1 = \+ | IN\+      # Non-inverting input
        2 = \- | IN\-      # Inverting input
        3 = VOUT          # Output
        [4,5] = DC{VCC,GND}::DC(volt), ["Positive power supply", "Ground"]
    ]
    
    func Compare(reference, input)
    {
        reference - this.IN\-
        input - this.IN\+
        return this.VOUT
    }
}

# Operational Transconductance Amplifier (OTA)
# Voltage-to-current converter
component AMP.OTA(gm::UV.SIEMENS, iout::UV.AMP, volt::UV.VOLT)
{
    name = "Operational Transconductance Amplifier"
    spec = [
        transconductance = gm
        maximum_output_current = iout
        voltage = volt
    ]
    
    pins = [
        1 = \+ | IN\+      # Non-inverting input
        2 = \- | IN\-      # Inverting input
        3 = OUT            # Output
        [4,5] = DC{VCC,VEE}::DC(volt), ["Positive power supply", "Negative power supply (or ground)"]
        6 = BIAS @role(quiet)  # Bias current control (analog bias pin)
    ]
    
    func VtoI(input, bias)
    {
        input - this.IN\+
        bias - this.BIAS
        return this.OUT
    }
}

# Buffer Amplifier
# Unity gain buffer with high input impedance
component AMP.BUFFER(zin::UV.OHM, iout::UV.AMP, volt::UV.VOLT)
{
    name = "Buffer Amplifier"
    spec = [
        input_impedance = zin
        maximum_output_current = iout
        voltage = volt
    ]
    
    pins = [
        1 = IN             # Input
        2 = OUT            # Output
        [3,4] = DC{VCC,VEE}::DC(volt), ["Positive power supply", "Negative power supply (or ground)"]
    ]
    
    func Buffer(input)
    {
        input - this.IN
        return this.OUT
    }
}

# Usage Examples:
# 1. Basic operational amplifier
# AMP(12V)

# 2. Instrumentation amplifier as differential amplifier
# AMP.INSTRUMENTATION(60dB, 120dB, 1MHz, 15V).Amplify(sensor_pos, sensor_neg, ground)

# 3. Comparator as voltage level detector
# AMP.COMPARATOR(50mV, 10ns, 5V).Compare(reference_voltage, input_voltage)

# 4. OTA as voltage-controlled current source
# AMP.OTA(1mS, 100mA, 12V).VtoI(control_voltage, bias_current)

# 5. Buffer amplifier for impedance matching
# AMP.BUFFER(1TΩ, 50mA, 9V).Buffer(high_impedance_input)

// ---------------------------------------------------------------------------------------------
// Audio power amplifier, BTL output (component inventory C7, electroacoustic family)
// ---------------------------------------------------------------------------------------------
// Abstract pin-shape base for real audio amp parts (U192 ruling 1b: package
// pin-shape families live here; real parts bind with `:` per the
// part-binding playbook). Pin rows are the verified device face.
abstract component AMP.AUDIO_BTL
{
    name = "Audio power amplifier, BTL output"
    description = "Differential analog input on the ADC.DIFF receiver side, BTL bridge-tied speaker output on the AMP.BTL transmitter side; enable and internal-bypass pins; 3.3V power pair (unregulated converter, no spec breakpoint)"

    pins = [
        1 = EN                                                      // enable (pulled up to VDD; mute line is active low)
        2 = BYPASS                                                  // internal reference bypass
        in [3, 4] = IN{P, N}::ADC.DIFF(RECEIVER) @class(analog)     // differential analog input (peer MIC face is TRANSMITTER)
        out [5, 8] = VO[1, 2]::AMP.BTL(TRANSMITTER) @class(analog)  // BTL output (inverting VO1 goes through the feedback summing point)
        psnk [6, 7] = [VDD, GND]::DC(3.3V)                          // power (non-regulating converter, no spec breakpoint)
    ]
}

// ---------------------------------------------------------------------------------------------
// Isolation amplifier, SOIC8 (component inventory C6, isolated secondary-side load)
// ---------------------------------------------------------------------------------------------
// Abstract pin-shape base for real isolation amplifier parts (U226 b3878:
// sedimented from a verified board-internal AMP.ISO_OP per the
// part-binding playbook). The power-sink row states no nominal (U227 b3877
// nominal-law ruling); the per-domain draw (amp:) is
// device truth and stays. The return GND_ISO is a separate return copper; the
// world the secondary side lives in is decided by the bound conduit role.
abstract component AMP.ISO_SOIC8
{
    name = "Isolation amplifier, SOIC8"
    description = "Isolated-side supply pair, differential analog input pair, differential analog output pair, one unbound pad"

    pins = [
        psnk [1,4] = [VDD, GND_ISO]::DC(amp:6mA)   // isolated-side power sink (return GND_ISO)
        io [2,3]  = [INP, INN] @pair(inp)          // differential analog input
        io [7,6]  = [OUTP, OUTN] @pair(outp)       // differential analog output
        nc 5 = NC
    ]
}
