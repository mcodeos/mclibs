# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// UART-to-RS232 line driver/receiver pin-shape family (C3 gap: two-channel
// charge-pump RS232 transceiver; the DTE side's missing PHY).
// Anatomy distilled from the page-verified SOIC-16 pinout (package
// drawing; pin directions per the function list):
//   1 = C1+, 2 = V+, 3 = C1-, 4 = C2+, 5 = C2-, 6 = V-, 7 = DOUT2,
//   8 = RIN2, 9 = ROUT2, 10 = DIN2, 11 = DIN1, 12 = ROUT1, 13 = RIN1,
//   14 = DOUT1, 15 = GND, 16 = VCC
// The figure spells the flying-cap pins with +/- suffixes; identifiers take
// the P/N transliteration (C1P = C1+, VP = V+, ...). Logic side adopts
// UART.TTL(DCE) (the uart2rs485 precedent view); cable side adopts the
// RS232.3 DCE role -- toward the cable this PHY presents DCE.

abstract component XCVR.RS232
{
    name = "UART to RS232 transceiver"
    description = "Two-channel charge-pump RS232 transceiver shape: DIN/ROUT logic side adopting UART.TTL(DCE), RIN/DOUT cable side adopting UART.RS232.3(DCE), VCC/GND 3.3V supply pair, dual charge-pump capacitor pins"

    pins = [
        1 = C1P, "C1+: charge-pump flying capacitor 1 plus"
        out 2 = VP, "V+: positive charge-pump output"
        3 = C1N, "C1-: charge-pump flying capacitor 1 minus"
        4 = C2P, "C2+: charge-pump flying capacitor 2 plus"
        5 = C2N, "C2-: charge-pump flying capacitor 2 minus"
        out 6 = VM, "V-: negative charge-pump output"

        [12, 11] = UART{ROUT1, DIN1}::UART.TTL(DCE), ["Receiver logic output, channel 1 (to DTE RX)", "Driver logic input, channel 1 (from DTE TX)"]   // DCE view: member 1 TX drives the DTE's RX; bare rows merged into the adoption (4.10)

        [13, 14, 15] = RS232{RIN1, DOUT1, GND}::UART.RS232.3(DCE), ["Receiver RS232 input, channel 1", "Driver RS232 output, channel 1", "Cable return (rides the face row)"]   // cable side presents DCE; pin 15 GND rides the face row as the cable return

        out 9 = ROUT2, "Receiver logic output, channel 2 (to DTE RX)"
        in 10 = DIN2, "Driver logic input, channel 2 (from DTE TX)"
        in 8 = RIN2, "Receiver RS232 input, channel 2"
        out 7 = DOUT2, "Driver RS232 output, channel 2"

        psnk [16, 15] = [VCC, GND]::DC(3.3V)   // pin 15 GND rides both rows: cable return on the face, supply return on the crossing
    ]

    // Terminal macro: bind the 3.3V domain onto the supply pins and wire the
    // charge pump (four 0.1uF caps per the datasheet external-capacitor
    // values; V+ decouples to VCC, V- decouples to GND). The domain return
    // parameter is GNDD: the component pin 15 is itself spelled GND.
    func Power([VDD_3V3, GNDD]::DC(3.3V)) {
        VDD_3V3 - CAP(100nF, ±20%, CAP.X5R, 25V) - GNDD
        [VDD_3V3, GND] - [VCC, GNDD]  // supply pair, one bundle
        C1P - CAP(100nF, ±20%, CAP.X5R, 25V) - C1N
        C2P - CAP(100nF, ±20%, CAP.X5R, 25V) - C2N
        VP - CAP(100nF, ±20%, CAP.X5R, 25V) - VCC
        VM - CAP(100nF, ±20%, CAP.X5R, 25V) - GNDD
    }
}
