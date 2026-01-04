################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../autogen/sl_board_default_init.c \
../autogen/sl_device_init_clocks.c \
../autogen/sl_event_handler.c \
../autogen/sl_spidrv_init.c 

OBJS += \
./autogen/sl_board_default_init.o \
./autogen/sl_device_init_clocks.o \
./autogen/sl_event_handler.o \
./autogen/sl_spidrv_init.o 

C_DEPS += \
./autogen/sl_board_default_init.d \
./autogen/sl_device_init_clocks.d \
./autogen/sl_event_handler.d \
./autogen/sl_spidrv_init.d 


# Each subdirectory must supply rules for building sources it contributes
autogen/sl_board_default_init.o: ../autogen/sl_board_default_init.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32ZG28B312F1024IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_4_RF_BANDS=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_914=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_924=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2705A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/ABC_tft_lcd" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32ZG28/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/peripheral/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_board_default_init.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_device_init_clocks.o: ../autogen/sl_device_init_clocks.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32ZG28B312F1024IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_4_RF_BANDS=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_914=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_924=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2705A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/ABC_tft_lcd" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32ZG28/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/peripheral/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_device_init_clocks.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_event_handler.o: ../autogen/sl_event_handler.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32ZG28B312F1024IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_4_RF_BANDS=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_914=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_924=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2705A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/ABC_tft_lcd" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32ZG28/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/peripheral/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_event_handler.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_spidrv_init.o: ../autogen/sl_spidrv_init.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32ZG28B312F1024IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_4_RF_BANDS=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_914=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_924=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2705A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/ABC_tft_lcd" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32ZG28/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/peripheral/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_spidrv_init.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


