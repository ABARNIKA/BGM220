################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.c \
/home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.c 

OBJS += \
./gecko_sdk_4.4.6/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.o \
./gecko_sdk_4.4.6/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.o 

C_DEPS += \
./gecko_sdk_4.4.6/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.d \
./gecko_sdk_4.4.6/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.6/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.o: /home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.c gecko_sdk_4.4.6/platform/Device/SiliconLabs/EFR32ZG28/Source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32ZG28B312F1024IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_4_RF_BANDS=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_914=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_924=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2705A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/ABC_tft_lcd" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32ZG28/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/peripheral/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.6/platform/Device/SiliconLabs/EFR32ZG28/Source/startup_efr32zg28.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.6/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.o: /home/abarnika/SimplicityStudio/SDKs/gecko_sdk/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.c gecko_sdk_4.4.6/platform/Device/SiliconLabs/EFR32ZG28/Source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32ZG28B312F1024IM48=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_4_RF_BANDS=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_868=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_914=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_924=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2705A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/ABC_tft_lcd" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/Zg28_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32ZG28/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/peripheral/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.6/platform/Device/SiliconLabs/EFR32ZG28/Source/system_efr32zg28.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


