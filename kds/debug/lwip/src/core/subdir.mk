################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/def.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/dhcp.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/dns.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/init.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/lwip_timers.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/mem.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/memp.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/netif.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/pbuf.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/raw.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/stats.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/sys.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/tcp.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/tcp_in.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/tcp_out.c \
C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/udp.c 

OBJS += \
./lwip/src/core/def.o \
./lwip/src/core/dhcp.o \
./lwip/src/core/dns.o \
./lwip/src/core/init.o \
./lwip/src/core/lwip_timers.o \
./lwip/src/core/mem.o \
./lwip/src/core/memp.o \
./lwip/src/core/netif.o \
./lwip/src/core/pbuf.o \
./lwip/src/core/raw.o \
./lwip/src/core/stats.o \
./lwip/src/core/sys.o \
./lwip/src/core/tcp.o \
./lwip/src/core/tcp_in.o \
./lwip/src/core/tcp_out.o \
./lwip/src/core/udp.o 

C_DEPS += \
./lwip/src/core/def.d \
./lwip/src/core/dhcp.d \
./lwip/src/core/dns.d \
./lwip/src/core/init.d \
./lwip/src/core/lwip_timers.d \
./lwip/src/core/mem.d \
./lwip/src/core/memp.d \
./lwip/src/core/netif.d \
./lwip/src/core/pbuf.d \
./lwip/src/core/raw.d \
./lwip/src/core/stats.d \
./lwip/src/core/sys.d \
./lwip/src/core/tcp.d \
./lwip/src/core/tcp_in.d \
./lwip/src/core/tcp_out.d \
./lwip/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/core/def.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/def.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/dhcp.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/dhcp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/dns.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/dns.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/init.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/init.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/lwip_timers.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/lwip_timers.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/mem.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/mem.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/memp.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/memp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/netif.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/netif.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/pbuf.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/pbuf.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/raw.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/raw.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/stats.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/stats.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/sys.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/sys.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/tcp.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/tcp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/tcp_in.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/tcp_in.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/tcp_out.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/tcp_out.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

lwip/src/core/udp.o: C:/Topaz/SDK_2.0_FRDM-K64F/middleware/lwip_1.4.1/src/core/udp.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g -DDEBUG -DCPU_MK64FN1M0VMD12 -DFRDM_K64F -DFREEDOM -DUSE_RTOS=1 -DFSL_RTOS_FREE_RTOS -I../../../../../../CMSIS/Include -I../../../../../../devices -I../../../../../../devices/MK64F12/drivers -I../../../../../../middleware/fatfs_0.11a/src -I../../../../../../middleware/fatfs_0.11a/src/fsl_sd_disk -I../.. -I../../../../../../devices/MK64F12/utilities -I../../../../../../middleware/sdmmc_2.0.0/inc -I../../../../../../middleware/sdmmc_2.0.0/src -I../../../.. -I../../../../../../devices/MK64F12 -I../../../../../../../../rtos/freertos_8.2.3/Source/portable/GCC/ARM_CM4F -I../../../../../../../../rtos/freertos_8.2.3/Source/include -I../ -I../../../../../../../../CMSIS/Include -I../../../../../../../../devices -I../../../../../../../../devices/MK64F12/drivers -I../../../../../../../../devices/MK64F12/utilities -I../../../../../../../../middleware/lwip_1.4.1 -I../../../../../../../../middleware/lwip_1.4.1/port -I../../../../../../../../middleware/lwip_1.4.1/port/arch -I../../../../../../../../middleware/lwip_1.4.1/src -I../../../../../../../../middleware/lwip_1.4.1/src/include -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv4/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6 -I../../../../../../../../middleware/lwip_1.4.1/src/include/ipv6/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/lwip -I../../../../../../../../middleware/lwip_1.4.1/src/include/netif -I../../../../../../../../middleware/lwip_1.4.1/src/include/posix -I../../../../../../../../rtos/freertos_8.2.3/Source -I../../../../../.. -I../../../../../../../../devices/MK64F12 -std=gnu99 -fno-common  -ffreestanding  -fno-builtin  -mapcs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

