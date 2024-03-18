# ----------------------------------------------------------------------------
# stm32g0xx_hal_driver library makefile
# ----------------------------------------------------------------------------

MODULE := stm32g0xx_hal_driver

MODULE_PATH := $(call make_current_module_path)
# $(info MODULE_PATH is $(MODULE_PATH))

$(MODULE)_PATH := $(MODULE_PATH)
# $(info $(MODULE)_PATH is $($(MODULE)_PATH))

# ----------------------------------------------------------------------------
# Source file lists go here, C dependencies are automatically generated
# by the compiler using the -m option
#
# You can set up a common source path late in the file
#
# Note that each module gets its own, privately scoped variable for building
# ----------------------------------------------------------------------------

# We need both else a previous definition is used :-) Can we make this an include?

SRC_C :=
SRC_ASM :=

SRC_C += Src/stm32g0xx_hal.c
SRC_C += Src/stm32g0xx_hal_adc.c
SRC_C += Src/stm32g0xx_hal_adc_ex.c
SRC_C += Src/stm32g0xx_hal_cec.c
SRC_C += Src/stm32g0xx_hal_comp.c
SRC_C += Src/stm32g0xx_hal_cortex.c
SRC_C += Src/stm32g0xx_hal_crc.c
SRC_C += Src/stm32g0xx_hal_crc_ex.c
SRC_C += Src/stm32g0xx_hal_cryp.c
SRC_C += Src/stm32g0xx_hal_cryp_ex.c
SRC_C += Src/stm32g0xx_hal_dac.c
SRC_C += Src/stm32g0xx_hal_dac_ex.c
SRC_C += Src/stm32g0xx_hal_dma.c
SRC_C += Src/stm32g0xx_hal_dma_ex.c
SRC_C += Src/stm32g0xx_hal_exti.c
SRC_C += Src/stm32g0xx_hal_flash.c
SRC_C += Src/stm32g0xx_hal_flash_ex.c
SRC_C += Src/stm32g0xx_hal_gpio.c
SRC_C += Src/stm32g0xx_hal_hcd.c
SRC_C += Src/stm32g0xx_hal_i2c.c
SRC_C += Src/stm32g0xx_hal_i2c_ex.c
SRC_C += Src/stm32g0xx_hal_i2s.c
SRC_C += Src/stm32g0xx_hal_irda.c
SRC_C += Src/stm32g0xx_hal_iwdg.c
SRC_C += Src/stm32g0xx_hal_lptim.c
# SRC_C += Src/stm32g0xx_hal_msp_template.c
SRC_C += Src/stm32g0xx_hal_pcd.c
SRC_C += Src/stm32g0xx_hal_pcd_ex.c
SRC_C += Src/stm32g0xx_hal_pwr.c
SRC_C += Src/stm32g0xx_hal_pwr_ex.c
SRC_C += Src/stm32g0xx_hal_rcc.c
SRC_C += Src/stm32g0xx_hal_rcc_ex.c
SRC_C += Src/stm32g0xx_hal_rng.c
SRC_C += Src/stm32g0xx_hal_rtc.c
SRC_C += Src/stm32g0xx_hal_rtc_ex.c
SRC_C += Src/stm32g0xx_hal_smartcard.c
SRC_C += Src/stm32g0xx_hal_smartcard_ex.c
SRC_C += Src/stm32g0xx_hal_smbus.c
SRC_C += Src/stm32g0xx_hal_smbus_ex.c
SRC_C += Src/stm32g0xx_hal_spi.c
SRC_C += Src/stm32g0xx_hal_spi_ex.c
SRC_C += Src/stm32g0xx_hal_tim.c
# SRC_C += Src/stm32g0xx_hal_timebase_rtc_alarm_template.c
# SRC_C += Src/stm32g0xx_hal_timebase_rtc_wakeup_template.c
# SRC_C += Src/stm32g0xx_hal_timebase_tim_template.c
SRC_C += Src/stm32g0xx_hal_tim_ex.c
SRC_C += Src/stm32g0xx_hal_uart.c
SRC_C += Src/stm32g0xx_hal_uart_ex.c
SRC_C += Src/stm32g0xx_hal_usart.c
SRC_C += Src/stm32g0xx_hal_usart_ex.c
SRC_C += Src/stm32g0xx_hal_wwdg.c
SRC_C += Src/stm32g0xx_ll_adc.c
SRC_C += Src/stm32g0xx_ll_comp.c
SRC_C += Src/stm32g0xx_ll_crc.c
SRC_C += Src/stm32g0xx_ll_crs.c
SRC_C += Src/stm32g0xx_ll_dac.c
SRC_C += Src/stm32g0xx_ll_dma.c
SRC_C += Src/stm32g0xx_ll_exti.c
SRC_C += Src/stm32g0xx_ll_gpio.c
SRC_C += Src/stm32g0xx_ll_i2c.c
SRC_C += Src/stm32g0xx_ll_lptim.c
SRC_C += Src/stm32g0xx_ll_lpuart.c
SRC_C += Src/stm32g0xx_ll_pwr.c
SRC_C += Src/stm32g0xx_ll_rcc.c
SRC_C += Src/stm32g0xx_ll_rng.c
SRC_C += Src/stm32g0xx_ll_rtc.c
SRC_C += Src/stm32g0xx_ll_spi.c
SRC_C += Src/stm32g0xx_ll_tim.c
SRC_C += Src/stm32g0xx_ll_ucpd.c
SRC_C += Src/stm32g0xx_ll_usart.c
SRC_C += Src/stm32g0xx_ll_usb.c
SRC_C += Src/stm32g0xx_ll_utils.c

# ----------------------------------------------------------------------------
# Set up the module level source and include paths

$(MODULE)_SRCPATH :=
$(MODULE)_SRCPATH += $(MODULE_PATH)/Src

$(MODULE)_INCPATH :=
$(MODULE)_INCPATH += $(MODULE_PATH)/Inc
$(MODULE)_INCPATH += $(cmsis_core_PATH)/Include
$(MODULE)_INCPATH += $(cmsis_device_g0_PATH)/Include

# ----------------------------------------------------------------------------
# NOTE: The default HAL config file must be created somehow - it is normally
#       up to the developer to specify which HAL elements are needed and how
#       they are to be configured.
#
# By convention we place config files in product/$(PRODUCT)/$(MCU) because
# that's an easy pace to leave things like HAL config, linker scripts etc

$(MODULE)_INCPATH += product/$(PRODUCT)/config/$(MCU)
#
# ---------------------------- ------------------------------------------------
# Set any module level compile time defaults here

$(MODULE)_CDEFS :=
$(MODULE)_CDEFS +=

$(MODULE)_CFLAGS :=
$(MODULE)_CFLAGS +=

# ----------------------------------------------------------------------------
# Include the adaptabuild library makefile - must be done for each module!

include $(ADAPTABUILD_PATH)/make/library.mak

# ----------------------------------------------------------------------------
