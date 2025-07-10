TARGET = driver
BUILD_DIR = build

AR = arm-none-eabi-ar
CC = arm-none-eabi-gcc

C_INCLUDES = \
	-Isrc \
	-Ilib/cmsis/device/stm32h7xx/include \
	-Ilib/cmsis/include \
	-Ilib/stm32h7xx-hal/include

C_SOURCES = \
	lib/stm32h7xx-hal/src/stm32h7xx_hal.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_adc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_adc_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_cec.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_comp.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_cortex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_crc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_crc_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_cryp.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_cryp_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_dac.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_dac_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_dcmi.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_dfsdm.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_dma.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_dma2d.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_dma_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_dsi.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_eth.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_eth_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_exti.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_fdcan.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_flash.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_flash_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_gpio.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_hash.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_hash_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_hcd.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_hrtim.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_hsem.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_i2c.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_i2c_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_i2s.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_i2s_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_irda.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_iwdg.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_jpeg.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_lptim.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_ltdc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_ltdc_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_mdios.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_mdma.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_mmc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_mmc_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_msp_template.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_nand.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_nor.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_opamp.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_opamp_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_pcd.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_pcd_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_pwr.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_pwr_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_qspi.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_ramecc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_rcc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_rcc_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_rng.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_rtc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_rtc_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_sai.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_sai_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_sd.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_sdram.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_sd_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_smartcard.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_smartcard_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_smbus.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_spdifrx.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_spi.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_spi_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_sram.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_swpmi.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_tim.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_timebase_rtc_alarm_template.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_timebase_rtc_wakeup_template.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_timebase_tim_template.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_tim_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_uart.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_uart_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_usart.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_usart_ex.c \
	lib/stm32h7xx-hal/src/stm32h7xx_hal_wwdg.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_adc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_bdma.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_comp.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_crc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_dac.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_delayblock.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_dma.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_dma2d.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_exti.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_fmc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_gpio.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_hrtim.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_i2c.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_lptim.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_lpuart.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_mdma.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_opamp.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_pwr.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_rcc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_rng.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_rtc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_sdmmc.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_spi.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_swpmi.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_tim.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_usart.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_usb.c \
	lib/stm32h7xx-hal/src/stm32h7xx_ll_utils.c

C_DEFINES = \
	-DCORE_CM7 \
	-DSTM32H750xx \
	-DSTM32H750IB \
	-DARM_MATH_CM7 \
	-Dflash_layout \
	-DHSE_VALUE=16000000 \
	-DUSE_HAL_DRIVER \
	-DUSE_FULL_LL_DRIVER \
	-DDATA_IN_D2_SRAM

MCU = -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -mcpu=cortex-m7

C_FLAGS = $(MCU) $(C_INCLUDES) $(C_DEFINES) -std=gnu11 -O2 -Wall

OBJECTS = $(addprefix $(BUILD_DIR)/,$(C_SOURCES:.c=.o))
vpath %.c $(sort $(dir $(C_SOURCES)))

all: $(BUILD_DIR)/$(TARGET).a

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR)
	mkdir -p $(@D)
	$(CC) $(C_FLAGS) -c $< -o $@ -MD -MP -MF $(BUILD_DIR)/$(notdir $(<:.c=.dep))

$(BUILD_DIR)/$(TARGET).a: $(OBJECTS) Makefile
	$(AR) -r $@ $(OBJECTS)

$(BUILD_DIR):
	mkdir $@

clean:
	rm -rf $(BUILD_DIR)
