################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FATFS_Sources/diskio.c \
../FATFS_Sources/event.c \
../FATFS_Sources/ff.c \
../FATFS_Sources/fsl_sd_disk.c 

OBJS += \
./FATFS_Sources/diskio.o \
./FATFS_Sources/event.o \
./FATFS_Sources/ff.o \
./FATFS_Sources/fsl_sd_disk.o 

C_DEPS += \
./FATFS_Sources/diskio.d \
./FATFS_Sources/event.d \
./FATFS_Sources/ff.d \
./FATFS_Sources/fsl_sd_disk.d 


# Each subdirectory must supply rules for building sources it contributes
FATFS_Sources/%.o: ../FATFS_Sources/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


