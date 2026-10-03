# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

# Regulator components
component REG(vout::UV.VOLT, iout::UV.AMP, vin::UV.VOLT)
{
    name = "Regulator"
    spec = [
        output_voltage = vout
        output_current = iout
        input_voltage = vin
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
    ]
}
component REG.LINEAR(vout::UV.VOLT, iout::UV.AMP, vin::UV.VOLT, vdrop::UV.VOLT)
{
    name = "Linear Regulator"
    spec = [
        output_voltage = vout
        output_current = iout
        input_voltage = vin
        dropout_voltage = vdrop
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
    ]
}
component REG.SW(vout::UV.VOLT, iout::UV.AMP, vin::UV.VOLT, eff::UV.PERCENT)
{
    name = "Switching Regulator"
    spec = [
        output_voltage = vout
        output_current = iout
        input_voltage = vin
        efficiency = eff
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
        4 = SW
        5 = FB @role(quiet)
    ]
}
// LDO family shape. Reformed to the verified SOT-223 face (U195: the paired
// sample is AMS1117) - the old face had pins 1 and 3 swapped against every
// real SOT-223 LDO and lacked the heat tab; the tab ties to Vout, not GND.
component REG.LDO(vout::UV.VOLT, iout::UV.AMP, vin::UV.VOLT, vdrop::UV.VOLT)
{
    name = "Low Dropout Regulator"
    spec = [
        output_voltage = vout
        output_current = iout
        input_voltage = vin
        dropout_voltage = vdrop
    ]
    pins = [
        psnk [3,1] = [Vin, GND], "Unregulated input pair"
        psrc [2,1] = [Vout, GND], "Regulated output pair"
        tab = TAB, "SOT-223 heat tab, tied to Vout (NOT GND)"
    ]
}
component REG.REF(vout::UV.VOLT, iout::UV.AMP, acc::UV.PERCENT)
{
    name = "Voltage Reference"
    spec = [
        output_voltage = vout
        output_current = iout
        accuracy = acc
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT @role(quiet)
        3 = GND @role(quiet)
    ]
}
component REG.BUCK(vout::UV.VOLT, iout::UV.AMP, vin::UV.VOLT, fsw::UV.HZ)
{
    name = "Buck Regulator"
    spec = [
        output_voltage = vout
        output_current = iout
        input_voltage = vin
        switching_frequency = fsw
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
        4 = SW
        5 = FB @role(quiet)
    ]
}
component REG.BOOST(vout::UV.VOLT, iout::UV.AMP, vin::UV.VOLT, fsw::UV.HZ)
{
    name = "Boost Regulator"
    spec = [
        output_voltage = vout
        output_current = iout
        input_voltage = vin
        switching_frequency = fsw
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
        4 = SW
        5 = FB @role(quiet)
    ]
}
component REG.BUCK_BOOST(vout::UV.VOLT, iout::UV.AMP, vin::UV.VOLT, fsw::UV.HZ)
{
    name = "Buck-Boost Regulator"
    spec = [
        output_voltage = vout
        output_current = iout
        input_voltage = vin
        switching_frequency = fsw
    ]
    pins = [
        1 = INPUT
        2 = OUTPUT
        3 = GND @role(quiet)
        4 = SW
        5 = FB @role(quiet)
    ]
}