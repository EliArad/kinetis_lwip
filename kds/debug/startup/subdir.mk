################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Topaz/SDK_2.0_FRDM-K64F/devices/MK64F12/system_MK64F12.c 

S_UPPER_SRCS += \
C:/Topaz/SDK_2.0_FRDM-K64F/devices/MK64F12/gcc/startup_MK64F12.S 

OBJS += \
./startup/startup_MK64F12.o \
./startup/system_MK64F12.o 

C_DEPS += \
./startup/system_MK64F12.d 

S_UPPER_DEPS += \
./startup/startup_MK64F12.d 


# Each subdirectory must supply rules for building sources it contributes
startup/startup_MK64F12.o: C:/Topaz/SDK_2.0_FRDM-K64F/devices/MK64F12/gcc/startup_MK64F12.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -x assembler-with-cpp -DDEBUG -D__STARTUP_CLEAR_BSS -I../.. -fno-common  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup/system_MK64F12.o: C:/Topaz/SDK_2.0_FRDM-K64F/devices/MK64F12/system_MK64F12.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


