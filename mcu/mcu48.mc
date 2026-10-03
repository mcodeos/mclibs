# Copyright (c) 2026 MCode. Built with MCode Bench(TM).
# Licensed under the Apache License, Version 2.0.

// LQFP48 motor-control MCU pin-shape family (component inventory C1: the
// B6/B-face transmitter sides -- PWM.H6(TRANSMITTER), STEPDIR(TRANSMITTER),
// single-lane PWM(TRANSMITTER) -- land their named source).
// Distilled from the page-verified STM32F103C8T6 LQFP48 pinout (ST
// DocID13587 Rev 17: Table 5 pin definitions pp.28-33, cross-checked pin by
// pin against the Figure 8 LQFP48 pinout drawing p.26 -- 48/48 agree; real
// part mcpub mcu/stm32f103c8t6).
//
// Timer faces adopted (the shape is a motor-control MCU, so the motion
// timers claim their pins):
//   TIM1 (advanced): CH1-CH3 on PA8-PA10 (29/30/31), complementary CH1N-CH3N
//     on PB13-PB15 (26/27/28) -> the six PWM.H6 lanes, phase-major high
//     side first. CH4 on PA11 (32) stays a single-lane PWM transmitter.
//   TIM3: CH1/CH2 on PA6/PA7 (16/17) -> STEPDIR (STEP = pulse train, DIR =
//     level). TIM2/TIM4 keep their channels on GPIO-mapped rows (listed in
//     each pin description) so a board can bind its own STEPDIR instance.
//   TIM1_BKIN default pin PA6 is co-claimed by the TIM3 face here; the
//     remap row PB12 (25) carries BKIN and stays GPIO.
//
// Power (Figure 14 power-supply scheme, datasheet p.36): one digital bank
// 100nF per VDD + 4.7uF bulk (caution: the 4.7uF must sit on VDD3), analog
// VDDA 10nF + 1uF; the figure aggregates 5x100nF for the full 100-pin set,
// this package carries three VDD/VSS pairs.

abstract component MCU.LQFP48
{
    name = "LQFP48 motor-control MCU"
    description = "48-pin MCU shape: advanced timer adopting PWM.H6(TRANSMITTER) plus single-lane CH4, general-purpose timer adopting STEPDIR(TRANSMITTER), one digital power domain over three VDD/VSS pairs, one analog domain, remaining GPIO/OSC/debug/BOOT pins unbound with alternate functions in descriptions"

    pins = [
        psnk [[24, 36, 48], [23, 35, 47]] = [VDD, VSS]::DC(amp:50mA), "Digital power over three VDD/VSS pairs; Run-mode max 50.3mA at 72MHz all peripherals on (DocID13587 Table 13); decoupling 100nF per VDD + 4.7uF bulk on VDD3 (Figure 14)"
        psnk [9, 8] = [VDDA, VSSA]::DC(amp:0.8mA), "Analog power (VDDA 2.4-3.6V with ADC in use, same potential as VDD, max 300mV VDD-VDDA delta, Table 9/note 2); 0.8mA per ADC while ADON (Table 17 note 2); decoupling 10nF + 1uF (Figure 14)"

        [29, 26, 30, 27, 31, 28] = TIM1{UH, UL, VH, VL, WH, WL}::PWM.H6(TRANSMITTER), "Advanced timer complementary pair set: CH1-CH3 on PA8-PA10, CH1N-CH3N on PB13-PB15"
        out 32 = TIM1CH4::PWM(TRANSMITTER), "TIM1_CH4 on PA11"
        [16, 17] = TIM3{STEP, DIR}::STEPDIR(TRANSMITTER), "TIM3_CH1/CH2 on PA6/PA7"

        in 1 = VBAT, "Backup battery input 1.8-3.6V (Table 9); tie to VDD with a 100nF ceramic when no battery is fitted (RM0008)"
        in 44 = BOOT0, "Boot mode input (BOOT1 is PB2, pin 20)"
        io 7 = RST{NRST}::RST(RECEIVER), "Bidirectional reset"

        io 5 = OSC_IN, "Main oscillator input (remap PD0; the Figure 8 drawing prints PD0-OSC_IN)"
        io 6 = OSC_OUT, "Main oscillator output (remap PD1)"
        io 3 = PC14, "GPIO / OSC32_IN (backup domain: output limited to 2MHz / 30pF / 3mA sink, Table 5 note 5)"
        io 4 = PC15, "GPIO / OSC32_OUT (backup-domain limits as PC14)"
        io 2 = PC13, "GPIO / TAMPER-RTC (backup-domain limits as PC14)"

        io 10 = PA0, "GPIO / TIM2_CH1_ETR / WKUP / ADC12_IN0 / USART2_CTS"
        io 11 = PA1, "GPIO / TIM2_CH2 / ADC12_IN1 / USART2_RTS"
        io 12 = PA2, "GPIO / TIM2_CH3 / ADC12_IN2 / USART2_TX"
        io 13 = PA3, "GPIO / TIM2_CH4 / ADC12_IN3 / USART2_RX"
        io 14 = PA4, "GPIO / SPI1_NSS / USART2_CK / ADC12_IN4"
        io 15 = PA5, "GPIO / SPI1_SCK / ADC12_IN5"
        io 18 = PB0, "GPIO / ADC12_IN8 / TIM3_CH3 / TIM1_CH2N (default AF)"
        io 19 = PB1, "GPIO / ADC12_IN9 / TIM3_CH4 / TIM1_CH3N (default AF)"
        io 20 = PB2, "GPIO / BOOT1"
        io 21 = PB10, "GPIO / I2C2_SCL / USART3_TX / TIM2_CH3 (remap)"
        io 22 = PB11, "GPIO / I2C2_SDA / USART3_RX / TIM2_CH4 (remap)"
        io 25 = PB12, "GPIO / SPI2_NSS / USART3_CK / TIM1_BKIN (remap)"
        io 33 = PA12, "GPIO / USART1_RTS / CANTX / USBDP"
        io 34 = PA13, "GPIO / JTMS-SWDIO"
        io 37 = PA14, "GPIO / JTCK-SWCLK"
        io 38 = PA15, "GPIO / JTDI / TIM2_CH1_ETR (remap) / SPI1_NSS"
        io 39 = PB3, "GPIO / JTDO / TIM2_CH2 (remap) / TRACESWO"
        io 40 = PB4, "GPIO / JNTRST / TIM3_CH1 (remap) / SPI1_MISO"
        io 41 = PB5, "GPIO / I2C1_SMBA / TIM3_CH2 (remap) / SPI1_MOSI"
        io 42 = PB6, "GPIO / I2C1_SCL / TIM4_CH1"
        io 43 = PB7, "GPIO / I2C1_SDA / TIM4_CH2"
        io 45 = PB8, "GPIO / I2C1_SCL / TIM4_CH3"
        io 46 = PB9, "GPIO / I2C1_SDA / TIM4_CH4"
    ]

    // Terminal macro: bind the digital and analog domains, dropping the
    // Figure 14 decoupling at each continuation (100nF + 4.7uF digital,
    // 10nF + 1uF analog). GNDP because no pin here is named GND, but the
    // two return groups are distinct nets (digital VSS, analog VSSA).
    func Power([VDD_3V3, GNDP]::DC(3.3V), [VDDA_3V3, GNDA]::DC(3.3V)) {
        VDD_3V3 - CAP(100nF) - GNDP
        VDD_3V3 - CAP(4.7µF) - GNDP
        VDD_3V3 - VDD
        GNDP - VSS

        VDDA_3V3 - CAP(10nF) - GNDA
        VDDA_3V3 - CAP(1µF) - GNDA
        VDDA_3V3 - VDDA
        GNDA - VSSA
    }
}
