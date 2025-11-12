################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ABC_lcd_tft/GC9A01.c 

OBJS += \
./ABC_lcd_tft/GC9A01.o 

C_DEPS += \
./ABC_lcd_tft/GC9A01.d 


# Each subdirectory must supply rules for building sources it contributes
ABC_lcd_tft/GC9A01.o: ../ABC_lcd_tft/GC9A01.c ABC_lcd_tft/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DBGM220PC22HNA=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4314A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/config" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/ABC_lcd_tft" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd/autogen" -I"/home/abarnika/SimplicityStudio/v5_workspace/test_lcd" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/BGM22/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"/home/abarnika/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/spidrv/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"ABC_lcd_tft/GC9A01.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


