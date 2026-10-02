# Copyright (c) 2026 MCode
#
# Licensed under the Apache License, Version 2.0.

# Filter components
component FILTER.LP(fcut::UV.HZ, ripple::UV.DB, atten::UV.DB)
{
    name = "Low Pass Filter"
    spec = [
        cutoff_frequency = fcut
        pass_band_ripple = ripple
        stop_band_attenuation = atten
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
    ]
}
component FILTER.HP(fcut::UV.HZ, ripple::UV.DB, atten::UV.DB)
{
    name = "High Pass Filter"
    spec = [
        cutoff_frequency = fcut
        pass_band_ripple = ripple
        stop_band_attenuation = atten
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
    ]
}
component FILTER.BP(flow::UV.HZ, fhigh::UV.HZ, ripple::UV.DB, atten::UV.DB)
{
    name = "Band Pass Filter"
    spec = [
        lower_cutoff = flow
        upper_cutoff = fhigh
        pass_band_ripple = ripple
        stop_band_attenuation = atten
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
    ]
}
component FILTER.BS(flow::UV.HZ, fhigh::UV.HZ, ripple::UV.DB, atten::UV.DB)
{
    name = "Band Stop Filter"
    spec = [
        lower_cutoff = flow
        upper_cutoff = fhigh
        pass_band_ripple = ripple
        stop_band_attenuation = atten
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
    ]
}
component FILTER.NOTCH(fcenter::UV.HZ, bw::UV.HZ, atten::UV.DB)
{
    name = "Notch Filter"
    spec = [
        center_frequency = fcenter
        bandwidth = bw
        stop_band_attenuation = atten
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
    ]
}
component FILTER.AP(phase::UV.ANGLE, frange::STRING)
{
    name = "All Pass Filter"
    spec = [
        phase_shift = phase
        frequency_range = frange
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
    ]
}
component FILTER.ACTIVE(flow::UV.HZ, fhigh::UV.HZ, gain::UV.DB, volt::UV.VOLT)
{
    name = "Active Filter"
    spec = [
        low_pass = flow
        high_pass = fhigh
        gain = gain
        supply_voltage = volt
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = VCC
        4 = GND @role(quiet)
    ]
}
component FILTER.SC(fcut::UV.HZ, fclk::UV.HZ, volt::UV.VOLT)
{
    name = "Switched Capacitor Filter"
    spec = [
        cutoff_frequency = fcut
        clock_frequency = fclk
        supply_voltage = volt
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = CLOCK
        4 = VCC
        5 = GND @role(quiet)
    ]
}