################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/cells.c \
../source/display.c \
../source/gol.c 

O_SRCS += \
../source/cells.o \
../source/display.o \
../source/gol.o 

OBJS += \
./source/cells.o \
./source/display.o \
./source/gol.o 

C_DEPS += \
./source/cells.d \
./source/display.d \
./source/gol.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/home/zain/Desktop/GITHUB_FILES/Game_of_Life/includes" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


