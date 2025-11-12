################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/service/sleeptimer/src/sl_sleeptimer.c \
/home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c \
/home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c \
/home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c \
/home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c 

OBJS += \
./gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer.o \
./gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o \
./gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o \
./gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o \
./gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o 

C_DEPS += \
./gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer.d \
./gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d \
./gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d \
./gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d \
./gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer.o: /home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/service/sleeptimer/src/sl_sleeptimer.c gecko_sdk_4.4.6/platform/service/sleeptimer/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/ABC_lcd_tft" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: /home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c gecko_sdk_4.4.6/platform/service/sleeptimer/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/ABC_lcd_tft" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o: /home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c gecko_sdk_4.4.6/platform/service/sleeptimer/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/ABC_lcd_tft" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: /home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c gecko_sdk_4.4.6/platform/service/sleeptimer/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/ABC_lcd_tft" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o: /home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c gecko_sdk_4.4.6/platform/service/sleeptimer/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/ABC_lcd_tft" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.6/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


