#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/softap-wifi-provisioning.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/softap-wifi-provisioning.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/iot_softap_wifi_provisioning.c ../src/main.c ../../../lib/afr/freertos_kernel/list.c ../../../lib/afr/freertos_kernel/stream_buffer.c ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/__STD_LIB_sbrk.c ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/port.c ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/__STD_LIB_sbrk.c ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/port.c ../../../lib/afr/freertos_kernel/portable/IAR/MSP430X/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port_asm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_init.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_heap.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/portASM.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port_asm.s ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port_asm.s ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM7S64/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM9XE/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AVR_AVRDx/port.c ../../../lib/afr/freertos_kernel/portable/IAR/STR91x/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/port.c ../../../lib/afr/freertos_kernel/portable/IAR/STR71x/port.c ../../../lib/afr/freertos_kernel/portable/IAR/STR75x/port.c ../../../lib/afr/freertos_kernel/portable/IAR/78K0R/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port_asm.s ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ATMega323/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/portASM.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/portASM.s ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/read.c ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/write.c ../../../lib/afr/freertos_kernel/portable/IAR/MSP430/port.c ../../../lib/afr/freertos_kernel/portable/IAR/V850ES/port.c ../../../lib/afr/freertos_kernel/portable/IAR/LPC2000/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/portASM.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RX700v3_DPFPU/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RL78/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AVR_Mega0/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port_asm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_init.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_heap.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/MikroC/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/SDCC/Cygnal/port.c ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port_exceptions.c ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/portISR.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/portasm.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_init.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_heap.c ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port_exceptions.c ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RX100/port.c ../../../lib/afr/freertos_kernel/portable/GCC/AVR_AVRDx/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM0/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM7/r0p1/port.c ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/portISR.c ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/port.c ../../../lib/afr/freertos_kernel/portable/GCC/HCS12/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/port.c ../../../lib/afr/freertos_kernel/portable/GCC/MCF5235/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/portISR.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RX200/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RX600/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/portISR.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/port.c ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/port.c ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port_asm.S ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ATMega323/port.c ../../../lib/afr/freertos_kernel/portable/GCC/H8S2329/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/portasm.c ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/port.c ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/exception.S ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/port.c ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/porttrap.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c ../../../lib/afr/freertos_kernel/portable/GCC/RX600v2/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RX700v3_DPFPU/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3/port.c ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/portasm.s ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/port.c ../../../lib/afr/freertos_kernel/portable/GCC/CORTUS_APS3/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/portISR.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RL78/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/RL78/port.c ../../../lib/afr/freertos_kernel/portable/GCC/MSP430F449/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3_MPU/port.c ../../../lib/afr/freertos_kernel/portable/GCC/AVR_Mega0/port.c ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/port.c ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/portasm.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_init.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_heap.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4_MPU/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/port.c ../../../lib/afr/freertos_kernel/portable/Common/mpu_wrappers.c ../../../lib/afr/freertos_kernel/portable/Rowley/MSP430F449/port.c ../../../lib/afr/freertos_kernel/portable/Rowley/MSP430F449/portext.asm ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/small/port.c ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/large_untested/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM0/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM7/r0p1/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/portASM.s ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM3/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/portASM.s ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4_MPU/port.c ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/PC/port.c ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/Flsh186/port.c ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/common/portcomn.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port_asm.S ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port_asm.S ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC18F/port.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port_asm.S ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/port.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/PC/port.c ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/Flsh186/port.c ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/common/portcomn.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33/portasm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/portasm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23/portasm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23_NTZ/portasm.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33_NTZ/portasm.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23/portasm.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/init/secure_init.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/secure_context.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port_asm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port_asm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM33/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM23/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/heap/secure_heap.c ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/Tick.c ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/isrTick.c ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/port.c ../../../lib/afr/freertos_kernel/portable/CCS/MSP430X/port.c ../../../lib/afr/freertos_kernel/portable/CCS/MSP430X/portext.asm ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM3/portasm.asm ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM3/port.c ../../../lib/afr/freertos_kernel/portable/CCS/ARM_Cortex-R4/portASM.asm ../../../lib/afr/freertos_kernel/portable/CCS/ARM_Cortex-R4/port.c ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM4F/portasm.asm ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/MemMang/heap_3.c ../../../lib/afr/freertos_kernel/portable/MemMang/heap_4.c ../../../lib/afr/freertos_kernel/portable/MemMang/heap_5.c ../../../lib/afr/freertos_kernel/portable/MemMang/heap_1.c ../../../lib/afr/freertos_kernel/portable/MemMang/heap_2.c ../../../lib/afr/freertos_kernel/portable/Renesas/RX100/port.c ../../../lib/afr/freertos_kernel/portable/Renesas/RX200/port.c ../../../lib/afr/freertos_kernel/portable/Renesas/RX600/port.c ../../../lib/afr/freertos_kernel/portable/Renesas/SH2A_FPU/port.c ../../../lib/afr/freertos_kernel/portable/Renesas/RX600v2/port.c ../../../lib/afr/freertos_kernel/portable/Renesas/RX700v3_DPFPU/port.c ../../../lib/afr/freertos_kernel/portable/Tasking/ARM_CM4F/port_asm.asm ../../../lib/afr/freertos_kernel/portable/Tasking/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/CodeWarrior/HCS12/port.c ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/portasm.S ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/port.c ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/portasm.S ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/portasm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_vectors.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_context.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portasm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portclib.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_init.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr_asm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr_asm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_support.s ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_support.s ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARM_CM33_TFM/os_wrapper_freertos.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ATmega/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vector_defaults.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vectors.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/FreeRTOS-openocd.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_context.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/portasm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_init.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_loadstore_handler.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr_asm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_overlay_os_hook.c ../../../lib/afr/freertos_kernel/portable/MSVC-MingW/port.c ../../../lib/afr/freertos_kernel/queue.c ../../../lib/afr/freertos_kernel/timers.c ../../../lib/afr/freertos_kernel/tasks.c ../../../lib/afr/freertos_kernel/event_groups.c ../../../lib/afr/freertos_kernel/croutine.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/702484399/list.o ${OBJECTDIR}/_ext/702484399/stream_buffer.o ${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o ${OBJECTDIR}/_ext/557570976/port.o ${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o ${OBJECTDIR}/_ext/557423044/port.o ${OBJECTDIR}/_ext/281906136/port.o ${OBJECTDIR}/_ext/918530462/portasm.o ${OBJECTDIR}/_ext/918530462/port.o ${OBJECTDIR}/_ext/265561808/secure_context.o ${OBJECTDIR}/_ext/265561808/secure_context_port.o ${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o ${OBJECTDIR}/_ext/265561808/secure_init.o ${OBJECTDIR}/_ext/265561808/secure_heap.o ${OBJECTDIR}/_ext/1263899881/portASM.o ${OBJECTDIR}/_ext/1263899881/port.o ${OBJECTDIR}/_ext/2032074293/port_asm.o ${OBJECTDIR}/_ext/2032074293/port.o ${OBJECTDIR}/_ext/1430140034/port_asm.o ${OBJECTDIR}/_ext/1430140034/port.o ${OBJECTDIR}/_ext/314519745/port.o ${OBJECTDIR}/_ext/1652420097/port.o ${OBJECTDIR}/_ext/455624890/port.o ${OBJECTDIR}/_ext/1410595064/port.o ${OBJECTDIR}/_ext/1922849114/portasm.o ${OBJECTDIR}/_ext/1922849114/port.o ${OBJECTDIR}/_ext/1451507757/portasm.o ${OBJECTDIR}/_ext/1451507757/port.o ${OBJECTDIR}/_ext/1410593142/port.o ${OBJECTDIR}/_ext/1410593266/port.o ${OBJECTDIR}/_ext/1404276675/port.o ${OBJECTDIR}/_ext/1430144839/port_asm.o ${OBJECTDIR}/_ext/1430144839/port.o ${OBJECTDIR}/_ext/418336614/port.o ${OBJECTDIR}/_ext/1121679227/portASM.o ${OBJECTDIR}/_ext/1121679227/port.o ${OBJECTDIR}/_ext/1371846425/portASM.o ${OBJECTDIR}/_ext/1371846425/port.o ${OBJECTDIR}/_ext/2092672428/portasm.o ${OBJECTDIR}/_ext/2092672428/port.o ${OBJECTDIR}/_ext/1728889447/read.o ${OBJECTDIR}/_ext/1728889447/port.o ${OBJECTDIR}/_ext/1728889447/write.o ${OBJECTDIR}/_ext/1237832240/port.o ${OBJECTDIR}/_ext/1469751924/port.o ${OBJECTDIR}/_ext/1267365548/port.o ${OBJECTDIR}/_ext/1922848751/portASM.o ${OBJECTDIR}/_ext/1922848751/port.o ${OBJECTDIR}/_ext/848985171/portasm.o ${OBJECTDIR}/_ext/848985171/port.o ${OBJECTDIR}/_ext/141602939/port.o ${OBJECTDIR}/_ext/1922849117/portasm.o ${OBJECTDIR}/_ext/1922849117/port.o ${OBJECTDIR}/_ext/2032087772/port.o ${OBJECTDIR}/_ext/444074765/port.o ${OBJECTDIR}/_ext/1386322171/portasm.o ${OBJECTDIR}/_ext/1386322171/port.o ${OBJECTDIR}/_ext/625127455/portasm.o ${OBJECTDIR}/_ext/625127455/port.o ${OBJECTDIR}/_ext/1541892655/secure_context.o ${OBJECTDIR}/_ext/1541892655/secure_context_port.o ${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o ${OBJECTDIR}/_ext/1541892655/secure_init.o ${OBJECTDIR}/_ext/1541892655/secure_heap.o ${OBJECTDIR}/_ext/521219416/portasm.o ${OBJECTDIR}/_ext/521219416/port.o ${OBJECTDIR}/_ext/1330589629/port.o ${OBJECTDIR}/_ext/1096540686/port.o ${OBJECTDIR}/_ext/1184804963/portasm.o ${OBJECTDIR}/_ext/1184804963/port_exceptions.o ${OBJECTDIR}/_ext/1184804963/port.o ${OBJECTDIR}/_ext/1868706680/portISR.o ${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o ${OBJECTDIR}/_ext/1868706680/port.o ${OBJECTDIR}/_ext/2064501105/port.o ${OBJECTDIR}/_ext/2064501105/portasm.o ${OBJECTDIR}/_ext/604428253/secure_context.o ${OBJECTDIR}/_ext/604428253/secure_context_port.o ${OBJECTDIR}/_ext/604428253/secure_init.o ${OBJECTDIR}/_ext/604428253/secure_heap.o ${OBJECTDIR}/_ext/1184804964/portasm.o ${OBJECTDIR}/_ext/1184804964/port_exceptions.o ${OBJECTDIR}/_ext/1184804964/port.o ${OBJECTDIR}/_ext/486918289/port.o ${OBJECTDIR}/_ext/1573813171/port.o ${OBJECTDIR}/_ext/2124196601/port.o ${OBJECTDIR}/_ext/186157216/port.o ${OBJECTDIR}/_ext/2111327397/portISR.o ${OBJECTDIR}/_ext/2111327397/port.o ${OBJECTDIR}/_ext/496746403/port.o ${OBJECTDIR}/_ext/1781124133/portasm.o ${OBJECTDIR}/_ext/1781124133/port.o ${OBJECTDIR}/_ext/501257293/port.o ${OBJECTDIR}/_ext/868732920/portISR.o ${OBJECTDIR}/_ext/868732920/port.o ${OBJECTDIR}/_ext/486917328/port.o ${OBJECTDIR}/_ext/486913484/port.o ${OBJECTDIR}/_ext/868727733/portISR.o ${OBJECTDIR}/_ext/868727733/port.o ${OBJECTDIR}/_ext/948145979/portASM.o ${OBJECTDIR}/_ext/948145979/port.o ${OBJECTDIR}/_ext/1988497755/port_asm.o ${OBJECTDIR}/_ext/1988497755/port.o ${OBJECTDIR}/_ext/1847192621/port.o ${OBJECTDIR}/_ext/946811729/port.o ${OBJECTDIR}/_ext/1647804360/portASM.o ${OBJECTDIR}/_ext/1647804360/port.o ${OBJECTDIR}/_ext/2072580556/portASM.o ${OBJECTDIR}/_ext/2072580556/port.o ${OBJECTDIR}/_ext/1324853081/port.o ${OBJECTDIR}/_ext/1324853081/portasm.o ${OBJECTDIR}/_ext/300548614/port.o ${OBJECTDIR}/_ext/300548614/exception.o ${OBJECTDIR}/_ext/1955953423/port.o ${OBJECTDIR}/_ext/1955953423/porttrap.o ${OBJECTDIR}/_ext/2124196964/portASM.o ${OBJECTDIR}/_ext/2124196964/port.o ${OBJECTDIR}/_ext/1616804518/port.o ${OBJECTDIR}/_ext/1616804518/portasm.o ${OBJECTDIR}/_ext/227580848/port.o ${OBJECTDIR}/_ext/712764046/port.o ${OBJECTDIR}/_ext/2124196598/port.o ${OBJECTDIR}/_ext/251511942/portasm.o ${OBJECTDIR}/_ext/251511942/port.o ${OBJECTDIR}/_ext/1187781318/port.o ${OBJECTDIR}/_ext/1501352208/portASM.o ${OBJECTDIR}/_ext/1501352208/port.o ${OBJECTDIR}/_ext/1279931197/portISR.o ${OBJECTDIR}/_ext/1279931197/port.o ${OBJECTDIR}/_ext/122828951/portasm.o ${OBJECTDIR}/_ext/122828951/port.o ${OBJECTDIR}/_ext/1177919254/port.o ${OBJECTDIR}/_ext/966124963/port.o ${OBJECTDIR}/_ext/1585363296/port.o ${OBJECTDIR}/_ext/878282853/portasm.o ${OBJECTDIR}/_ext/878282853/port.o ${OBJECTDIR}/_ext/2114282510/portasm.o ${OBJECTDIR}/_ext/2114282510/port.o ${OBJECTDIR}/_ext/1771098098/port.o ${OBJECTDIR}/_ext/1771098098/portasm.o ${OBJECTDIR}/_ext/1883084580/secure_context.o ${OBJECTDIR}/_ext/1883084580/secure_context_port.o ${OBJECTDIR}/_ext/1883084580/secure_init.o ${OBJECTDIR}/_ext/1883084580/secure_heap.o ${OBJECTDIR}/_ext/1425584997/port.o ${OBJECTDIR}/_ext/965201442/port.o ${OBJECTDIR}/_ext/2124196441/portASM.o ${OBJECTDIR}/_ext/2124196441/port.o ${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o ${OBJECTDIR}/_ext/1648737201/port.o ${OBJECTDIR}/_ext/1648737201/portext.o ${OBJECTDIR}/_ext/947030074/port.o ${OBJECTDIR}/_ext/463162171/port.o ${OBJECTDIR}/_ext/285462043/port.o ${OBJECTDIR}/_ext/604201972/port.o ${OBJECTDIR}/_ext/285461680/portASM.o ${OBJECTDIR}/_ext/285461680/port.o ${OBJECTDIR}/_ext/285462046/port.o ${OBJECTDIR}/_ext/78371810/portASM.o ${OBJECTDIR}/_ext/78371810/port.o ${OBJECTDIR}/_ext/259388935/port.o ${OBJECTDIR}/_ext/810418418/port.o ${OBJECTDIR}/_ext/435522139/port.o ${OBJECTDIR}/_ext/1279475426/port.o ${OBJECTDIR}/_ext/1843948701/portcomn.o ${OBJECTDIR}/_ext/205153989/port_asm.o ${OBJECTDIR}/_ext/205153989/port.o ${OBJECTDIR}/_ext/52748546/port_asm.o ${OBJECTDIR}/_ext/52748546/port.o ${OBJECTDIR}/_ext/1669187602/port.o ${OBJECTDIR}/_ext/205153987/port_asm.o ${OBJECTDIR}/_ext/205153987/port.o ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o ${OBJECTDIR}/_ext/437362351/port.o ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o ${OBJECTDIR}/_ext/1058873823/port.o ${OBJECTDIR}/_ext/1006320666/port.o ${OBJECTDIR}/_ext/585091303/portcomn.o ${OBJECTDIR}/_ext/2043123164/portasm.o ${OBJECTDIR}/_ext/2089340370/portasm.o ${OBJECTDIR}/_ext/2117969521/portasm.o ${OBJECTDIR}/_ext/2043123133/portasm.o ${OBJECTDIR}/_ext/1138757583/portasm.o ${OBJECTDIR}/_ext/823989829/portasm.o ${OBJECTDIR}/_ext/852618980/portasm.o ${OBJECTDIR}/_ext/1138757552/portasm.o ${OBJECTDIR}/_ext/1103600747/port.o ${OBJECTDIR}/_ext/1123175492/secure_init.o ${OBJECTDIR}/_ext/572413827/secure_context.o ${OBJECTDIR}/_ext/1031683254/secure_context_port.o ${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o ${OBJECTDIR}/_ext/1031683285/secure_context_port.o ${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o ${OBJECTDIR}/_ext/1936048835/secure_context_port.o ${OBJECTDIR}/_ext/1936048866/secure_context_port.o ${OBJECTDIR}/_ext/1123214184/secure_heap.o ${OBJECTDIR}/_ext/1933832991/Tick.o ${OBJECTDIR}/_ext/1933832991/isrTick.o ${OBJECTDIR}/_ext/95789487/port.o ${OBJECTDIR}/_ext/290614047/port.o ${OBJECTDIR}/_ext/290614047/portext.o ${OBJECTDIR}/_ext/1914141206/portasm.o ${OBJECTDIR}/_ext/1914141206/port.o ${OBJECTDIR}/_ext/623266235/portASM.o ${OBJECTDIR}/_ext/623266235/port.o ${OBJECTDIR}/_ext/791164657/portasm.o ${OBJECTDIR}/_ext/791164657/port.o ${OBJECTDIR}/_ext/523084622/heap_3.o ${OBJECTDIR}/_ext/523084622/heap_4.o ${OBJECTDIR}/_ext/523084622/heap_5.o ${OBJECTDIR}/_ext/523084622/heap_1.o ${OBJECTDIR}/_ext/523084622/heap_2.o ${OBJECTDIR}/_ext/430913507/port.o ${OBJECTDIR}/_ext/430914468/port.o ${OBJECTDIR}/_ext/430918312/port.o ${OBJECTDIR}/_ext/160491640/port.o ${OBJECTDIR}/_ext/1795641124/port.o ${OBJECTDIR}/_ext/1237622298/port.o ${OBJECTDIR}/_ext/666862117/port_asm.o ${OBJECTDIR}/_ext/666862117/port.o ${OBJECTDIR}/_ext/1434886805/port.o ${OBJECTDIR}/_ext/130836147/portasm.o ${OBJECTDIR}/_ext/130836147/port.o ${OBJECTDIR}/_ext/130836146/portasm.o ${OBJECTDIR}/_ext/130836146/port.o ${OBJECTDIR}/_ext/552203917/portasm.o ${OBJECTDIR}/_ext/552203917/port.o ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o ${OBJECTDIR}/_ext/912209894/xtensa_context.o ${OBJECTDIR}/_ext/912209894/portasm.o ${OBJECTDIR}/_ext/912209894/xtensa_intr.o ${OBJECTDIR}/_ext/912209894/portclib.o ${OBJECTDIR}/_ext/912209894/xtensa_init.o ${OBJECTDIR}/_ext/912209894/port.o ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o ${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o ${OBJECTDIR}/_ext/1173681791/wait_for_event.o ${OBJECTDIR}/_ext/1238046431/port.o ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o ${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o ${OBJECTDIR}/_ext/1544756697/xtensa_context.o ${OBJECTDIR}/_ext/1544756697/portasm.o ${OBJECTDIR}/_ext/1544756697/xtensa_intr.o ${OBJECTDIR}/_ext/1544756697/xtensa_init.o ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o ${OBJECTDIR}/_ext/1544756697/port.o ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o ${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o ${OBJECTDIR}/_ext/992749105/freertos_tls.o ${OBJECTDIR}/_ext/992749105/arc_support.o ${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o ${OBJECTDIR}/_ext/992749105/port.o ${OBJECTDIR}/_ext/732925268/arc_support.o ${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o ${OBJECTDIR}/_ext/732925268/port.o ${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o ${OBJECTDIR}/_ext/729821655/port.o ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o ${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o ${OBJECTDIR}/_ext/738169262/xtensa_context.o ${OBJECTDIR}/_ext/738169262/portasm.o ${OBJECTDIR}/_ext/738169262/xtensa_intr.o ${OBJECTDIR}/_ext/738169262/xtensa_init.o ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o ${OBJECTDIR}/_ext/738169262/port.o ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o ${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o ${OBJECTDIR}/_ext/307975644/port.o ${OBJECTDIR}/_ext/702484399/queue.o ${OBJECTDIR}/_ext/702484399/timers.o ${OBJECTDIR}/_ext/702484399/tasks.o ${OBJECTDIR}/_ext/702484399/event_groups.o ${OBJECTDIR}/_ext/702484399/croutine.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/702484399/list.o.d ${OBJECTDIR}/_ext/702484399/stream_buffer.o.d ${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o.d ${OBJECTDIR}/_ext/557570976/port.o.d ${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o.d ${OBJECTDIR}/_ext/557423044/port.o.d ${OBJECTDIR}/_ext/281906136/port.o.d ${OBJECTDIR}/_ext/918530462/portasm.o.d ${OBJECTDIR}/_ext/918530462/port.o.d ${OBJECTDIR}/_ext/265561808/secure_context.o.d ${OBJECTDIR}/_ext/265561808/secure_context_port.o.d ${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o.d ${OBJECTDIR}/_ext/265561808/secure_init.o.d ${OBJECTDIR}/_ext/265561808/secure_heap.o.d ${OBJECTDIR}/_ext/1263899881/portASM.o.d ${OBJECTDIR}/_ext/1263899881/port.o.d ${OBJECTDIR}/_ext/2032074293/port_asm.o.d ${OBJECTDIR}/_ext/2032074293/port.o.d ${OBJECTDIR}/_ext/1430140034/port_asm.o.d ${OBJECTDIR}/_ext/1430140034/port.o.d ${OBJECTDIR}/_ext/314519745/port.o.d ${OBJECTDIR}/_ext/1652420097/port.o.d ${OBJECTDIR}/_ext/455624890/port.o.d ${OBJECTDIR}/_ext/1410595064/port.o.d ${OBJECTDIR}/_ext/1922849114/portasm.o.d ${OBJECTDIR}/_ext/1922849114/port.o.d ${OBJECTDIR}/_ext/1451507757/portasm.o.d ${OBJECTDIR}/_ext/1451507757/port.o.d ${OBJECTDIR}/_ext/1410593142/port.o.d ${OBJECTDIR}/_ext/1410593266/port.o.d ${OBJECTDIR}/_ext/1404276675/port.o.d ${OBJECTDIR}/_ext/1430144839/port_asm.o.d ${OBJECTDIR}/_ext/1430144839/port.o.d ${OBJECTDIR}/_ext/418336614/port.o.d ${OBJECTDIR}/_ext/1121679227/portASM.o.d ${OBJECTDIR}/_ext/1121679227/port.o.d ${OBJECTDIR}/_ext/1371846425/portASM.o.d ${OBJECTDIR}/_ext/1371846425/port.o.d ${OBJECTDIR}/_ext/2092672428/portasm.o.d ${OBJECTDIR}/_ext/2092672428/port.o.d ${OBJECTDIR}/_ext/1728889447/read.o.d ${OBJECTDIR}/_ext/1728889447/port.o.d ${OBJECTDIR}/_ext/1728889447/write.o.d ${OBJECTDIR}/_ext/1237832240/port.o.d ${OBJECTDIR}/_ext/1469751924/port.o.d ${OBJECTDIR}/_ext/1267365548/port.o.d ${OBJECTDIR}/_ext/1922848751/portASM.o.d ${OBJECTDIR}/_ext/1922848751/port.o.d ${OBJECTDIR}/_ext/848985171/portasm.o.d ${OBJECTDIR}/_ext/848985171/port.o.d ${OBJECTDIR}/_ext/141602939/port.o.d ${OBJECTDIR}/_ext/1922849117/portasm.o.d ${OBJECTDIR}/_ext/1922849117/port.o.d ${OBJECTDIR}/_ext/2032087772/port.o.d ${OBJECTDIR}/_ext/444074765/port.o.d ${OBJECTDIR}/_ext/1386322171/portasm.o.d ${OBJECTDIR}/_ext/1386322171/port.o.d ${OBJECTDIR}/_ext/625127455/portasm.o.d ${OBJECTDIR}/_ext/625127455/port.o.d ${OBJECTDIR}/_ext/1541892655/secure_context.o.d ${OBJECTDIR}/_ext/1541892655/secure_context_port.o.d ${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o.d ${OBJECTDIR}/_ext/1541892655/secure_init.o.d ${OBJECTDIR}/_ext/1541892655/secure_heap.o.d ${OBJECTDIR}/_ext/521219416/portasm.o.d ${OBJECTDIR}/_ext/521219416/port.o.d ${OBJECTDIR}/_ext/1330589629/port.o.d ${OBJECTDIR}/_ext/1096540686/port.o.d ${OBJECTDIR}/_ext/1184804963/portasm.o.d ${OBJECTDIR}/_ext/1184804963/port_exceptions.o.d ${OBJECTDIR}/_ext/1184804963/port.o.d ${OBJECTDIR}/_ext/1868706680/portISR.o.d ${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o.d ${OBJECTDIR}/_ext/1868706680/port.o.d ${OBJECTDIR}/_ext/2064501105/port.o.d ${OBJECTDIR}/_ext/2064501105/portasm.o.d ${OBJECTDIR}/_ext/604428253/secure_context.o.d ${OBJECTDIR}/_ext/604428253/secure_context_port.o.d ${OBJECTDIR}/_ext/604428253/secure_init.o.d ${OBJECTDIR}/_ext/604428253/secure_heap.o.d ${OBJECTDIR}/_ext/1184804964/portasm.o.d ${OBJECTDIR}/_ext/1184804964/port_exceptions.o.d ${OBJECTDIR}/_ext/1184804964/port.o.d ${OBJECTDIR}/_ext/486918289/port.o.d ${OBJECTDIR}/_ext/1573813171/port.o.d ${OBJECTDIR}/_ext/2124196601/port.o.d ${OBJECTDIR}/_ext/186157216/port.o.d ${OBJECTDIR}/_ext/2111327397/portISR.o.d ${OBJECTDIR}/_ext/2111327397/port.o.d ${OBJECTDIR}/_ext/496746403/port.o.d ${OBJECTDIR}/_ext/1781124133/portasm.o.d ${OBJECTDIR}/_ext/1781124133/port.o.d ${OBJECTDIR}/_ext/501257293/port.o.d ${OBJECTDIR}/_ext/868732920/portISR.o.d ${OBJECTDIR}/_ext/868732920/port.o.d ${OBJECTDIR}/_ext/486917328/port.o.d ${OBJECTDIR}/_ext/486913484/port.o.d ${OBJECTDIR}/_ext/868727733/portISR.o.d ${OBJECTDIR}/_ext/868727733/port.o.d ${OBJECTDIR}/_ext/948145979/portASM.o.d ${OBJECTDIR}/_ext/948145979/port.o.d ${OBJECTDIR}/_ext/1988497755/port_asm.o.d ${OBJECTDIR}/_ext/1988497755/port.o.d ${OBJECTDIR}/_ext/1847192621/port.o.d ${OBJECTDIR}/_ext/946811729/port.o.d ${OBJECTDIR}/_ext/1647804360/portASM.o.d ${OBJECTDIR}/_ext/1647804360/port.o.d ${OBJECTDIR}/_ext/2072580556/portASM.o.d ${OBJECTDIR}/_ext/2072580556/port.o.d ${OBJECTDIR}/_ext/1324853081/port.o.d ${OBJECTDIR}/_ext/1324853081/portasm.o.d ${OBJECTDIR}/_ext/300548614/port.o.d ${OBJECTDIR}/_ext/300548614/exception.o.d ${OBJECTDIR}/_ext/1955953423/port.o.d ${OBJECTDIR}/_ext/1955953423/porttrap.o.d ${OBJECTDIR}/_ext/2124196964/portASM.o.d ${OBJECTDIR}/_ext/2124196964/port.o.d ${OBJECTDIR}/_ext/1616804518/port.o.d ${OBJECTDIR}/_ext/1616804518/portasm.o.d ${OBJECTDIR}/_ext/227580848/port.o.d ${OBJECTDIR}/_ext/712764046/port.o.d ${OBJECTDIR}/_ext/2124196598/port.o.d ${OBJECTDIR}/_ext/251511942/portasm.o.d ${OBJECTDIR}/_ext/251511942/port.o.d ${OBJECTDIR}/_ext/1187781318/port.o.d ${OBJECTDIR}/_ext/1501352208/portASM.o.d ${OBJECTDIR}/_ext/1501352208/port.o.d ${OBJECTDIR}/_ext/1279931197/portISR.o.d ${OBJECTDIR}/_ext/1279931197/port.o.d ${OBJECTDIR}/_ext/122828951/portasm.o.d ${OBJECTDIR}/_ext/122828951/port.o.d ${OBJECTDIR}/_ext/1177919254/port.o.d ${OBJECTDIR}/_ext/966124963/port.o.d ${OBJECTDIR}/_ext/1585363296/port.o.d ${OBJECTDIR}/_ext/878282853/portasm.o.d ${OBJECTDIR}/_ext/878282853/port.o.d ${OBJECTDIR}/_ext/2114282510/portasm.o.d ${OBJECTDIR}/_ext/2114282510/port.o.d ${OBJECTDIR}/_ext/1771098098/port.o.d ${OBJECTDIR}/_ext/1771098098/portasm.o.d ${OBJECTDIR}/_ext/1883084580/secure_context.o.d ${OBJECTDIR}/_ext/1883084580/secure_context_port.o.d ${OBJECTDIR}/_ext/1883084580/secure_init.o.d ${OBJECTDIR}/_ext/1883084580/secure_heap.o.d ${OBJECTDIR}/_ext/1425584997/port.o.d ${OBJECTDIR}/_ext/965201442/port.o.d ${OBJECTDIR}/_ext/2124196441/portASM.o.d ${OBJECTDIR}/_ext/2124196441/port.o.d ${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o.d ${OBJECTDIR}/_ext/1648737201/port.o.d ${OBJECTDIR}/_ext/1648737201/portext.o.d ${OBJECTDIR}/_ext/947030074/port.o.d ${OBJECTDIR}/_ext/463162171/port.o.d ${OBJECTDIR}/_ext/285462043/port.o.d ${OBJECTDIR}/_ext/604201972/port.o.d ${OBJECTDIR}/_ext/285461680/portASM.o.d ${OBJECTDIR}/_ext/285461680/port.o.d ${OBJECTDIR}/_ext/285462046/port.o.d ${OBJECTDIR}/_ext/78371810/portASM.o.d ${OBJECTDIR}/_ext/78371810/port.o.d ${OBJECTDIR}/_ext/259388935/port.o.d ${OBJECTDIR}/_ext/810418418/port.o.d ${OBJECTDIR}/_ext/435522139/port.o.d ${OBJECTDIR}/_ext/1279475426/port.o.d ${OBJECTDIR}/_ext/1843948701/portcomn.o.d ${OBJECTDIR}/_ext/205153989/port_asm.o.d ${OBJECTDIR}/_ext/205153989/port.o.d ${OBJECTDIR}/_ext/52748546/port_asm.o.d ${OBJECTDIR}/_ext/52748546/port.o.d ${OBJECTDIR}/_ext/1669187602/port.o.d ${OBJECTDIR}/_ext/205153987/port_asm.o.d ${OBJECTDIR}/_ext/205153987/port.o.d ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.d ${OBJECTDIR}/_ext/437362351/port.o.d ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.d ${OBJECTDIR}/_ext/1058873823/port.o.d ${OBJECTDIR}/_ext/1006320666/port.o.d ${OBJECTDIR}/_ext/585091303/portcomn.o.d ${OBJECTDIR}/_ext/2043123164/portasm.o.d ${OBJECTDIR}/_ext/2089340370/portasm.o.d ${OBJECTDIR}/_ext/2117969521/portasm.o.d ${OBJECTDIR}/_ext/2043123133/portasm.o.d ${OBJECTDIR}/_ext/1138757583/portasm.o.d ${OBJECTDIR}/_ext/823989829/portasm.o.d ${OBJECTDIR}/_ext/852618980/portasm.o.d ${OBJECTDIR}/_ext/1138757552/portasm.o.d ${OBJECTDIR}/_ext/1103600747/port.o.d ${OBJECTDIR}/_ext/1123175492/secure_init.o.d ${OBJECTDIR}/_ext/572413827/secure_context.o.d ${OBJECTDIR}/_ext/1031683254/secure_context_port.o.d ${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o.d ${OBJECTDIR}/_ext/1031683285/secure_context_port.o.d ${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o.d ${OBJECTDIR}/_ext/1936048835/secure_context_port.o.d ${OBJECTDIR}/_ext/1936048866/secure_context_port.o.d ${OBJECTDIR}/_ext/1123214184/secure_heap.o.d ${OBJECTDIR}/_ext/1933832991/Tick.o.d ${OBJECTDIR}/_ext/1933832991/isrTick.o.d ${OBJECTDIR}/_ext/95789487/port.o.d ${OBJECTDIR}/_ext/290614047/port.o.d ${OBJECTDIR}/_ext/290614047/portext.o.d ${OBJECTDIR}/_ext/1914141206/portasm.o.d ${OBJECTDIR}/_ext/1914141206/port.o.d ${OBJECTDIR}/_ext/623266235/portASM.o.d ${OBJECTDIR}/_ext/623266235/port.o.d ${OBJECTDIR}/_ext/791164657/portasm.o.d ${OBJECTDIR}/_ext/791164657/port.o.d ${OBJECTDIR}/_ext/523084622/heap_3.o.d ${OBJECTDIR}/_ext/523084622/heap_4.o.d ${OBJECTDIR}/_ext/523084622/heap_5.o.d ${OBJECTDIR}/_ext/523084622/heap_1.o.d ${OBJECTDIR}/_ext/523084622/heap_2.o.d ${OBJECTDIR}/_ext/430913507/port.o.d ${OBJECTDIR}/_ext/430914468/port.o.d ${OBJECTDIR}/_ext/430918312/port.o.d ${OBJECTDIR}/_ext/160491640/port.o.d ${OBJECTDIR}/_ext/1795641124/port.o.d ${OBJECTDIR}/_ext/1237622298/port.o.d ${OBJECTDIR}/_ext/666862117/port_asm.o.d ${OBJECTDIR}/_ext/666862117/port.o.d ${OBJECTDIR}/_ext/1434886805/port.o.d ${OBJECTDIR}/_ext/130836147/portasm.o.d ${OBJECTDIR}/_ext/130836147/port.o.d ${OBJECTDIR}/_ext/130836146/portasm.o.d ${OBJECTDIR}/_ext/130836146/port.o.d ${OBJECTDIR}/_ext/552203917/portasm.o.d ${OBJECTDIR}/_ext/552203917/port.o.d ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.d ${OBJECTDIR}/_ext/912209894/xtensa_context.o.d ${OBJECTDIR}/_ext/912209894/portasm.o.d ${OBJECTDIR}/_ext/912209894/xtensa_intr.o.d ${OBJECTDIR}/_ext/912209894/portclib.o.d ${OBJECTDIR}/_ext/912209894/xtensa_init.o.d ${OBJECTDIR}/_ext/912209894/port.o.d ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.d ${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o.d ${OBJECTDIR}/_ext/1173681791/wait_for_event.o.d ${OBJECTDIR}/_ext/1238046431/port.o.d ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.d ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.d ${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o.d ${OBJECTDIR}/_ext/1544756697/xtensa_context.o.d ${OBJECTDIR}/_ext/1544756697/portasm.o.d ${OBJECTDIR}/_ext/1544756697/xtensa_intr.o.d ${OBJECTDIR}/_ext/1544756697/xtensa_init.o.d ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.d ${OBJECTDIR}/_ext/1544756697/port.o.d ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.d ${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o.d ${OBJECTDIR}/_ext/992749105/freertos_tls.o.d ${OBJECTDIR}/_ext/992749105/arc_support.o.d ${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o.d ${OBJECTDIR}/_ext/992749105/port.o.d ${OBJECTDIR}/_ext/732925268/arc_support.o.d ${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o.d ${OBJECTDIR}/_ext/732925268/port.o.d ${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o.d ${OBJECTDIR}/_ext/729821655/port.o.d ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.d ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.d ${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o.d ${OBJECTDIR}/_ext/738169262/xtensa_context.o.d ${OBJECTDIR}/_ext/738169262/portasm.o.d ${OBJECTDIR}/_ext/738169262/xtensa_intr.o.d ${OBJECTDIR}/_ext/738169262/xtensa_init.o.d ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.d ${OBJECTDIR}/_ext/738169262/port.o.d ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.d ${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o.d ${OBJECTDIR}/_ext/307975644/port.o.d ${OBJECTDIR}/_ext/702484399/queue.o.d ${OBJECTDIR}/_ext/702484399/timers.o.d ${OBJECTDIR}/_ext/702484399/tasks.o.d ${OBJECTDIR}/_ext/702484399/event_groups.o.d ${OBJECTDIR}/_ext/702484399/croutine.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/702484399/list.o ${OBJECTDIR}/_ext/702484399/stream_buffer.o ${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o ${OBJECTDIR}/_ext/557570976/port.o ${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o ${OBJECTDIR}/_ext/557423044/port.o ${OBJECTDIR}/_ext/281906136/port.o ${OBJECTDIR}/_ext/918530462/portasm.o ${OBJECTDIR}/_ext/918530462/port.o ${OBJECTDIR}/_ext/265561808/secure_context.o ${OBJECTDIR}/_ext/265561808/secure_context_port.o ${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o ${OBJECTDIR}/_ext/265561808/secure_init.o ${OBJECTDIR}/_ext/265561808/secure_heap.o ${OBJECTDIR}/_ext/1263899881/portASM.o ${OBJECTDIR}/_ext/1263899881/port.o ${OBJECTDIR}/_ext/2032074293/port_asm.o ${OBJECTDIR}/_ext/2032074293/port.o ${OBJECTDIR}/_ext/1430140034/port_asm.o ${OBJECTDIR}/_ext/1430140034/port.o ${OBJECTDIR}/_ext/314519745/port.o ${OBJECTDIR}/_ext/1652420097/port.o ${OBJECTDIR}/_ext/455624890/port.o ${OBJECTDIR}/_ext/1410595064/port.o ${OBJECTDIR}/_ext/1922849114/portasm.o ${OBJECTDIR}/_ext/1922849114/port.o ${OBJECTDIR}/_ext/1451507757/portasm.o ${OBJECTDIR}/_ext/1451507757/port.o ${OBJECTDIR}/_ext/1410593142/port.o ${OBJECTDIR}/_ext/1410593266/port.o ${OBJECTDIR}/_ext/1404276675/port.o ${OBJECTDIR}/_ext/1430144839/port_asm.o ${OBJECTDIR}/_ext/1430144839/port.o ${OBJECTDIR}/_ext/418336614/port.o ${OBJECTDIR}/_ext/1121679227/portASM.o ${OBJECTDIR}/_ext/1121679227/port.o ${OBJECTDIR}/_ext/1371846425/portASM.o ${OBJECTDIR}/_ext/1371846425/port.o ${OBJECTDIR}/_ext/2092672428/portasm.o ${OBJECTDIR}/_ext/2092672428/port.o ${OBJECTDIR}/_ext/1728889447/read.o ${OBJECTDIR}/_ext/1728889447/port.o ${OBJECTDIR}/_ext/1728889447/write.o ${OBJECTDIR}/_ext/1237832240/port.o ${OBJECTDIR}/_ext/1469751924/port.o ${OBJECTDIR}/_ext/1267365548/port.o ${OBJECTDIR}/_ext/1922848751/portASM.o ${OBJECTDIR}/_ext/1922848751/port.o ${OBJECTDIR}/_ext/848985171/portasm.o ${OBJECTDIR}/_ext/848985171/port.o ${OBJECTDIR}/_ext/141602939/port.o ${OBJECTDIR}/_ext/1922849117/portasm.o ${OBJECTDIR}/_ext/1922849117/port.o ${OBJECTDIR}/_ext/2032087772/port.o ${OBJECTDIR}/_ext/444074765/port.o ${OBJECTDIR}/_ext/1386322171/portasm.o ${OBJECTDIR}/_ext/1386322171/port.o ${OBJECTDIR}/_ext/625127455/portasm.o ${OBJECTDIR}/_ext/625127455/port.o ${OBJECTDIR}/_ext/1541892655/secure_context.o ${OBJECTDIR}/_ext/1541892655/secure_context_port.o ${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o ${OBJECTDIR}/_ext/1541892655/secure_init.o ${OBJECTDIR}/_ext/1541892655/secure_heap.o ${OBJECTDIR}/_ext/521219416/portasm.o ${OBJECTDIR}/_ext/521219416/port.o ${OBJECTDIR}/_ext/1330589629/port.o ${OBJECTDIR}/_ext/1096540686/port.o ${OBJECTDIR}/_ext/1184804963/portasm.o ${OBJECTDIR}/_ext/1184804963/port_exceptions.o ${OBJECTDIR}/_ext/1184804963/port.o ${OBJECTDIR}/_ext/1868706680/portISR.o ${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o ${OBJECTDIR}/_ext/1868706680/port.o ${OBJECTDIR}/_ext/2064501105/port.o ${OBJECTDIR}/_ext/2064501105/portasm.o ${OBJECTDIR}/_ext/604428253/secure_context.o ${OBJECTDIR}/_ext/604428253/secure_context_port.o ${OBJECTDIR}/_ext/604428253/secure_init.o ${OBJECTDIR}/_ext/604428253/secure_heap.o ${OBJECTDIR}/_ext/1184804964/portasm.o ${OBJECTDIR}/_ext/1184804964/port_exceptions.o ${OBJECTDIR}/_ext/1184804964/port.o ${OBJECTDIR}/_ext/486918289/port.o ${OBJECTDIR}/_ext/1573813171/port.o ${OBJECTDIR}/_ext/2124196601/port.o ${OBJECTDIR}/_ext/186157216/port.o ${OBJECTDIR}/_ext/2111327397/portISR.o ${OBJECTDIR}/_ext/2111327397/port.o ${OBJECTDIR}/_ext/496746403/port.o ${OBJECTDIR}/_ext/1781124133/portasm.o ${OBJECTDIR}/_ext/1781124133/port.o ${OBJECTDIR}/_ext/501257293/port.o ${OBJECTDIR}/_ext/868732920/portISR.o ${OBJECTDIR}/_ext/868732920/port.o ${OBJECTDIR}/_ext/486917328/port.o ${OBJECTDIR}/_ext/486913484/port.o ${OBJECTDIR}/_ext/868727733/portISR.o ${OBJECTDIR}/_ext/868727733/port.o ${OBJECTDIR}/_ext/948145979/portASM.o ${OBJECTDIR}/_ext/948145979/port.o ${OBJECTDIR}/_ext/1988497755/port_asm.o ${OBJECTDIR}/_ext/1988497755/port.o ${OBJECTDIR}/_ext/1847192621/port.o ${OBJECTDIR}/_ext/946811729/port.o ${OBJECTDIR}/_ext/1647804360/portASM.o ${OBJECTDIR}/_ext/1647804360/port.o ${OBJECTDIR}/_ext/2072580556/portASM.o ${OBJECTDIR}/_ext/2072580556/port.o ${OBJECTDIR}/_ext/1324853081/port.o ${OBJECTDIR}/_ext/1324853081/portasm.o ${OBJECTDIR}/_ext/300548614/port.o ${OBJECTDIR}/_ext/300548614/exception.o ${OBJECTDIR}/_ext/1955953423/port.o ${OBJECTDIR}/_ext/1955953423/porttrap.o ${OBJECTDIR}/_ext/2124196964/portASM.o ${OBJECTDIR}/_ext/2124196964/port.o ${OBJECTDIR}/_ext/1616804518/port.o ${OBJECTDIR}/_ext/1616804518/portasm.o ${OBJECTDIR}/_ext/227580848/port.o ${OBJECTDIR}/_ext/712764046/port.o ${OBJECTDIR}/_ext/2124196598/port.o ${OBJECTDIR}/_ext/251511942/portasm.o ${OBJECTDIR}/_ext/251511942/port.o ${OBJECTDIR}/_ext/1187781318/port.o ${OBJECTDIR}/_ext/1501352208/portASM.o ${OBJECTDIR}/_ext/1501352208/port.o ${OBJECTDIR}/_ext/1279931197/portISR.o ${OBJECTDIR}/_ext/1279931197/port.o ${OBJECTDIR}/_ext/122828951/portasm.o ${OBJECTDIR}/_ext/122828951/port.o ${OBJECTDIR}/_ext/1177919254/port.o ${OBJECTDIR}/_ext/966124963/port.o ${OBJECTDIR}/_ext/1585363296/port.o ${OBJECTDIR}/_ext/878282853/portasm.o ${OBJECTDIR}/_ext/878282853/port.o ${OBJECTDIR}/_ext/2114282510/portasm.o ${OBJECTDIR}/_ext/2114282510/port.o ${OBJECTDIR}/_ext/1771098098/port.o ${OBJECTDIR}/_ext/1771098098/portasm.o ${OBJECTDIR}/_ext/1883084580/secure_context.o ${OBJECTDIR}/_ext/1883084580/secure_context_port.o ${OBJECTDIR}/_ext/1883084580/secure_init.o ${OBJECTDIR}/_ext/1883084580/secure_heap.o ${OBJECTDIR}/_ext/1425584997/port.o ${OBJECTDIR}/_ext/965201442/port.o ${OBJECTDIR}/_ext/2124196441/portASM.o ${OBJECTDIR}/_ext/2124196441/port.o ${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o ${OBJECTDIR}/_ext/1648737201/port.o ${OBJECTDIR}/_ext/1648737201/portext.o ${OBJECTDIR}/_ext/947030074/port.o ${OBJECTDIR}/_ext/463162171/port.o ${OBJECTDIR}/_ext/285462043/port.o ${OBJECTDIR}/_ext/604201972/port.o ${OBJECTDIR}/_ext/285461680/portASM.o ${OBJECTDIR}/_ext/285461680/port.o ${OBJECTDIR}/_ext/285462046/port.o ${OBJECTDIR}/_ext/78371810/portASM.o ${OBJECTDIR}/_ext/78371810/port.o ${OBJECTDIR}/_ext/259388935/port.o ${OBJECTDIR}/_ext/810418418/port.o ${OBJECTDIR}/_ext/435522139/port.o ${OBJECTDIR}/_ext/1279475426/port.o ${OBJECTDIR}/_ext/1843948701/portcomn.o ${OBJECTDIR}/_ext/205153989/port_asm.o ${OBJECTDIR}/_ext/205153989/port.o ${OBJECTDIR}/_ext/52748546/port_asm.o ${OBJECTDIR}/_ext/52748546/port.o ${OBJECTDIR}/_ext/1669187602/port.o ${OBJECTDIR}/_ext/205153987/port_asm.o ${OBJECTDIR}/_ext/205153987/port.o ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o ${OBJECTDIR}/_ext/437362351/port.o ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o ${OBJECTDIR}/_ext/1058873823/port.o ${OBJECTDIR}/_ext/1006320666/port.o ${OBJECTDIR}/_ext/585091303/portcomn.o ${OBJECTDIR}/_ext/2043123164/portasm.o ${OBJECTDIR}/_ext/2089340370/portasm.o ${OBJECTDIR}/_ext/2117969521/portasm.o ${OBJECTDIR}/_ext/2043123133/portasm.o ${OBJECTDIR}/_ext/1138757583/portasm.o ${OBJECTDIR}/_ext/823989829/portasm.o ${OBJECTDIR}/_ext/852618980/portasm.o ${OBJECTDIR}/_ext/1138757552/portasm.o ${OBJECTDIR}/_ext/1103600747/port.o ${OBJECTDIR}/_ext/1123175492/secure_init.o ${OBJECTDIR}/_ext/572413827/secure_context.o ${OBJECTDIR}/_ext/1031683254/secure_context_port.o ${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o ${OBJECTDIR}/_ext/1031683285/secure_context_port.o ${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o ${OBJECTDIR}/_ext/1936048835/secure_context_port.o ${OBJECTDIR}/_ext/1936048866/secure_context_port.o ${OBJECTDIR}/_ext/1123214184/secure_heap.o ${OBJECTDIR}/_ext/1933832991/Tick.o ${OBJECTDIR}/_ext/1933832991/isrTick.o ${OBJECTDIR}/_ext/95789487/port.o ${OBJECTDIR}/_ext/290614047/port.o ${OBJECTDIR}/_ext/290614047/portext.o ${OBJECTDIR}/_ext/1914141206/portasm.o ${OBJECTDIR}/_ext/1914141206/port.o ${OBJECTDIR}/_ext/623266235/portASM.o ${OBJECTDIR}/_ext/623266235/port.o ${OBJECTDIR}/_ext/791164657/portasm.o ${OBJECTDIR}/_ext/791164657/port.o ${OBJECTDIR}/_ext/523084622/heap_3.o ${OBJECTDIR}/_ext/523084622/heap_4.o ${OBJECTDIR}/_ext/523084622/heap_5.o ${OBJECTDIR}/_ext/523084622/heap_1.o ${OBJECTDIR}/_ext/523084622/heap_2.o ${OBJECTDIR}/_ext/430913507/port.o ${OBJECTDIR}/_ext/430914468/port.o ${OBJECTDIR}/_ext/430918312/port.o ${OBJECTDIR}/_ext/160491640/port.o ${OBJECTDIR}/_ext/1795641124/port.o ${OBJECTDIR}/_ext/1237622298/port.o ${OBJECTDIR}/_ext/666862117/port_asm.o ${OBJECTDIR}/_ext/666862117/port.o ${OBJECTDIR}/_ext/1434886805/port.o ${OBJECTDIR}/_ext/130836147/portasm.o ${OBJECTDIR}/_ext/130836147/port.o ${OBJECTDIR}/_ext/130836146/portasm.o ${OBJECTDIR}/_ext/130836146/port.o ${OBJECTDIR}/_ext/552203917/portasm.o ${OBJECTDIR}/_ext/552203917/port.o ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o ${OBJECTDIR}/_ext/912209894/xtensa_context.o ${OBJECTDIR}/_ext/912209894/portasm.o ${OBJECTDIR}/_ext/912209894/xtensa_intr.o ${OBJECTDIR}/_ext/912209894/portclib.o ${OBJECTDIR}/_ext/912209894/xtensa_init.o ${OBJECTDIR}/_ext/912209894/port.o ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o ${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o ${OBJECTDIR}/_ext/1173681791/wait_for_event.o ${OBJECTDIR}/_ext/1238046431/port.o ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o ${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o ${OBJECTDIR}/_ext/1544756697/xtensa_context.o ${OBJECTDIR}/_ext/1544756697/portasm.o ${OBJECTDIR}/_ext/1544756697/xtensa_intr.o ${OBJECTDIR}/_ext/1544756697/xtensa_init.o ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o ${OBJECTDIR}/_ext/1544756697/port.o ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o ${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o ${OBJECTDIR}/_ext/992749105/freertos_tls.o ${OBJECTDIR}/_ext/992749105/arc_support.o ${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o ${OBJECTDIR}/_ext/992749105/port.o ${OBJECTDIR}/_ext/732925268/arc_support.o ${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o ${OBJECTDIR}/_ext/732925268/port.o ${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o ${OBJECTDIR}/_ext/729821655/port.o ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o ${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o ${OBJECTDIR}/_ext/738169262/xtensa_context.o ${OBJECTDIR}/_ext/738169262/portasm.o ${OBJECTDIR}/_ext/738169262/xtensa_intr.o ${OBJECTDIR}/_ext/738169262/xtensa_init.o ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o ${OBJECTDIR}/_ext/738169262/port.o ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o ${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o ${OBJECTDIR}/_ext/307975644/port.o ${OBJECTDIR}/_ext/702484399/queue.o ${OBJECTDIR}/_ext/702484399/timers.o ${OBJECTDIR}/_ext/702484399/tasks.o ${OBJECTDIR}/_ext/702484399/event_groups.o ${OBJECTDIR}/_ext/702484399/croutine.o

# Source Files
SOURCEFILES=../src/iot_softap_wifi_provisioning.c ../src/main.c ../../../lib/afr/freertos_kernel/list.c ../../../lib/afr/freertos_kernel/stream_buffer.c ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/__STD_LIB_sbrk.c ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/port.c ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/__STD_LIB_sbrk.c ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/port.c ../../../lib/afr/freertos_kernel/portable/IAR/MSP430X/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port_asm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_init.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_heap.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/portASM.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port_asm.s ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port_asm.s ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM7S64/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM9XE/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AVR_AVRDx/port.c ../../../lib/afr/freertos_kernel/portable/IAR/STR91x/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/port.c ../../../lib/afr/freertos_kernel/portable/IAR/STR71x/port.c ../../../lib/afr/freertos_kernel/portable/IAR/STR75x/port.c ../../../lib/afr/freertos_kernel/portable/IAR/78K0R/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port_asm.s ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ATMega323/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/portASM.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/portASM.s ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/read.c ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/write.c ../../../lib/afr/freertos_kernel/portable/IAR/MSP430/port.c ../../../lib/afr/freertos_kernel/portable/IAR/V850ES/port.c ../../../lib/afr/freertos_kernel/portable/IAR/LPC2000/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/portASM.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RX700v3_DPFPU/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/port.c ../../../lib/afr/freertos_kernel/portable/IAR/RL78/port.c ../../../lib/afr/freertos_kernel/portable/IAR/AVR_Mega0/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port_asm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_init.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_heap.c ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/portasm.s ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/MikroC/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/SDCC/Cygnal/port.c ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port_exceptions.c ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/portISR.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/portasm.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_init.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_heap.c ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port_exceptions.c ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RX100/port.c ../../../lib/afr/freertos_kernel/portable/GCC/AVR_AVRDx/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM0/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM7/r0p1/port.c ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/portISR.c ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/port.c ../../../lib/afr/freertos_kernel/portable/GCC/HCS12/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/port.c ../../../lib/afr/freertos_kernel/portable/GCC/MCF5235/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/portISR.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RX200/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RX600/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/portISR.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/port.c ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/port.c ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port_asm.S ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ATMega323/port.c ../../../lib/afr/freertos_kernel/portable/GCC/H8S2329/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/portasm.c ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/port.c ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/exception.S ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/port.c ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/porttrap.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c ../../../lib/afr/freertos_kernel/portable/GCC/RX600v2/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RX700v3_DPFPU/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3/port.c ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/portasm.s ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/port.c ../../../lib/afr/freertos_kernel/portable/GCC/CORTUS_APS3/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/portISR.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/port.c ../../../lib/afr/freertos_kernel/portable/GCC/RL78/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/RL78/port.c ../../../lib/afr/freertos_kernel/portable/GCC/MSP430F449/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3_MPU/port.c ../../../lib/afr/freertos_kernel/portable/GCC/AVR_Mega0/port.c ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/port.c ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/portasm.S ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/portasm.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_init.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_heap.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4_MPU/port.c ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/portASM.S ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/port.c ../../../lib/afr/freertos_kernel/portable/Common/mpu_wrappers.c ../../../lib/afr/freertos_kernel/portable/Rowley/MSP430F449/port.c ../../../lib/afr/freertos_kernel/portable/Rowley/MSP430F449/portext.asm ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/small/port.c ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/large_untested/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM0/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM7/r0p1/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/portASM.s ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM3/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/portASM.s ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4_MPU/port.c ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/PC/port.c ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/Flsh186/port.c ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/common/portcomn.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port_asm.S ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port_asm.S ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC18F/port.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port_asm.S ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/port.c ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/PC/port.c ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/Flsh186/port.c ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/common/portcomn.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33/portasm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/portasm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23/portasm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23_NTZ/portasm.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33_NTZ/portasm.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23/portasm.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/port.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/init/secure_init.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/secure_context.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port_asm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port_asm.s ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM33/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM23/secure_context_port.c ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/heap/secure_heap.c ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/Tick.c ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/isrTick.c ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/port.c ../../../lib/afr/freertos_kernel/portable/CCS/MSP430X/port.c ../../../lib/afr/freertos_kernel/portable/CCS/MSP430X/portext.asm ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM3/portasm.asm ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM3/port.c ../../../lib/afr/freertos_kernel/portable/CCS/ARM_Cortex-R4/portASM.asm ../../../lib/afr/freertos_kernel/portable/CCS/ARM_Cortex-R4/port.c ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM4F/portasm.asm ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/MemMang/heap_3.c ../../../lib/afr/freertos_kernel/portable/MemMang/heap_4.c ../../../lib/afr/freertos_kernel/portable/MemMang/heap_5.c ../../../lib/afr/freertos_kernel/portable/MemMang/heap_1.c ../../../lib/afr/freertos_kernel/portable/MemMang/heap_2.c ../../../lib/afr/freertos_kernel/portable/Renesas/RX100/port.c ../../../lib/afr/freertos_kernel/portable/Renesas/RX200/port.c ../../../lib/afr/freertos_kernel/portable/Renesas/RX600/port.c ../../../lib/afr/freertos_kernel/portable/Renesas/SH2A_FPU/port.c ../../../lib/afr/freertos_kernel/portable/Renesas/RX600v2/port.c ../../../lib/afr/freertos_kernel/portable/Renesas/RX700v3_DPFPU/port.c ../../../lib/afr/freertos_kernel/portable/Tasking/ARM_CM4F/port_asm.asm ../../../lib/afr/freertos_kernel/portable/Tasking/ARM_CM4F/port.c ../../../lib/afr/freertos_kernel/portable/CodeWarrior/HCS12/port.c ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/portasm.S ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/port.c ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/portasm.S ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/portasm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_vectors.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_context.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portasm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portclib.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_init.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr_asm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr_asm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_support.s ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_support.s ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARM_CM33_TFM/os_wrapper_freertos.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ATmega/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vector_defaults.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vectors.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/FreeRTOS-openocd.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_context.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/portasm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_init.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_loadstore_handler.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/port.c ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr_asm.S ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_overlay_os_hook.c ../../../lib/afr/freertos_kernel/portable/MSVC-MingW/port.c ../../../lib/afr/freertos_kernel/queue.c ../../../lib/afr/freertos_kernel/timers.c ../../../lib/afr/freertos_kernel/tasks.c ../../../lib/afr/freertos_kernel/event_groups.c ../../../lib/afr/freertos_kernel/croutine.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/softap-wifi-provisioning.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM100
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/918530462/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/918530462" 
	@${RM} ${OBJECTDIR}/_ext/918530462/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/918530462/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/918530462/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/918530462/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/265561808" 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1263899881/portASM.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1263899881" 
	@${RM} ${OBJECTDIR}/_ext/1263899881/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1263899881/portASM.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1263899881/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1263899881/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2032074293/port_asm.o: ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2032074293" 
	@${RM} ${OBJECTDIR}/_ext/2032074293/port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2032074293/port_asm.o ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/2032074293/port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2032074293/port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1430140034/port_asm.o: ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1430140034" 
	@${RM} ${OBJECTDIR}/_ext/1430140034/port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1430140034/port_asm.o ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1430140034/port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1430140034/port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922849114/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922849114" 
	@${RM} ${OBJECTDIR}/_ext/1922849114/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1922849114/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1922849114/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922849114/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1451507757/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1451507757" 
	@${RM} ${OBJECTDIR}/_ext/1451507757/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1451507757/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1451507757/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1451507757/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1430144839/port_asm.o: ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1430144839" 
	@${RM} ${OBJECTDIR}/_ext/1430144839/port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1430144839/port_asm.o ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1430144839/port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1430144839/port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1121679227/portASM.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1121679227" 
	@${RM} ${OBJECTDIR}/_ext/1121679227/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1121679227/portASM.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1121679227/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1121679227/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1371846425/portASM.o: ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1371846425" 
	@${RM} ${OBJECTDIR}/_ext/1371846425/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1371846425/portASM.o ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1371846425/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1371846425/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2092672428/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2092672428" 
	@${RM} ${OBJECTDIR}/_ext/2092672428/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2092672428/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/2092672428/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2092672428/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922848751/portASM.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922848751" 
	@${RM} ${OBJECTDIR}/_ext/1922848751/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1922848751/portASM.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1922848751/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922848751/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/848985171/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/848985171" 
	@${RM} ${OBJECTDIR}/_ext/848985171/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/848985171/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/848985171/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/848985171/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922849117/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922849117" 
	@${RM} ${OBJECTDIR}/_ext/1922849117/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1922849117/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1922849117/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922849117/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386322171/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386322171" 
	@${RM} ${OBJECTDIR}/_ext/1386322171/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1386322171/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1386322171/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386322171/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/625127455/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625127455" 
	@${RM} ${OBJECTDIR}/_ext/625127455/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/625127455/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/625127455/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/625127455/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1541892655" 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/521219416/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/521219416" 
	@${RM} ${OBJECTDIR}/_ext/521219416/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/521219416/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/521219416/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/521219416/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/251511942/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/251511942" 
	@${RM} ${OBJECTDIR}/_ext/251511942/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/251511942/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/251511942/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/251511942/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285461680/portASM.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/285461680" 
	@${RM} ${OBJECTDIR}/_ext/285461680/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/285461680/portASM.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/285461680/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285461680/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/78371810/portASM.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/78371810" 
	@${RM} ${OBJECTDIR}/_ext/78371810/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/78371810/portASM.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/78371810/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/78371810/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2043123164/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2043123164" 
	@${RM} ${OBJECTDIR}/_ext/2043123164/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2043123164/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/2043123164/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2043123164/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2089340370/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2089340370" 
	@${RM} ${OBJECTDIR}/_ext/2089340370/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2089340370/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/2089340370/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2089340370/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2117969521/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2117969521" 
	@${RM} ${OBJECTDIR}/_ext/2117969521/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2117969521/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/2117969521/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2117969521/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2043123133/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2043123133" 
	@${RM} ${OBJECTDIR}/_ext/2043123133/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2043123133/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/2043123133/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2043123133/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1031683254" 
	@${RM} ${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1031683285" 
	@${RM} ${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992749105/arc_support.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_support.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992749105" 
	@${RM} ${OBJECTDIR}/_ext/992749105/arc_support.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/992749105/arc_support.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_support.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/992749105/arc_support.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/992749105/arc_support.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/732925268/arc_support.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_support.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732925268" 
	@${RM} ${OBJECTDIR}/_ext/732925268/arc_support.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/732925268/arc_support.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_support.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/732925268/arc_support.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/732925268/arc_support.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/918530462/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/918530462" 
	@${RM} ${OBJECTDIR}/_ext/918530462/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/918530462/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/918530462/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/918530462/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/265561808" 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/265561808/secure_context_port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1263899881/portASM.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1263899881" 
	@${RM} ${OBJECTDIR}/_ext/1263899881/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1263899881/portASM.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1263899881/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1263899881/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2032074293/port_asm.o: ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2032074293" 
	@${RM} ${OBJECTDIR}/_ext/2032074293/port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2032074293/port_asm.o ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/2032074293/port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2032074293/port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1430140034/port_asm.o: ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1430140034" 
	@${RM} ${OBJECTDIR}/_ext/1430140034/port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1430140034/port_asm.o ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1430140034/port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1430140034/port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922849114/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922849114" 
	@${RM} ${OBJECTDIR}/_ext/1922849114/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1922849114/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1922849114/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922849114/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1451507757/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1451507757" 
	@${RM} ${OBJECTDIR}/_ext/1451507757/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1451507757/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1451507757/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1451507757/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1430144839/port_asm.o: ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1430144839" 
	@${RM} ${OBJECTDIR}/_ext/1430144839/port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1430144839/port_asm.o ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1430144839/port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1430144839/port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1121679227/portASM.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1121679227" 
	@${RM} ${OBJECTDIR}/_ext/1121679227/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1121679227/portASM.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1121679227/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1121679227/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1371846425/portASM.o: ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1371846425" 
	@${RM} ${OBJECTDIR}/_ext/1371846425/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1371846425/portASM.o ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1371846425/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1371846425/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2092672428/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2092672428" 
	@${RM} ${OBJECTDIR}/_ext/2092672428/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2092672428/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/2092672428/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2092672428/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922848751/portASM.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922848751" 
	@${RM} ${OBJECTDIR}/_ext/1922848751/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1922848751/portASM.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1922848751/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922848751/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/848985171/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/848985171" 
	@${RM} ${OBJECTDIR}/_ext/848985171/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/848985171/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/848985171/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/848985171/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922849117/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922849117" 
	@${RM} ${OBJECTDIR}/_ext/1922849117/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1922849117/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1922849117/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922849117/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386322171/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386322171" 
	@${RM} ${OBJECTDIR}/_ext/1386322171/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1386322171/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1386322171/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386322171/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/625127455/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625127455" 
	@${RM} ${OBJECTDIR}/_ext/625127455/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/625127455/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/625127455/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/625127455/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1541892655" 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541892655/secure_context_port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/521219416/portasm.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/521219416" 
	@${RM} ${OBJECTDIR}/_ext/521219416/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/521219416/portasm.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/521219416/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/521219416/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/251511942/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/251511942" 
	@${RM} ${OBJECTDIR}/_ext/251511942/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/251511942/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/251511942/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/251511942/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285461680/portASM.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/285461680" 
	@${RM} ${OBJECTDIR}/_ext/285461680/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/285461680/portASM.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/285461680/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/285461680/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/78371810/portASM.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/portASM.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/78371810" 
	@${RM} ${OBJECTDIR}/_ext/78371810/portASM.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/78371810/portASM.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/portASM.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/78371810/portASM.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/78371810/portASM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2043123164/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2043123164" 
	@${RM} ${OBJECTDIR}/_ext/2043123164/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2043123164/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/2043123164/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2043123164/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2089340370/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2089340370" 
	@${RM} ${OBJECTDIR}/_ext/2089340370/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2089340370/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23_NTZ/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/2089340370/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2089340370/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2117969521/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2117969521" 
	@${RM} ${OBJECTDIR}/_ext/2117969521/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2117969521/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/2117969521/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2117969521/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2043123133/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23/portasm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2043123133" 
	@${RM} ${OBJECTDIR}/_ext/2043123133/portasm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/2043123133/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM23/portasm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/2043123133/portasm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2043123133/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1031683254" 
	@${RM} ${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1031683254/secure_context_port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1031683285" 
	@${RM} ${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port_asm.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1031683285/secure_context_port_asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992749105/arc_support.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_support.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992749105" 
	@${RM} ${OBJECTDIR}/_ext/992749105/arc_support.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/992749105/arc_support.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_support.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/992749105/arc_support.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/992749105/arc_support.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/732925268/arc_support.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_support.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732925268" 
	@${RM} ${OBJECTDIR}/_ext/732925268/arc_support.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${OBJECTDIR}/_ext/732925268/arc_support.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_support.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/732925268/arc_support.o.d" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/732925268/arc_support.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1184804963/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804963" 
	@${RM} ${OBJECTDIR}/_ext/1184804963/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804963/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/1184804963/portasm.o.ok ${OBJECTDIR}/_ext/1184804963/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804963/portasm.o.d"  -o ${OBJECTDIR}/_ext/1184804963/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1184804963/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804963/portasm.o.d" "${OBJECTDIR}/_ext/1184804963/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1184804964/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804964" 
	@${RM} ${OBJECTDIR}/_ext/1184804964/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804964/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/1184804964/portasm.o.ok ${OBJECTDIR}/_ext/1184804964/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804964/portasm.o.d"  -o ${OBJECTDIR}/_ext/1184804964/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1184804964/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804964/portasm.o.d" "${OBJECTDIR}/_ext/1184804964/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1781124133/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1781124133" 
	@${RM} ${OBJECTDIR}/_ext/1781124133/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1781124133/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/1781124133/portasm.o.ok ${OBJECTDIR}/_ext/1781124133/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1781124133/portasm.o.d"  -o ${OBJECTDIR}/_ext/1781124133/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1781124133/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1781124133/portasm.o.d" "${OBJECTDIR}/_ext/1781124133/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/948145979/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/948145979" 
	@${RM} ${OBJECTDIR}/_ext/948145979/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/948145979/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/948145979/portASM.o.ok ${OBJECTDIR}/_ext/948145979/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/948145979/portASM.o.d"  -o ${OBJECTDIR}/_ext/948145979/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/948145979/portASM.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/948145979/portASM.o.d" "${OBJECTDIR}/_ext/948145979/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1988497755/port_asm.o: ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1988497755" 
	@${RM} ${OBJECTDIR}/_ext/1988497755/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1988497755/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1988497755/port_asm.o.ok ${OBJECTDIR}/_ext/1988497755/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1988497755/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1988497755/port_asm.o ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1988497755/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1988497755/port_asm.o.d" "${OBJECTDIR}/_ext/1988497755/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1647804360/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647804360" 
	@${RM} ${OBJECTDIR}/_ext/1647804360/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647804360/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/1647804360/portASM.o.ok ${OBJECTDIR}/_ext/1647804360/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1647804360/portASM.o.d"  -o ${OBJECTDIR}/_ext/1647804360/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1647804360/portASM.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647804360/portASM.o.d" "${OBJECTDIR}/_ext/1647804360/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2072580556/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2072580556" 
	@${RM} ${OBJECTDIR}/_ext/2072580556/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/2072580556/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/2072580556/portASM.o.ok ${OBJECTDIR}/_ext/2072580556/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2072580556/portASM.o.d"  -o ${OBJECTDIR}/_ext/2072580556/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2072580556/portASM.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2072580556/portASM.o.d" "${OBJECTDIR}/_ext/2072580556/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/300548614/exception.o: ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/exception.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300548614" 
	@${RM} ${OBJECTDIR}/_ext/300548614/exception.o.d 
	@${RM} ${OBJECTDIR}/_ext/300548614/exception.o 
	@${RM} ${OBJECTDIR}/_ext/300548614/exception.o.ok ${OBJECTDIR}/_ext/300548614/exception.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/300548614/exception.o.d"  -o ${OBJECTDIR}/_ext/300548614/exception.o ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/exception.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/300548614/exception.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/300548614/exception.o.d" "${OBJECTDIR}/_ext/300548614/exception.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196964/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196964" 
	@${RM} ${OBJECTDIR}/_ext/2124196964/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196964/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/2124196964/portASM.o.ok ${OBJECTDIR}/_ext/2124196964/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196964/portASM.o.d"  -o ${OBJECTDIR}/_ext/2124196964/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2124196964/portASM.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196964/portASM.o.d" "${OBJECTDIR}/_ext/2124196964/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1501352208/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1501352208" 
	@${RM} ${OBJECTDIR}/_ext/1501352208/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1501352208/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/1501352208/portASM.o.ok ${OBJECTDIR}/_ext/1501352208/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1501352208/portASM.o.d"  -o ${OBJECTDIR}/_ext/1501352208/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1501352208/portASM.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1501352208/portASM.o.d" "${OBJECTDIR}/_ext/1501352208/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/122828951/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/RL78/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122828951" 
	@${RM} ${OBJECTDIR}/_ext/122828951/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/122828951/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/122828951/portasm.o.ok ${OBJECTDIR}/_ext/122828951/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/122828951/portasm.o.d"  -o ${OBJECTDIR}/_ext/122828951/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/RL78/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/122828951/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/122828951/portasm.o.d" "${OBJECTDIR}/_ext/122828951/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/878282853/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/878282853" 
	@${RM} ${OBJECTDIR}/_ext/878282853/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/878282853/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/878282853/portasm.o.ok ${OBJECTDIR}/_ext/878282853/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/878282853/portasm.o.d"  -o ${OBJECTDIR}/_ext/878282853/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/878282853/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/878282853/portasm.o.d" "${OBJECTDIR}/_ext/878282853/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2114282510/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2114282510" 
	@${RM} ${OBJECTDIR}/_ext/2114282510/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2114282510/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/2114282510/portasm.o.ok ${OBJECTDIR}/_ext/2114282510/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2114282510/portasm.o.d"  -o ${OBJECTDIR}/_ext/2114282510/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2114282510/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2114282510/portasm.o.d" "${OBJECTDIR}/_ext/2114282510/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196441/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196441" 
	@${RM} ${OBJECTDIR}/_ext/2124196441/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196441/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/2124196441/portASM.o.ok ${OBJECTDIR}/_ext/2124196441/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196441/portASM.o.d"  -o ${OBJECTDIR}/_ext/2124196441/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2124196441/portASM.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196441/portASM.o.d" "${OBJECTDIR}/_ext/2124196441/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/205153989/port_asm.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/205153989" 
	@${RM} ${OBJECTDIR}/_ext/205153989/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/205153989/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/205153989/port_asm.o.ok ${OBJECTDIR}/_ext/205153989/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/205153989/port_asm.o.d"  -o ${OBJECTDIR}/_ext/205153989/port_asm.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/205153989/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/205153989/port_asm.o.d" "${OBJECTDIR}/_ext/205153989/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/52748546/port_asm.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/52748546" 
	@${RM} ${OBJECTDIR}/_ext/52748546/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/52748546/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/52748546/port_asm.o.ok ${OBJECTDIR}/_ext/52748546/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/52748546/port_asm.o.d"  -o ${OBJECTDIR}/_ext/52748546/port_asm.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/52748546/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/52748546/port_asm.o.d" "${OBJECTDIR}/_ext/52748546/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/205153987/port_asm.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/205153987" 
	@${RM} ${OBJECTDIR}/_ext/205153987/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/205153987/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/205153987/port_asm.o.ok ${OBJECTDIR}/_ext/205153987/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/205153987/port_asm.o.d"  -o ${OBJECTDIR}/_ext/205153987/port_asm.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/205153987/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/205153987/port_asm.o.d" "${OBJECTDIR}/_ext/205153987/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/437362351/portasm_PIC24.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/437362351" 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.d 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.ok ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.d"  -o ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.d" "${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/437362351" 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.ok ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.d"  -o ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.d" "${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/130836147/portasm.o: ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/130836147" 
	@${RM} ${OBJECTDIR}/_ext/130836147/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/130836147/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/130836147/portasm.o.ok ${OBJECTDIR}/_ext/130836147/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/130836147/portasm.o.d"  -o ${OBJECTDIR}/_ext/130836147/portasm.o ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/130836147/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/130836147/portasm.o.d" "${OBJECTDIR}/_ext/130836147/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/130836146/portasm.o: ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/130836146" 
	@${RM} ${OBJECTDIR}/_ext/130836146/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/130836146/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/130836146/portasm.o.ok ${OBJECTDIR}/_ext/130836146/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/130836146/portasm.o.d"  -o ${OBJECTDIR}/_ext/130836146/portasm.o ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/130836146/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/130836146/portasm.o.d" "${OBJECTDIR}/_ext/130836146/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/552203917/portasm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/552203917" 
	@${RM} ${OBJECTDIR}/_ext/552203917/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/552203917/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/552203917/portasm.o.ok ${OBJECTDIR}/_ext/552203917/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/552203917/portasm.o.d"  -o ${OBJECTDIR}/_ext/552203917/portasm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/552203917/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/552203917/portasm.o.d" "${OBJECTDIR}/_ext/552203917/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_vectors.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_vectors.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.ok ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.d"  -o ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_vectors.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.d" "${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_context.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_context.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_context.o 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_context.o.ok ${OBJECTDIR}/_ext/912209894/xtensa_context.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_context.o.d"  -o ${OBJECTDIR}/_ext/912209894/xtensa_context.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_context.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912209894/xtensa_context.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_context.o.d" "${OBJECTDIR}/_ext/912209894/xtensa_context.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/portasm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/912209894/portasm.o.ok ${OBJECTDIR}/_ext/912209894/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/portasm.o.d"  -o ${OBJECTDIR}/_ext/912209894/portasm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912209894/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/portasm.o.d" "${OBJECTDIR}/_ext/912209894/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.ok ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.d"  -o ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.d" "${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.ok ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.d"  -o ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.d" "${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.ok ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.d"  -o ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.d" "${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_context.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_context.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_context.o.ok ${OBJECTDIR}/_ext/1544756697/xtensa_context.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_context.o.d"  -o ${OBJECTDIR}/_ext/1544756697/xtensa_context.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/xtensa_context.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_context.o.d" "${OBJECTDIR}/_ext/1544756697/xtensa_context.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/portasm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/portasm.o.ok ${OBJECTDIR}/_ext/1544756697/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/portasm.o.d"  -o ${OBJECTDIR}/_ext/1544756697/portasm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/portasm.o.d" "${OBJECTDIR}/_ext/1544756697/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.ok ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.d"  -o ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.d" "${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.ok ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.d"  -o ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.d" "${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vector_defaults.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.ok ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.d"  -o ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vector_defaults.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.d" "${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_vectors.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vectors.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.ok ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.d"  -o ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vectors.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.d" "${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_context.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_context.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_context.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_context.o.ok ${OBJECTDIR}/_ext/738169262/xtensa_context.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_context.o.d"  -o ${OBJECTDIR}/_ext/738169262/xtensa_context.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_context.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/xtensa_context.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_context.o.d" "${OBJECTDIR}/_ext/738169262/xtensa_context.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/portasm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/portasm.o.ok ${OBJECTDIR}/_ext/738169262/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/portasm.o.d"  -o ${OBJECTDIR}/_ext/738169262/portasm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/portasm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/portasm.o.d" "${OBJECTDIR}/_ext/738169262/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_loadstore_handler.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.ok ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.d"  -o ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_loadstore_handler.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.d" "${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.ok ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.d"  -o ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.d" "${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1184804963/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804963" 
	@${RM} ${OBJECTDIR}/_ext/1184804963/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804963/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/1184804963/portasm.o.ok ${OBJECTDIR}/_ext/1184804963/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804963/portasm.o.d"  -o ${OBJECTDIR}/_ext/1184804963/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1184804963/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804963/portasm.o.d" "${OBJECTDIR}/_ext/1184804963/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1184804964/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804964" 
	@${RM} ${OBJECTDIR}/_ext/1184804964/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804964/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/1184804964/portasm.o.ok ${OBJECTDIR}/_ext/1184804964/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804964/portasm.o.d"  -o ${OBJECTDIR}/_ext/1184804964/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1184804964/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804964/portasm.o.d" "${OBJECTDIR}/_ext/1184804964/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1781124133/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1781124133" 
	@${RM} ${OBJECTDIR}/_ext/1781124133/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1781124133/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/1781124133/portasm.o.ok ${OBJECTDIR}/_ext/1781124133/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1781124133/portasm.o.d"  -o ${OBJECTDIR}/_ext/1781124133/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1781124133/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1781124133/portasm.o.d" "${OBJECTDIR}/_ext/1781124133/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/948145979/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/948145979" 
	@${RM} ${OBJECTDIR}/_ext/948145979/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/948145979/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/948145979/portASM.o.ok ${OBJECTDIR}/_ext/948145979/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/948145979/portASM.o.d"  -o ${OBJECTDIR}/_ext/948145979/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/948145979/portASM.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/948145979/portASM.o.d" "${OBJECTDIR}/_ext/948145979/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1988497755/port_asm.o: ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1988497755" 
	@${RM} ${OBJECTDIR}/_ext/1988497755/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1988497755/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1988497755/port_asm.o.ok ${OBJECTDIR}/_ext/1988497755/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1988497755/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1988497755/port_asm.o ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1988497755/port_asm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1988497755/port_asm.o.d" "${OBJECTDIR}/_ext/1988497755/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1647804360/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647804360" 
	@${RM} ${OBJECTDIR}/_ext/1647804360/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647804360/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/1647804360/portASM.o.ok ${OBJECTDIR}/_ext/1647804360/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1647804360/portASM.o.d"  -o ${OBJECTDIR}/_ext/1647804360/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1647804360/portASM.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647804360/portASM.o.d" "${OBJECTDIR}/_ext/1647804360/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2072580556/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2072580556" 
	@${RM} ${OBJECTDIR}/_ext/2072580556/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/2072580556/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/2072580556/portASM.o.ok ${OBJECTDIR}/_ext/2072580556/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2072580556/portASM.o.d"  -o ${OBJECTDIR}/_ext/2072580556/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2072580556/portASM.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2072580556/portASM.o.d" "${OBJECTDIR}/_ext/2072580556/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/300548614/exception.o: ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/exception.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300548614" 
	@${RM} ${OBJECTDIR}/_ext/300548614/exception.o.d 
	@${RM} ${OBJECTDIR}/_ext/300548614/exception.o 
	@${RM} ${OBJECTDIR}/_ext/300548614/exception.o.ok ${OBJECTDIR}/_ext/300548614/exception.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/300548614/exception.o.d"  -o ${OBJECTDIR}/_ext/300548614/exception.o ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/exception.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/300548614/exception.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/300548614/exception.o.d" "${OBJECTDIR}/_ext/300548614/exception.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196964/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196964" 
	@${RM} ${OBJECTDIR}/_ext/2124196964/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196964/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/2124196964/portASM.o.ok ${OBJECTDIR}/_ext/2124196964/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196964/portASM.o.d"  -o ${OBJECTDIR}/_ext/2124196964/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2124196964/portASM.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196964/portASM.o.d" "${OBJECTDIR}/_ext/2124196964/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1501352208/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1501352208" 
	@${RM} ${OBJECTDIR}/_ext/1501352208/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1501352208/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/1501352208/portASM.o.ok ${OBJECTDIR}/_ext/1501352208/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1501352208/portASM.o.d"  -o ${OBJECTDIR}/_ext/1501352208/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1501352208/portASM.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1501352208/portASM.o.d" "${OBJECTDIR}/_ext/1501352208/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/122828951/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/RL78/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122828951" 
	@${RM} ${OBJECTDIR}/_ext/122828951/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/122828951/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/122828951/portasm.o.ok ${OBJECTDIR}/_ext/122828951/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/122828951/portasm.o.d"  -o ${OBJECTDIR}/_ext/122828951/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/RL78/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/122828951/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/122828951/portasm.o.d" "${OBJECTDIR}/_ext/122828951/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/878282853/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/878282853" 
	@${RM} ${OBJECTDIR}/_ext/878282853/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/878282853/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/878282853/portasm.o.ok ${OBJECTDIR}/_ext/878282853/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/878282853/portasm.o.d"  -o ${OBJECTDIR}/_ext/878282853/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/878282853/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/878282853/portasm.o.d" "${OBJECTDIR}/_ext/878282853/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2114282510/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2114282510" 
	@${RM} ${OBJECTDIR}/_ext/2114282510/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2114282510/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/2114282510/portasm.o.ok ${OBJECTDIR}/_ext/2114282510/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2114282510/portasm.o.d"  -o ${OBJECTDIR}/_ext/2114282510/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2114282510/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2114282510/portasm.o.d" "${OBJECTDIR}/_ext/2114282510/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196441/portASM.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/portASM.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196441" 
	@${RM} ${OBJECTDIR}/_ext/2124196441/portASM.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196441/portASM.o 
	@${RM} ${OBJECTDIR}/_ext/2124196441/portASM.o.ok ${OBJECTDIR}/_ext/2124196441/portASM.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196441/portASM.o.d"  -o ${OBJECTDIR}/_ext/2124196441/portASM.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/portASM.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2124196441/portASM.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196441/portASM.o.d" "${OBJECTDIR}/_ext/2124196441/portASM.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/205153989/port_asm.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/205153989" 
	@${RM} ${OBJECTDIR}/_ext/205153989/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/205153989/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/205153989/port_asm.o.ok ${OBJECTDIR}/_ext/205153989/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/205153989/port_asm.o.d"  -o ${OBJECTDIR}/_ext/205153989/port_asm.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/205153989/port_asm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/205153989/port_asm.o.d" "${OBJECTDIR}/_ext/205153989/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/52748546/port_asm.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/52748546" 
	@${RM} ${OBJECTDIR}/_ext/52748546/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/52748546/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/52748546/port_asm.o.ok ${OBJECTDIR}/_ext/52748546/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/52748546/port_asm.o.d"  -o ${OBJECTDIR}/_ext/52748546/port_asm.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/52748546/port_asm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/52748546/port_asm.o.d" "${OBJECTDIR}/_ext/52748546/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/205153987/port_asm.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/205153987" 
	@${RM} ${OBJECTDIR}/_ext/205153987/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/205153987/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/205153987/port_asm.o.ok ${OBJECTDIR}/_ext/205153987/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/205153987/port_asm.o.d"  -o ${OBJECTDIR}/_ext/205153987/port_asm.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/205153987/port_asm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/205153987/port_asm.o.d" "${OBJECTDIR}/_ext/205153987/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/437362351/portasm_PIC24.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/437362351" 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.d 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.ok ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.d"  -o ${OBJECTDIR}/_ext/437362351/portasm_PIC24.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.d" "${OBJECTDIR}/_ext/437362351/portasm_PIC24.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/437362351" 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.d 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o 
	@${RM} ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.ok ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.d"  -o ${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/portasm_dsPIC.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.d" "${OBJECTDIR}/_ext/437362351/portasm_dsPIC.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/130836147/portasm.o: ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/130836147" 
	@${RM} ${OBJECTDIR}/_ext/130836147/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/130836147/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/130836147/portasm.o.ok ${OBJECTDIR}/_ext/130836147/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/130836147/portasm.o.d"  -o ${OBJECTDIR}/_ext/130836147/portasm.o ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/130836147/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/130836147/portasm.o.d" "${OBJECTDIR}/_ext/130836147/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/130836146/portasm.o: ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/130836146" 
	@${RM} ${OBJECTDIR}/_ext/130836146/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/130836146/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/130836146/portasm.o.ok ${OBJECTDIR}/_ext/130836146/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/130836146/portasm.o.d"  -o ${OBJECTDIR}/_ext/130836146/portasm.o ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/130836146/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/130836146/portasm.o.d" "${OBJECTDIR}/_ext/130836146/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/552203917/portasm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/552203917" 
	@${RM} ${OBJECTDIR}/_ext/552203917/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/552203917/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/552203917/portasm.o.ok ${OBJECTDIR}/_ext/552203917/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/552203917/portasm.o.d"  -o ${OBJECTDIR}/_ext/552203917/portasm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/552203917/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/552203917/portasm.o.d" "${OBJECTDIR}/_ext/552203917/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_vectors.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_vectors.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.ok ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.d"  -o ${OBJECTDIR}/_ext/912209894/xtensa_vectors.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_vectors.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.d" "${OBJECTDIR}/_ext/912209894/xtensa_vectors.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_context.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_context.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_context.o 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_context.o.ok ${OBJECTDIR}/_ext/912209894/xtensa_context.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_context.o.d"  -o ${OBJECTDIR}/_ext/912209894/xtensa_context.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_context.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912209894/xtensa_context.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_context.o.d" "${OBJECTDIR}/_ext/912209894/xtensa_context.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/portasm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/912209894/portasm.o.ok ${OBJECTDIR}/_ext/912209894/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/portasm.o.d"  -o ${OBJECTDIR}/_ext/912209894/portasm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912209894/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/portasm.o.d" "${OBJECTDIR}/_ext/912209894/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.ok ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.d"  -o ${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.d" "${OBJECTDIR}/_ext/912209894/xtensa_intr_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.ok ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.d"  -o ${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vector_defaults.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.d" "${OBJECTDIR}/_ext/1544756697/xtensa_vector_defaults.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.ok ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.d"  -o ${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_vectors.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.d" "${OBJECTDIR}/_ext/1544756697/xtensa_vectors.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_context.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_context.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_context.o.ok ${OBJECTDIR}/_ext/1544756697/xtensa_context.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_context.o.d"  -o ${OBJECTDIR}/_ext/1544756697/xtensa_context.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_context.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/xtensa_context.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_context.o.d" "${OBJECTDIR}/_ext/1544756697/xtensa_context.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/portasm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/portasm.o.ok ${OBJECTDIR}/_ext/1544756697/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/portasm.o.d"  -o ${OBJECTDIR}/_ext/1544756697/portasm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/portasm.o.d" "${OBJECTDIR}/_ext/1544756697/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.ok ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.d"  -o ${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_loadstore_handler.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.d" "${OBJECTDIR}/_ext/1544756697/xtensa_loadstore_handler.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.ok ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.d"  -o ${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.d" "${OBJECTDIR}/_ext/1544756697/xtensa_intr_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vector_defaults.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.ok ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.d"  -o ${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vector_defaults.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.d" "${OBJECTDIR}/_ext/738169262/xtensa_vector_defaults.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_vectors.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vectors.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.ok ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.d"  -o ${OBJECTDIR}/_ext/738169262/xtensa_vectors.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_vectors.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.d" "${OBJECTDIR}/_ext/738169262/xtensa_vectors.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_context.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_context.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_context.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_context.o.ok ${OBJECTDIR}/_ext/738169262/xtensa_context.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_context.o.d"  -o ${OBJECTDIR}/_ext/738169262/xtensa_context.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_context.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/xtensa_context.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_context.o.d" "${OBJECTDIR}/_ext/738169262/xtensa_context.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/portasm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/portasm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/portasm.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/portasm.o.ok ${OBJECTDIR}/_ext/738169262/portasm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/portasm.o.d"  -o ${OBJECTDIR}/_ext/738169262/portasm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/portasm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/portasm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/portasm.o.d" "${OBJECTDIR}/_ext/738169262/portasm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_loadstore_handler.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.ok ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.d"  -o ${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_loadstore_handler.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.d" "${OBJECTDIR}/_ext/738169262/xtensa_loadstore_handler.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.ok ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.d"  -o ${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.d" "${OBJECTDIR}/_ext/738169262/xtensa_intr_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o: ../src/iot_softap_wifi_provisioning.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o.d" -o ${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o ../src/iot_softap_wifi_provisioning.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/list.o: ../../../lib/afr/freertos_kernel/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/list.o.d" -o ${OBJECTDIR}/_ext/702484399/list.o ../../../lib/afr/freertos_kernel/list.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/stream_buffer.o: ../../../lib/afr/freertos_kernel/stream_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/702484399/stream_buffer.o ../../../lib/afr/freertos_kernel/stream_buffer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/stream_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o: ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/__STD_LIB_sbrk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/557570976" 
	@${RM} ${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o.d 
	@${RM} ${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o.d" -o ${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/__STD_LIB_sbrk.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/557570976/port.o: ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/557570976" 
	@${RM} ${OBJECTDIR}/_ext/557570976/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/557570976/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/557570976/port.o.d" -o ${OBJECTDIR}/_ext/557570976/port.o ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/557570976/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o: ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/__STD_LIB_sbrk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/557423044" 
	@${RM} ${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o.d 
	@${RM} ${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o.d" -o ${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/__STD_LIB_sbrk.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/557423044/port.o: ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/557423044" 
	@${RM} ${OBJECTDIR}/_ext/557423044/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/557423044/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/557423044/port.o.d" -o ${OBJECTDIR}/_ext/557423044/port.o ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/557423044/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/281906136/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/MSP430X/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/281906136" 
	@${RM} ${OBJECTDIR}/_ext/281906136/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/281906136/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/281906136/port.o.d" -o ${OBJECTDIR}/_ext/281906136/port.o ../../../lib/afr/freertos_kernel/portable/IAR/MSP430X/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/281906136/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/918530462/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/918530462" 
	@${RM} ${OBJECTDIR}/_ext/918530462/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/918530462/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/918530462/port.o.d" -o ${OBJECTDIR}/_ext/918530462/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/918530462/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/265561808/secure_context.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/265561808" 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/265561808/secure_context.o.d" -o ${OBJECTDIR}/_ext/265561808/secure_context.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/265561808/secure_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/265561808/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/265561808" 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/265561808/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/265561808/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/265561808/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/265561808/secure_init.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/265561808" 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/265561808/secure_init.o.d" -o ${OBJECTDIR}/_ext/265561808/secure_init.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/265561808/secure_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/265561808/secure_heap.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_heap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/265561808" 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_heap.o.d 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_heap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/265561808/secure_heap.o.d" -o ${OBJECTDIR}/_ext/265561808/secure_heap.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_heap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/265561808/secure_heap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1263899881/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1263899881" 
	@${RM} ${OBJECTDIR}/_ext/1263899881/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1263899881/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1263899881/port.o.d" -o ${OBJECTDIR}/_ext/1263899881/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1263899881/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2032074293/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2032074293" 
	@${RM} ${OBJECTDIR}/_ext/2032074293/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032074293/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2032074293/port.o.d" -o ${OBJECTDIR}/_ext/2032074293/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2032074293/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1430140034/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1430140034" 
	@${RM} ${OBJECTDIR}/_ext/1430140034/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1430140034/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1430140034/port.o.d" -o ${OBJECTDIR}/_ext/1430140034/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1430140034/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/314519745/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM7S64/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/314519745" 
	@${RM} ${OBJECTDIR}/_ext/314519745/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/314519745/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/314519745/port.o.d" -o ${OBJECTDIR}/_ext/314519745/port.o ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM7S64/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/314519745/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1652420097/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM9XE/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1652420097" 
	@${RM} ${OBJECTDIR}/_ext/1652420097/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1652420097/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1652420097/port.o.d" -o ${OBJECTDIR}/_ext/1652420097/port.o ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM9XE/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1652420097/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/455624890/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/AVR_AVRDx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/455624890" 
	@${RM} ${OBJECTDIR}/_ext/455624890/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/455624890/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/455624890/port.o.d" -o ${OBJECTDIR}/_ext/455624890/port.o ../../../lib/afr/freertos_kernel/portable/IAR/AVR_AVRDx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/455624890/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1410595064/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/STR91x/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1410595064" 
	@${RM} ${OBJECTDIR}/_ext/1410595064/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1410595064/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1410595064/port.o.d" -o ${OBJECTDIR}/_ext/1410595064/port.o ../../../lib/afr/freertos_kernel/portable/IAR/STR91x/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1410595064/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922849114/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922849114" 
	@${RM} ${OBJECTDIR}/_ext/1922849114/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1922849114/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1922849114/port.o.d" -o ${OBJECTDIR}/_ext/1922849114/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922849114/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1451507757/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1451507757" 
	@${RM} ${OBJECTDIR}/_ext/1451507757/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451507757/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1451507757/port.o.d" -o ${OBJECTDIR}/_ext/1451507757/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1451507757/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1410593142/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/STR71x/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1410593142" 
	@${RM} ${OBJECTDIR}/_ext/1410593142/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1410593142/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1410593142/port.o.d" -o ${OBJECTDIR}/_ext/1410593142/port.o ../../../lib/afr/freertos_kernel/portable/IAR/STR71x/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1410593142/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1410593266/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/STR75x/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1410593266" 
	@${RM} ${OBJECTDIR}/_ext/1410593266/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1410593266/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1410593266/port.o.d" -o ${OBJECTDIR}/_ext/1410593266/port.o ../../../lib/afr/freertos_kernel/portable/IAR/STR75x/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1410593266/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1404276675/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/78K0R/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1404276675" 
	@${RM} ${OBJECTDIR}/_ext/1404276675/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1404276675/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1404276675/port.o.d" -o ${OBJECTDIR}/_ext/1404276675/port.o ../../../lib/afr/freertos_kernel/portable/IAR/78K0R/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1404276675/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1430144839/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1430144839" 
	@${RM} ${OBJECTDIR}/_ext/1430144839/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1430144839/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1430144839/port.o.d" -o ${OBJECTDIR}/_ext/1430144839/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1430144839/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/418336614/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ATMega323/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/418336614" 
	@${RM} ${OBJECTDIR}/_ext/418336614/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/418336614/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/418336614/port.o.d" -o ${OBJECTDIR}/_ext/418336614/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ATMega323/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/418336614/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1121679227/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1121679227" 
	@${RM} ${OBJECTDIR}/_ext/1121679227/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1121679227/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1121679227/port.o.d" -o ${OBJECTDIR}/_ext/1121679227/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1121679227/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1371846425/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1371846425" 
	@${RM} ${OBJECTDIR}/_ext/1371846425/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1371846425/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1371846425/port.o.d" -o ${OBJECTDIR}/_ext/1371846425/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1371846425/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2092672428/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2092672428" 
	@${RM} ${OBJECTDIR}/_ext/2092672428/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2092672428/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2092672428/port.o.d" -o ${OBJECTDIR}/_ext/2092672428/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2092672428/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1728889447/read.o: ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1728889447" 
	@${RM} ${OBJECTDIR}/_ext/1728889447/read.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728889447/read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1728889447/read.o.d" -o ${OBJECTDIR}/_ext/1728889447/read.o ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/read.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1728889447/read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1728889447/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1728889447" 
	@${RM} ${OBJECTDIR}/_ext/1728889447/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728889447/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1728889447/port.o.d" -o ${OBJECTDIR}/_ext/1728889447/port.o ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1728889447/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1728889447/write.o: ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1728889447" 
	@${RM} ${OBJECTDIR}/_ext/1728889447/write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728889447/write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1728889447/write.o.d" -o ${OBJECTDIR}/_ext/1728889447/write.o ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/write.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1728889447/write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1237832240/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/MSP430/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1237832240" 
	@${RM} ${OBJECTDIR}/_ext/1237832240/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1237832240/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1237832240/port.o.d" -o ${OBJECTDIR}/_ext/1237832240/port.o ../../../lib/afr/freertos_kernel/portable/IAR/MSP430/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1237832240/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1469751924/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/V850ES/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1469751924" 
	@${RM} ${OBJECTDIR}/_ext/1469751924/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1469751924/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1469751924/port.o.d" -o ${OBJECTDIR}/_ext/1469751924/port.o ../../../lib/afr/freertos_kernel/portable/IAR/V850ES/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1469751924/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1267365548/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/LPC2000/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1267365548" 
	@${RM} ${OBJECTDIR}/_ext/1267365548/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267365548/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1267365548/port.o.d" -o ${OBJECTDIR}/_ext/1267365548/port.o ../../../lib/afr/freertos_kernel/portable/IAR/LPC2000/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1267365548/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922848751/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922848751" 
	@${RM} ${OBJECTDIR}/_ext/1922848751/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1922848751/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1922848751/port.o.d" -o ${OBJECTDIR}/_ext/1922848751/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922848751/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/848985171/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/848985171" 
	@${RM} ${OBJECTDIR}/_ext/848985171/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/848985171/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/848985171/port.o.d" -o ${OBJECTDIR}/_ext/848985171/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/848985171/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/141602939/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RX700v3_DPFPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/141602939" 
	@${RM} ${OBJECTDIR}/_ext/141602939/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/141602939/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/141602939/port.o.d" -o ${OBJECTDIR}/_ext/141602939/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RX700v3_DPFPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/141602939/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922849117/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922849117" 
	@${RM} ${OBJECTDIR}/_ext/1922849117/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1922849117/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1922849117/port.o.d" -o ${OBJECTDIR}/_ext/1922849117/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922849117/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2032087772/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RL78/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2032087772" 
	@${RM} ${OBJECTDIR}/_ext/2032087772/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032087772/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2032087772/port.o.d" -o ${OBJECTDIR}/_ext/2032087772/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RL78/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2032087772/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/444074765/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/AVR_Mega0/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/444074765" 
	@${RM} ${OBJECTDIR}/_ext/444074765/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/444074765/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/444074765/port.o.d" -o ${OBJECTDIR}/_ext/444074765/port.o ../../../lib/afr/freertos_kernel/portable/IAR/AVR_Mega0/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/444074765/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386322171/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386322171" 
	@${RM} ${OBJECTDIR}/_ext/1386322171/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386322171/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1386322171/port.o.d" -o ${OBJECTDIR}/_ext/1386322171/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386322171/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/625127455/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625127455" 
	@${RM} ${OBJECTDIR}/_ext/625127455/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/625127455/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/625127455/port.o.d" -o ${OBJECTDIR}/_ext/625127455/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/625127455/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541892655/secure_context.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1541892655" 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541892655/secure_context.o.d" -o ${OBJECTDIR}/_ext/1541892655/secure_context.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541892655/secure_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541892655/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1541892655" 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541892655/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1541892655/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541892655/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541892655/secure_init.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1541892655" 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541892655/secure_init.o.d" -o ${OBJECTDIR}/_ext/1541892655/secure_init.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541892655/secure_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541892655/secure_heap.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_heap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1541892655" 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_heap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_heap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541892655/secure_heap.o.d" -o ${OBJECTDIR}/_ext/1541892655/secure_heap.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_heap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541892655/secure_heap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/521219416/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/521219416" 
	@${RM} ${OBJECTDIR}/_ext/521219416/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/521219416/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/521219416/port.o.d" -o ${OBJECTDIR}/_ext/521219416/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/521219416/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1330589629/port.o: ../../../lib/afr/freertos_kernel/portable/MikroC/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1330589629" 
	@${RM} ${OBJECTDIR}/_ext/1330589629/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1330589629/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1330589629/port.o.d" -o ${OBJECTDIR}/_ext/1330589629/port.o ../../../lib/afr/freertos_kernel/portable/MikroC/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1330589629/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1096540686/port.o: ../../../lib/afr/freertos_kernel/portable/SDCC/Cygnal/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1096540686" 
	@${RM} ${OBJECTDIR}/_ext/1096540686/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1096540686/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1096540686/port.o.d" -o ${OBJECTDIR}/_ext/1096540686/port.o ../../../lib/afr/freertos_kernel/portable/SDCC/Cygnal/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1096540686/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1184804963/port_exceptions.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804963" 
	@${RM} ${OBJECTDIR}/_ext/1184804963/port_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804963/port_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804963/port_exceptions.o.d" -o ${OBJECTDIR}/_ext/1184804963/port_exceptions.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port_exceptions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804963/port_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1184804963/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804963" 
	@${RM} ${OBJECTDIR}/_ext/1184804963/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804963/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804963/port.o.d" -o ${OBJECTDIR}/_ext/1184804963/port.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804963/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868706680/portISR.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/portISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868706680" 
	@${RM} ${OBJECTDIR}/_ext/1868706680/portISR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868706680/portISR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868706680/portISR.o.d" -o ${OBJECTDIR}/_ext/1868706680/portISR.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/portISR.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868706680/portISR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868706680" 
	@${RM} ${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o.d" -o ${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868706680/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868706680" 
	@${RM} ${OBJECTDIR}/_ext/1868706680/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868706680/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868706680/port.o.d" -o ${OBJECTDIR}/_ext/1868706680/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868706680/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2064501105/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2064501105" 
	@${RM} ${OBJECTDIR}/_ext/2064501105/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2064501105/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2064501105/port.o.d" -o ${OBJECTDIR}/_ext/2064501105/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2064501105/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2064501105/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2064501105" 
	@${RM} ${OBJECTDIR}/_ext/2064501105/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2064501105/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2064501105/portasm.o.d" -o ${OBJECTDIR}/_ext/2064501105/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2064501105/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/604428253/secure_context.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/604428253" 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/604428253/secure_context.o.d" -o ${OBJECTDIR}/_ext/604428253/secure_context.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/604428253/secure_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/604428253/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/604428253" 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/604428253/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/604428253/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/604428253/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/604428253/secure_init.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/604428253" 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/604428253/secure_init.o.d" -o ${OBJECTDIR}/_ext/604428253/secure_init.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/604428253/secure_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/604428253/secure_heap.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_heap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/604428253" 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_heap.o.d 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_heap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/604428253/secure_heap.o.d" -o ${OBJECTDIR}/_ext/604428253/secure_heap.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_heap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/604428253/secure_heap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1184804964/port_exceptions.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804964" 
	@${RM} ${OBJECTDIR}/_ext/1184804964/port_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804964/port_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804964/port_exceptions.o.d" -o ${OBJECTDIR}/_ext/1184804964/port_exceptions.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port_exceptions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804964/port_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1184804964/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804964" 
	@${RM} ${OBJECTDIR}/_ext/1184804964/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804964/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804964/port.o.d" -o ${OBJECTDIR}/_ext/1184804964/port.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804964/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/486918289/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RX100/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486918289" 
	@${RM} ${OBJECTDIR}/_ext/486918289/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/486918289/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/486918289/port.o.d" -o ${OBJECTDIR}/_ext/486918289/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RX100/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/486918289/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1573813171/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/AVR_AVRDx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1573813171" 
	@${RM} ${OBJECTDIR}/_ext/1573813171/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573813171/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1573813171/port.o.d" -o ${OBJECTDIR}/_ext/1573813171/port.o ../../../lib/afr/freertos_kernel/portable/GCC/AVR_AVRDx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1573813171/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196601/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM0/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196601" 
	@${RM} ${OBJECTDIR}/_ext/2124196601/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196601/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196601/port.o.d" -o ${OBJECTDIR}/_ext/2124196601/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM0/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196601/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/186157216/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM7/r0p1/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/186157216" 
	@${RM} ${OBJECTDIR}/_ext/186157216/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/186157216/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/186157216/port.o.d" -o ${OBJECTDIR}/_ext/186157216/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM7/r0p1/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/186157216/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2111327397/portISR.o: ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/portISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2111327397" 
	@${RM} ${OBJECTDIR}/_ext/2111327397/portISR.o.d 
	@${RM} ${OBJECTDIR}/_ext/2111327397/portISR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2111327397/portISR.o.d" -o ${OBJECTDIR}/_ext/2111327397/portISR.o ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/portISR.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2111327397/portISR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2111327397/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2111327397" 
	@${RM} ${OBJECTDIR}/_ext/2111327397/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2111327397/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2111327397/port.o.d" -o ${OBJECTDIR}/_ext/2111327397/port.o ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2111327397/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/496746403/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/HCS12/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/496746403" 
	@${RM} ${OBJECTDIR}/_ext/496746403/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/496746403/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/496746403/port.o.d" -o ${OBJECTDIR}/_ext/496746403/port.o ../../../lib/afr/freertos_kernel/portable/GCC/HCS12/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/496746403/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1781124133/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1781124133" 
	@${RM} ${OBJECTDIR}/_ext/1781124133/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1781124133/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1781124133/port.o.d" -o ${OBJECTDIR}/_ext/1781124133/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1781124133/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/501257293/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/MCF5235/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/501257293" 
	@${RM} ${OBJECTDIR}/_ext/501257293/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/501257293/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/501257293/port.o.d" -o ${OBJECTDIR}/_ext/501257293/port.o ../../../lib/afr/freertos_kernel/portable/GCC/MCF5235/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/501257293/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/868732920/portISR.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/portISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/868732920" 
	@${RM} ${OBJECTDIR}/_ext/868732920/portISR.o.d 
	@${RM} ${OBJECTDIR}/_ext/868732920/portISR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/868732920/portISR.o.d" -o ${OBJECTDIR}/_ext/868732920/portISR.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/portISR.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/868732920/portISR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/868732920/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/868732920" 
	@${RM} ${OBJECTDIR}/_ext/868732920/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/868732920/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/868732920/port.o.d" -o ${OBJECTDIR}/_ext/868732920/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/868732920/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/486917328/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RX200/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486917328" 
	@${RM} ${OBJECTDIR}/_ext/486917328/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/486917328/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/486917328/port.o.d" -o ${OBJECTDIR}/_ext/486917328/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RX200/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/486917328/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/486913484/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RX600/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486913484" 
	@${RM} ${OBJECTDIR}/_ext/486913484/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/486913484/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/486913484/port.o.d" -o ${OBJECTDIR}/_ext/486913484/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RX600/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/486913484/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/868727733/portISR.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/portISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/868727733" 
	@${RM} ${OBJECTDIR}/_ext/868727733/portISR.o.d 
	@${RM} ${OBJECTDIR}/_ext/868727733/portISR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/868727733/portISR.o.d" -o ${OBJECTDIR}/_ext/868727733/portISR.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/portISR.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/868727733/portISR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/868727733/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/868727733" 
	@${RM} ${OBJECTDIR}/_ext/868727733/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/868727733/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/868727733/port.o.d" -o ${OBJECTDIR}/_ext/868727733/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/868727733/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/948145979/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/948145979" 
	@${RM} ${OBJECTDIR}/_ext/948145979/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/948145979/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/948145979/port.o.d" -o ${OBJECTDIR}/_ext/948145979/port.o ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/948145979/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1988497755/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1988497755" 
	@${RM} ${OBJECTDIR}/_ext/1988497755/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1988497755/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1988497755/port.o.d" -o ${OBJECTDIR}/_ext/1988497755/port.o ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1988497755/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1847192621/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ATMega323/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847192621" 
	@${RM} ${OBJECTDIR}/_ext/1847192621/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847192621/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1847192621/port.o.d" -o ${OBJECTDIR}/_ext/1847192621/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ATMega323/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847192621/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/946811729/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/H8S2329/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/946811729" 
	@${RM} ${OBJECTDIR}/_ext/946811729/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/946811729/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/946811729/port.o.d" -o ${OBJECTDIR}/_ext/946811729/port.o ../../../lib/afr/freertos_kernel/portable/GCC/H8S2329/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/946811729/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1647804360/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647804360" 
	@${RM} ${OBJECTDIR}/_ext/1647804360/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647804360/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1647804360/port.o.d" -o ${OBJECTDIR}/_ext/1647804360/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647804360/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2072580556/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2072580556" 
	@${RM} ${OBJECTDIR}/_ext/2072580556/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2072580556/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2072580556/port.o.d" -o ${OBJECTDIR}/_ext/2072580556/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2072580556/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1324853081/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1324853081" 
	@${RM} ${OBJECTDIR}/_ext/1324853081/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1324853081/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1324853081/port.o.d" -o ${OBJECTDIR}/_ext/1324853081/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1324853081/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1324853081/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1324853081" 
	@${RM} ${OBJECTDIR}/_ext/1324853081/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1324853081/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1324853081/portasm.o.d" -o ${OBJECTDIR}/_ext/1324853081/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1324853081/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/300548614/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300548614" 
	@${RM} ${OBJECTDIR}/_ext/300548614/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/300548614/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/300548614/port.o.d" -o ${OBJECTDIR}/_ext/300548614/port.o ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/300548614/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1955953423/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1955953423" 
	@${RM} ${OBJECTDIR}/_ext/1955953423/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955953423/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1955953423/port.o.d" -o ${OBJECTDIR}/_ext/1955953423/port.o ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1955953423/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1955953423/porttrap.o: ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/porttrap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1955953423" 
	@${RM} ${OBJECTDIR}/_ext/1955953423/porttrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955953423/porttrap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1955953423/porttrap.o.d" -o ${OBJECTDIR}/_ext/1955953423/porttrap.o ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/porttrap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1955953423/porttrap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196964/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196964" 
	@${RM} ${OBJECTDIR}/_ext/2124196964/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196964/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196964/port.o.d" -o ${OBJECTDIR}/_ext/2124196964/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196964/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1616804518/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1616804518" 
	@${RM} ${OBJECTDIR}/_ext/1616804518/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1616804518/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1616804518/port.o.d" -o ${OBJECTDIR}/_ext/1616804518/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1616804518/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1616804518/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1616804518" 
	@${RM} ${OBJECTDIR}/_ext/1616804518/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1616804518/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1616804518/portasm.o.d" -o ${OBJECTDIR}/_ext/1616804518/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1616804518/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/227580848/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RX600v2/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/227580848" 
	@${RM} ${OBJECTDIR}/_ext/227580848/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/227580848/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/227580848/port.o.d" -o ${OBJECTDIR}/_ext/227580848/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RX600v2/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/227580848/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/712764046/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RX700v3_DPFPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/712764046" 
	@${RM} ${OBJECTDIR}/_ext/712764046/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/712764046/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/712764046/port.o.d" -o ${OBJECTDIR}/_ext/712764046/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RX700v3_DPFPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/712764046/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196598/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196598" 
	@${RM} ${OBJECTDIR}/_ext/2124196598/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196598/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196598/port.o.d" -o ${OBJECTDIR}/_ext/2124196598/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196598/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/251511942/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/251511942" 
	@${RM} ${OBJECTDIR}/_ext/251511942/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/251511942/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/251511942/port.o.d" -o ${OBJECTDIR}/_ext/251511942/port.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/251511942/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1187781318/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/CORTUS_APS3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1187781318" 
	@${RM} ${OBJECTDIR}/_ext/1187781318/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1187781318/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1187781318/port.o.d" -o ${OBJECTDIR}/_ext/1187781318/port.o ../../../lib/afr/freertos_kernel/portable/GCC/CORTUS_APS3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1187781318/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1501352208/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1501352208" 
	@${RM} ${OBJECTDIR}/_ext/1501352208/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1501352208/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1501352208/port.o.d" -o ${OBJECTDIR}/_ext/1501352208/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1501352208/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1279931197/portISR.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/portISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1279931197" 
	@${RM} ${OBJECTDIR}/_ext/1279931197/portISR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1279931197/portISR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1279931197/portISR.o.d" -o ${OBJECTDIR}/_ext/1279931197/portISR.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/portISR.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1279931197/portISR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1279931197/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1279931197" 
	@${RM} ${OBJECTDIR}/_ext/1279931197/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1279931197/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1279931197/port.o.d" -o ${OBJECTDIR}/_ext/1279931197/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1279931197/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/122828951/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RL78/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122828951" 
	@${RM} ${OBJECTDIR}/_ext/122828951/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/122828951/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/122828951/port.o.d" -o ${OBJECTDIR}/_ext/122828951/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RL78/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/122828951/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1177919254/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/MSP430F449/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1177919254" 
	@${RM} ${OBJECTDIR}/_ext/1177919254/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177919254/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1177919254/port.o.d" -o ${OBJECTDIR}/_ext/1177919254/port.o ../../../lib/afr/freertos_kernel/portable/GCC/MSP430F449/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1177919254/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/966124963/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3_MPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/966124963" 
	@${RM} ${OBJECTDIR}/_ext/966124963/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/966124963/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/966124963/port.o.d" -o ${OBJECTDIR}/_ext/966124963/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3_MPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/966124963/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1585363296/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/AVR_Mega0/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1585363296" 
	@${RM} ${OBJECTDIR}/_ext/1585363296/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585363296/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1585363296/port.o.d" -o ${OBJECTDIR}/_ext/1585363296/port.o ../../../lib/afr/freertos_kernel/portable/GCC/AVR_Mega0/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1585363296/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/878282853/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/878282853" 
	@${RM} ${OBJECTDIR}/_ext/878282853/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/878282853/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/878282853/port.o.d" -o ${OBJECTDIR}/_ext/878282853/port.o ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/878282853/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2114282510/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2114282510" 
	@${RM} ${OBJECTDIR}/_ext/2114282510/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2114282510/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2114282510/port.o.d" -o ${OBJECTDIR}/_ext/2114282510/port.o ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2114282510/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1771098098/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1771098098" 
	@${RM} ${OBJECTDIR}/_ext/1771098098/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1771098098/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1771098098/port.o.d" -o ${OBJECTDIR}/_ext/1771098098/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1771098098/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1771098098/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1771098098" 
	@${RM} ${OBJECTDIR}/_ext/1771098098/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1771098098/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1771098098/portasm.o.d" -o ${OBJECTDIR}/_ext/1771098098/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1771098098/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1883084580/secure_context.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1883084580" 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1883084580/secure_context.o.d" -o ${OBJECTDIR}/_ext/1883084580/secure_context.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1883084580/secure_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1883084580/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1883084580" 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1883084580/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1883084580/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1883084580/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1883084580/secure_init.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1883084580" 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1883084580/secure_init.o.d" -o ${OBJECTDIR}/_ext/1883084580/secure_init.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1883084580/secure_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1883084580/secure_heap.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_heap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1883084580" 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_heap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_heap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1883084580/secure_heap.o.d" -o ${OBJECTDIR}/_ext/1883084580/secure_heap.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_heap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1883084580/secure_heap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1425584997/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1425584997" 
	@${RM} ${OBJECTDIR}/_ext/1425584997/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1425584997/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1425584997/port.o.d" -o ${OBJECTDIR}/_ext/1425584997/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1425584997/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/965201442/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4_MPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/965201442" 
	@${RM} ${OBJECTDIR}/_ext/965201442/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/965201442/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/965201442/port.o.d" -o ${OBJECTDIR}/_ext/965201442/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4_MPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/965201442/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196441/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196441" 
	@${RM} ${OBJECTDIR}/_ext/2124196441/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196441/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196441/port.o.d" -o ${OBJECTDIR}/_ext/2124196441/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196441/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o: ../../../lib/afr/freertos_kernel/portable/Common/mpu_wrappers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1507077409" 
	@${RM} ${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o.d" -o ${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o ../../../lib/afr/freertos_kernel/portable/Common/mpu_wrappers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1648737201/port.o: ../../../lib/afr/freertos_kernel/portable/Rowley/MSP430F449/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1648737201" 
	@${RM} ${OBJECTDIR}/_ext/1648737201/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1648737201/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1648737201/port.o.d" -o ${OBJECTDIR}/_ext/1648737201/port.o ../../../lib/afr/freertos_kernel/portable/Rowley/MSP430F449/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1648737201/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/947030074/port.o: ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/small/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/947030074" 
	@${RM} ${OBJECTDIR}/_ext/947030074/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/947030074/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/947030074/port.o.d" -o ${OBJECTDIR}/_ext/947030074/port.o ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/small/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/947030074/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/463162171/port.o: ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/large_untested/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/463162171" 
	@${RM} ${OBJECTDIR}/_ext/463162171/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/463162171/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/463162171/port.o.d" -o ${OBJECTDIR}/_ext/463162171/port.o ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/large_untested/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/463162171/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285462043/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM0/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/285462043" 
	@${RM} ${OBJECTDIR}/_ext/285462043/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/285462043/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285462043/port.o.d" -o ${OBJECTDIR}/_ext/285462043/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM0/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/285462043/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/604201972/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM7/r0p1/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/604201972" 
	@${RM} ${OBJECTDIR}/_ext/604201972/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/604201972/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/604201972/port.o.d" -o ${OBJECTDIR}/_ext/604201972/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM7/r0p1/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/604201972/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285461680/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/285461680" 
	@${RM} ${OBJECTDIR}/_ext/285461680/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/285461680/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285461680/port.o.d" -o ${OBJECTDIR}/_ext/285461680/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/285461680/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285462046/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/285462046" 
	@${RM} ${OBJECTDIR}/_ext/285462046/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/285462046/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285462046/port.o.d" -o ${OBJECTDIR}/_ext/285462046/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/285462046/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/78371810/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/78371810" 
	@${RM} ${OBJECTDIR}/_ext/78371810/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/78371810/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/78371810/port.o.d" -o ${OBJECTDIR}/_ext/78371810/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/78371810/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/259388935/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/259388935" 
	@${RM} ${OBJECTDIR}/_ext/259388935/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/259388935/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/259388935/port.o.d" -o ${OBJECTDIR}/_ext/259388935/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/259388935/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/810418418/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4_MPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/810418418" 
	@${RM} ${OBJECTDIR}/_ext/810418418/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/810418418/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/810418418/port.o.d" -o ${OBJECTDIR}/_ext/810418418/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4_MPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/810418418/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/435522139/port.o: ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/PC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/435522139" 
	@${RM} ${OBJECTDIR}/_ext/435522139/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/435522139/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/435522139/port.o.d" -o ${OBJECTDIR}/_ext/435522139/port.o ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/PC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/435522139/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1279475426/port.o: ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/Flsh186/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1279475426" 
	@${RM} ${OBJECTDIR}/_ext/1279475426/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1279475426/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1279475426/port.o.d" -o ${OBJECTDIR}/_ext/1279475426/port.o ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/Flsh186/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1279475426/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1843948701/portcomn.o: ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/common/portcomn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1843948701" 
	@${RM} ${OBJECTDIR}/_ext/1843948701/portcomn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843948701/portcomn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1843948701/portcomn.o.d" -o ${OBJECTDIR}/_ext/1843948701/portcomn.o ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/common/portcomn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843948701/portcomn.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/205153989/port.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/205153989" 
	@${RM} ${OBJECTDIR}/_ext/205153989/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/205153989/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/205153989/port.o.d" -o ${OBJECTDIR}/_ext/205153989/port.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/205153989/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/52748546/port.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/52748546" 
	@${RM} ${OBJECTDIR}/_ext/52748546/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/52748546/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/52748546/port.o.d" -o ${OBJECTDIR}/_ext/52748546/port.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/52748546/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1669187602/port.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC18F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1669187602" 
	@${RM} ${OBJECTDIR}/_ext/1669187602/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1669187602/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1669187602/port.o.d" -o ${OBJECTDIR}/_ext/1669187602/port.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC18F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1669187602/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/205153987/port.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/205153987" 
	@${RM} ${OBJECTDIR}/_ext/205153987/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/205153987/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/205153987/port.o.d" -o ${OBJECTDIR}/_ext/205153987/port.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/205153987/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/437362351/port.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/437362351" 
	@${RM} ${OBJECTDIR}/_ext/437362351/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/437362351/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/437362351/port.o.d" -o ${OBJECTDIR}/_ext/437362351/port.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/437362351/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058873823/port.o: ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/PC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1058873823" 
	@${RM} ${OBJECTDIR}/_ext/1058873823/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058873823/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1058873823/port.o.d" -o ${OBJECTDIR}/_ext/1058873823/port.o ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/PC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058873823/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1006320666/port.o: ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/Flsh186/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006320666" 
	@${RM} ${OBJECTDIR}/_ext/1006320666/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1006320666/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1006320666/port.o.d" -o ${OBJECTDIR}/_ext/1006320666/port.o ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/Flsh186/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1006320666/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/585091303/portcomn.o: ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/common/portcomn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/585091303" 
	@${RM} ${OBJECTDIR}/_ext/585091303/portcomn.o.d 
	@${RM} ${OBJECTDIR}/_ext/585091303/portcomn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/585091303/portcomn.o.d" -o ${OBJECTDIR}/_ext/585091303/portcomn.o ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/common/portcomn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/585091303/portcomn.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1138757583/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1138757583" 
	@${RM} ${OBJECTDIR}/_ext/1138757583/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1138757583/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1138757583/portasm.o.d" -o ${OBJECTDIR}/_ext/1138757583/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1138757583/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/823989829/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23_NTZ/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/823989829" 
	@${RM} ${OBJECTDIR}/_ext/823989829/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/823989829/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/823989829/portasm.o.d" -o ${OBJECTDIR}/_ext/823989829/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23_NTZ/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/823989829/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/852618980/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33_NTZ/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/852618980" 
	@${RM} ${OBJECTDIR}/_ext/852618980/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/852618980/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/852618980/portasm.o.d" -o ${OBJECTDIR}/_ext/852618980/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33_NTZ/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/852618980/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1138757552/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1138757552" 
	@${RM} ${OBJECTDIR}/_ext/1138757552/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1138757552/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1138757552/portasm.o.d" -o ${OBJECTDIR}/_ext/1138757552/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1138757552/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1103600747/port.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1103600747" 
	@${RM} ${OBJECTDIR}/_ext/1103600747/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1103600747/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1103600747/port.o.d" -o ${OBJECTDIR}/_ext/1103600747/port.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1103600747/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1123175492/secure_init.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/init/secure_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1123175492" 
	@${RM} ${OBJECTDIR}/_ext/1123175492/secure_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123175492/secure_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1123175492/secure_init.o.d" -o ${OBJECTDIR}/_ext/1123175492/secure_init.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/init/secure_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1123175492/secure_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/572413827/secure_context.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/secure_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/572413827" 
	@${RM} ${OBJECTDIR}/_ext/572413827/secure_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/572413827/secure_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/572413827/secure_context.o.d" -o ${OBJECTDIR}/_ext/572413827/secure_context.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/secure_context.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/572413827/secure_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1031683254/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1031683254" 
	@${RM} ${OBJECTDIR}/_ext/1031683254/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1031683254/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1031683254/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1031683254/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1031683254/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1031683285/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1031683285" 
	@${RM} ${OBJECTDIR}/_ext/1031683285/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1031683285/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1031683285/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1031683285/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1031683285/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1936048835/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM33/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1936048835" 
	@${RM} ${OBJECTDIR}/_ext/1936048835/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1936048835/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1936048835/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1936048835/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM33/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1936048835/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1936048866/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM23/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1936048866" 
	@${RM} ${OBJECTDIR}/_ext/1936048866/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1936048866/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1936048866/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1936048866/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM23/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1936048866/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1123214184/secure_heap.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/heap/secure_heap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1123214184" 
	@${RM} ${OBJECTDIR}/_ext/1123214184/secure_heap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123214184/secure_heap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1123214184/secure_heap.o.d" -o ${OBJECTDIR}/_ext/1123214184/secure_heap.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/heap/secure_heap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1123214184/secure_heap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1933832991/Tick.o: ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1933832991" 
	@${RM} ${OBJECTDIR}/_ext/1933832991/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933832991/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1933832991/Tick.o.d" -o ${OBJECTDIR}/_ext/1933832991/Tick.o ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/Tick.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1933832991/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1933832991/isrTick.o: ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/isrTick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1933832991" 
	@${RM} ${OBJECTDIR}/_ext/1933832991/isrTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933832991/isrTick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1933832991/isrTick.o.d" -o ${OBJECTDIR}/_ext/1933832991/isrTick.o ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/isrTick.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1933832991/isrTick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95789487/port.o: ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95789487" 
	@${RM} ${OBJECTDIR}/_ext/95789487/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/95789487/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95789487/port.o.d" -o ${OBJECTDIR}/_ext/95789487/port.o ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/95789487/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/290614047/port.o: ../../../lib/afr/freertos_kernel/portable/CCS/MSP430X/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/290614047" 
	@${RM} ${OBJECTDIR}/_ext/290614047/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/290614047/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/290614047/port.o.d" -o ${OBJECTDIR}/_ext/290614047/port.o ../../../lib/afr/freertos_kernel/portable/CCS/MSP430X/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/290614047/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1914141206/port.o: ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1914141206" 
	@${RM} ${OBJECTDIR}/_ext/1914141206/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1914141206/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1914141206/port.o.d" -o ${OBJECTDIR}/_ext/1914141206/port.o ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1914141206/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/623266235/port.o: ../../../lib/afr/freertos_kernel/portable/CCS/ARM_Cortex-R4/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/623266235" 
	@${RM} ${OBJECTDIR}/_ext/623266235/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/623266235/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/623266235/port.o.d" -o ${OBJECTDIR}/_ext/623266235/port.o ../../../lib/afr/freertos_kernel/portable/CCS/ARM_Cortex-R4/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/623266235/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/791164657/port.o: ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/791164657" 
	@${RM} ${OBJECTDIR}/_ext/791164657/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/791164657/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/791164657/port.o.d" -o ${OBJECTDIR}/_ext/791164657/port.o ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/791164657/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/523084622/heap_3.o: ../../../lib/afr/freertos_kernel/portable/MemMang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/523084622" 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/523084622/heap_3.o.d" -o ${OBJECTDIR}/_ext/523084622/heap_3.o ../../../lib/afr/freertos_kernel/portable/MemMang/heap_3.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/523084622/heap_3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/523084622/heap_4.o: ../../../lib/afr/freertos_kernel/portable/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/523084622" 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/523084622/heap_4.o.d" -o ${OBJECTDIR}/_ext/523084622/heap_4.o ../../../lib/afr/freertos_kernel/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/523084622/heap_4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/523084622/heap_5.o: ../../../lib/afr/freertos_kernel/portable/MemMang/heap_5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/523084622" 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_5.o.d 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/523084622/heap_5.o.d" -o ${OBJECTDIR}/_ext/523084622/heap_5.o ../../../lib/afr/freertos_kernel/portable/MemMang/heap_5.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/523084622/heap_5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/523084622/heap_1.o: ../../../lib/afr/freertos_kernel/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/523084622" 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/523084622/heap_1.o.d" -o ${OBJECTDIR}/_ext/523084622/heap_1.o ../../../lib/afr/freertos_kernel/portable/MemMang/heap_1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/523084622/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/523084622/heap_2.o: ../../../lib/afr/freertos_kernel/portable/MemMang/heap_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/523084622" 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_2.o.d 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/523084622/heap_2.o.d" -o ${OBJECTDIR}/_ext/523084622/heap_2.o ../../../lib/afr/freertos_kernel/portable/MemMang/heap_2.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/523084622/heap_2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/430913507/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/RX100/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/430913507" 
	@${RM} ${OBJECTDIR}/_ext/430913507/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/430913507/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/430913507/port.o.d" -o ${OBJECTDIR}/_ext/430913507/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/RX100/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/430913507/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/430914468/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/RX200/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/430914468" 
	@${RM} ${OBJECTDIR}/_ext/430914468/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/430914468/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/430914468/port.o.d" -o ${OBJECTDIR}/_ext/430914468/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/RX200/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/430914468/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/430918312/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/RX600/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/430918312" 
	@${RM} ${OBJECTDIR}/_ext/430918312/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/430918312/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/430918312/port.o.d" -o ${OBJECTDIR}/_ext/430918312/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/RX600/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/430918312/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/160491640/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/SH2A_FPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/160491640" 
	@${RM} ${OBJECTDIR}/_ext/160491640/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/160491640/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/160491640/port.o.d" -o ${OBJECTDIR}/_ext/160491640/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/SH2A_FPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/160491640/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1795641124/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/RX600v2/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1795641124" 
	@${RM} ${OBJECTDIR}/_ext/1795641124/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1795641124/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1795641124/port.o.d" -o ${OBJECTDIR}/_ext/1795641124/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/RX600v2/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1795641124/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1237622298/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/RX700v3_DPFPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1237622298" 
	@${RM} ${OBJECTDIR}/_ext/1237622298/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1237622298/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1237622298/port.o.d" -o ${OBJECTDIR}/_ext/1237622298/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/RX700v3_DPFPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1237622298/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/666862117/port.o: ../../../lib/afr/freertos_kernel/portable/Tasking/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/666862117" 
	@${RM} ${OBJECTDIR}/_ext/666862117/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/666862117/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/666862117/port.o.d" -o ${OBJECTDIR}/_ext/666862117/port.o ../../../lib/afr/freertos_kernel/portable/Tasking/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/666862117/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1434886805/port.o: ../../../lib/afr/freertos_kernel/portable/CodeWarrior/HCS12/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434886805" 
	@${RM} ${OBJECTDIR}/_ext/1434886805/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434886805/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1434886805/port.o.d" -o ${OBJECTDIR}/_ext/1434886805/port.o ../../../lib/afr/freertos_kernel/portable/CodeWarrior/HCS12/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434886805/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/130836147/port.o: ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/130836147" 
	@${RM} ${OBJECTDIR}/_ext/130836147/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/130836147/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/130836147/port.o.d" -o ${OBJECTDIR}/_ext/130836147/port.o ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/130836147/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/130836146/port.o: ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/130836146" 
	@${RM} ${OBJECTDIR}/_ext/130836146/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/130836146/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/130836146/port.o.d" -o ${OBJECTDIR}/_ext/130836146/port.o ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/130836146/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/552203917/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/552203917" 
	@${RM} ${OBJECTDIR}/_ext/552203917/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/552203917/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/552203917/port.o.d" -o ${OBJECTDIR}/_ext/552203917/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/552203917/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_intr.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_intr.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_intr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_intr.o.d" -o ${OBJECTDIR}/_ext/912209894/xtensa_intr.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_intr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/portclib.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portclib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/portclib.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/portclib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/portclib.o.d" -o ${OBJECTDIR}/_ext/912209894/portclib.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portclib.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/portclib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_init.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_init.o.d" -o ${OBJECTDIR}/_ext/912209894/xtensa_init.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/port.o.d" -o ${OBJECTDIR}/_ext/912209894/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o.d" -o ${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1173681791/wait_for_event.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1173681791" 
	@${RM} ${OBJECTDIR}/_ext/1173681791/wait_for_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1173681791/wait_for_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1173681791/wait_for_event.o.d" -o ${OBJECTDIR}/_ext/1173681791/wait_for_event.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1173681791/wait_for_event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1238046431/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1238046431" 
	@${RM} ${OBJECTDIR}/_ext/1238046431/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1238046431/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1238046431/port.o.d" -o ${OBJECTDIR}/_ext/1238046431/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1238046431/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o.d" -o ${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_intr.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_intr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_intr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_intr.o.d" -o ${OBJECTDIR}/_ext/1544756697/xtensa_intr.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_intr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_init.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_init.o.d" -o ${OBJECTDIR}/_ext/1544756697/xtensa_init.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/port.o.d" -o ${OBJECTDIR}/_ext/1544756697/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o.d" -o ${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992749105/freertos_tls.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992749105" 
	@${RM} ${OBJECTDIR}/_ext/992749105/freertos_tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/992749105/freertos_tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/992749105/freertos_tls.o.d" -o ${OBJECTDIR}/_ext/992749105/freertos_tls.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992749105/freertos_tls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992749105" 
	@${RM} ${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o.d" -o ${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992749105/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992749105" 
	@${RM} ${OBJECTDIR}/_ext/992749105/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/992749105/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/992749105/port.o.d" -o ${OBJECTDIR}/_ext/992749105/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992749105/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732925268" 
	@${RM} ${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o.d" -o ${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/732925268/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732925268" 
	@${RM} ${OBJECTDIR}/_ext/732925268/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/732925268/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/732925268/port.o.d" -o ${OBJECTDIR}/_ext/732925268/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/732925268/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARM_CM33_TFM/os_wrapper_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1704329549" 
	@${RM} ${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o.d" -o ${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARM_CM33_TFM/os_wrapper_freertos.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/729821655/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ATmega/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/729821655" 
	@${RM} ${OBJECTDIR}/_ext/729821655/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/729821655/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/729821655/port.o.d" -o ${OBJECTDIR}/_ext/729821655/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ATmega/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/729821655/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/FreeRTOS-openocd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o.d" -o ${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/FreeRTOS-openocd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_intr.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_intr.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_intr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_intr.o.d" -o ${OBJECTDIR}/_ext/738169262/xtensa_intr.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_intr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_init.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_init.o.d" -o ${OBJECTDIR}/_ext/738169262/xtensa_init.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/port.o.d" -o ${OBJECTDIR}/_ext/738169262/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_overlay_os_hook.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o.d" -o ${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_overlay_os_hook.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/307975644/port.o: ../../../lib/afr/freertos_kernel/portable/MSVC-MingW/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/307975644" 
	@${RM} ${OBJECTDIR}/_ext/307975644/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/307975644/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/307975644/port.o.d" -o ${OBJECTDIR}/_ext/307975644/port.o ../../../lib/afr/freertos_kernel/portable/MSVC-MingW/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/307975644/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/queue.o: ../../../lib/afr/freertos_kernel/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/queue.o.d" -o ${OBJECTDIR}/_ext/702484399/queue.o ../../../lib/afr/freertos_kernel/queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/timers.o: ../../../lib/afr/freertos_kernel/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/timers.o.d" -o ${OBJECTDIR}/_ext/702484399/timers.o ../../../lib/afr/freertos_kernel/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/tasks.o: ../../../lib/afr/freertos_kernel/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/tasks.o.d" -o ${OBJECTDIR}/_ext/702484399/tasks.o ../../../lib/afr/freertos_kernel/tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/event_groups.o: ../../../lib/afr/freertos_kernel/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/event_groups.o.d" -o ${OBJECTDIR}/_ext/702484399/event_groups.o ../../../lib/afr/freertos_kernel/event_groups.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/croutine.o: ../../../lib/afr/freertos_kernel/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/croutine.o.d" -o ${OBJECTDIR}/_ext/702484399/croutine.o ../../../lib/afr/freertos_kernel/croutine.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o: ../src/iot_softap_wifi_provisioning.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o.d" -o ${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o ../src/iot_softap_wifi_provisioning.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/iot_softap_wifi_provisioning.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/list.o: ../../../lib/afr/freertos_kernel/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/list.o.d" -o ${OBJECTDIR}/_ext/702484399/list.o ../../../lib/afr/freertos_kernel/list.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/stream_buffer.o: ../../../lib/afr/freertos_kernel/stream_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/702484399/stream_buffer.o ../../../lib/afr/freertos_kernel/stream_buffer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/stream_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o: ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/__STD_LIB_sbrk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/557570976" 
	@${RM} ${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o.d 
	@${RM} ${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o.d" -o ${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/__STD_LIB_sbrk.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/557570976/__STD_LIB_sbrk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/557570976/port.o: ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/557570976" 
	@${RM} ${OBJECTDIR}/_ext/557570976/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/557570976/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/557570976/port.o.d" -o ${OBJECTDIR}/_ext/557570976/port.o ../../../lib/afr/freertos_kernel/portable/Softune/MB91460/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/557570976/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o: ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/__STD_LIB_sbrk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/557423044" 
	@${RM} ${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o.d 
	@${RM} ${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o.d" -o ${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/__STD_LIB_sbrk.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/557423044/__STD_LIB_sbrk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/557423044/port.o: ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/557423044" 
	@${RM} ${OBJECTDIR}/_ext/557423044/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/557423044/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/557423044/port.o.d" -o ${OBJECTDIR}/_ext/557423044/port.o ../../../lib/afr/freertos_kernel/portable/Softune/MB96340/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/557423044/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/281906136/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/MSP430X/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/281906136" 
	@${RM} ${OBJECTDIR}/_ext/281906136/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/281906136/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/281906136/port.o.d" -o ${OBJECTDIR}/_ext/281906136/port.o ../../../lib/afr/freertos_kernel/portable/IAR/MSP430X/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/281906136/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/918530462/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/918530462" 
	@${RM} ${OBJECTDIR}/_ext/918530462/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/918530462/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/918530462/port.o.d" -o ${OBJECTDIR}/_ext/918530462/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/918530462/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/265561808/secure_context.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/265561808" 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/265561808/secure_context.o.d" -o ${OBJECTDIR}/_ext/265561808/secure_context.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/265561808/secure_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/265561808/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/265561808" 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/265561808/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/265561808/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/265561808/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/265561808/secure_init.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/265561808" 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/265561808/secure_init.o.d" -o ${OBJECTDIR}/_ext/265561808/secure_init.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/265561808/secure_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/265561808/secure_heap.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_heap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/265561808" 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_heap.o.d 
	@${RM} ${OBJECTDIR}/_ext/265561808/secure_heap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/265561808/secure_heap.o.d" -o ${OBJECTDIR}/_ext/265561808/secure_heap.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33/secure/secure_heap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/265561808/secure_heap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1263899881/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1263899881" 
	@${RM} ${OBJECTDIR}/_ext/1263899881/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1263899881/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1263899881/port.o.d" -o ${OBJECTDIR}/_ext/1263899881/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA5_No_GIC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1263899881/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2032074293/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2032074293" 
	@${RM} ${OBJECTDIR}/_ext/2032074293/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032074293/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2032074293/port.o.d" -o ${OBJECTDIR}/_ext/2032074293/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RXv2/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2032074293/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1430140034/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1430140034" 
	@${RM} ${OBJECTDIR}/_ext/1430140034/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1430140034/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1430140034/port.o.d" -o ${OBJECTDIR}/_ext/1430140034/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RX100/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1430140034/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/314519745/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM7S64/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/314519745" 
	@${RM} ${OBJECTDIR}/_ext/314519745/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/314519745/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/314519745/port.o.d" -o ${OBJECTDIR}/_ext/314519745/port.o ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM7S64/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/314519745/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1652420097/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM9XE/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1652420097" 
	@${RM} ${OBJECTDIR}/_ext/1652420097/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1652420097/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1652420097/port.o.d" -o ${OBJECTDIR}/_ext/1652420097/port.o ../../../lib/afr/freertos_kernel/portable/IAR/AtmelSAM9XE/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1652420097/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/455624890/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/AVR_AVRDx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/455624890" 
	@${RM} ${OBJECTDIR}/_ext/455624890/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/455624890/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/455624890/port.o.d" -o ${OBJECTDIR}/_ext/455624890/port.o ../../../lib/afr/freertos_kernel/portable/IAR/AVR_AVRDx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/455624890/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1410595064/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/STR91x/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1410595064" 
	@${RM} ${OBJECTDIR}/_ext/1410595064/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1410595064/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1410595064/port.o.d" -o ${OBJECTDIR}/_ext/1410595064/port.o ../../../lib/afr/freertos_kernel/portable/IAR/STR91x/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1410595064/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922849114/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922849114" 
	@${RM} ${OBJECTDIR}/_ext/1922849114/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1922849114/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1922849114/port.o.d" -o ${OBJECTDIR}/_ext/1922849114/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM0/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922849114/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1451507757/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1451507757" 
	@${RM} ${OBJECTDIR}/_ext/1451507757/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1451507757/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1451507757/port.o.d" -o ${OBJECTDIR}/_ext/1451507757/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM7/r0p1/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1451507757/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1410593142/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/STR71x/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1410593142" 
	@${RM} ${OBJECTDIR}/_ext/1410593142/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1410593142/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1410593142/port.o.d" -o ${OBJECTDIR}/_ext/1410593142/port.o ../../../lib/afr/freertos_kernel/portable/IAR/STR71x/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1410593142/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1410593266/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/STR75x/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1410593266" 
	@${RM} ${OBJECTDIR}/_ext/1410593266/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1410593266/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1410593266/port.o.d" -o ${OBJECTDIR}/_ext/1410593266/port.o ../../../lib/afr/freertos_kernel/portable/IAR/STR75x/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1410593266/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1404276675/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/78K0R/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1404276675" 
	@${RM} ${OBJECTDIR}/_ext/1404276675/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1404276675/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1404276675/port.o.d" -o ${OBJECTDIR}/_ext/1404276675/port.o ../../../lib/afr/freertos_kernel/portable/IAR/78K0R/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1404276675/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1430144839/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1430144839" 
	@${RM} ${OBJECTDIR}/_ext/1430144839/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1430144839/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1430144839/port.o.d" -o ${OBJECTDIR}/_ext/1430144839/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RX600/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1430144839/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/418336614/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ATMega323/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/418336614" 
	@${RM} ${OBJECTDIR}/_ext/418336614/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/418336614/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/418336614/port.o.d" -o ${OBJECTDIR}/_ext/418336614/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ATMega323/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/418336614/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1121679227/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1121679227" 
	@${RM} ${OBJECTDIR}/_ext/1121679227/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1121679227/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1121679227/port.o.d" -o ${OBJECTDIR}/_ext/1121679227/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CRx_No_GIC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1121679227/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1371846425/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1371846425" 
	@${RM} ${OBJECTDIR}/_ext/1371846425/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1371846425/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1371846425/port.o.d" -o ${OBJECTDIR}/_ext/1371846425/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RISC-V/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1371846425/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2092672428/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2092672428" 
	@${RM} ${OBJECTDIR}/_ext/2092672428/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2092672428/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2092672428/port.o.d" -o ${OBJECTDIR}/_ext/2092672428/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23_NTZ/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2092672428/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1728889447/read.o: ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1728889447" 
	@${RM} ${OBJECTDIR}/_ext/1728889447/read.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728889447/read.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1728889447/read.o.d" -o ${OBJECTDIR}/_ext/1728889447/read.o ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/read.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1728889447/read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1728889447/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1728889447" 
	@${RM} ${OBJECTDIR}/_ext/1728889447/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728889447/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1728889447/port.o.d" -o ${OBJECTDIR}/_ext/1728889447/port.o ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1728889447/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1728889447/write.o: ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1728889447" 
	@${RM} ${OBJECTDIR}/_ext/1728889447/write.o.d 
	@${RM} ${OBJECTDIR}/_ext/1728889447/write.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1728889447/write.o.d" -o ${OBJECTDIR}/_ext/1728889447/write.o ../../../lib/afr/freertos_kernel/portable/IAR/AVR32_UC3/write.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1728889447/write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1237832240/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/MSP430/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1237832240" 
	@${RM} ${OBJECTDIR}/_ext/1237832240/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1237832240/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1237832240/port.o.d" -o ${OBJECTDIR}/_ext/1237832240/port.o ../../../lib/afr/freertos_kernel/portable/IAR/MSP430/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1237832240/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1469751924/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/V850ES/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1469751924" 
	@${RM} ${OBJECTDIR}/_ext/1469751924/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1469751924/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1469751924/port.o.d" -o ${OBJECTDIR}/_ext/1469751924/port.o ../../../lib/afr/freertos_kernel/portable/IAR/V850ES/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1469751924/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1267365548/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/LPC2000/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1267365548" 
	@${RM} ${OBJECTDIR}/_ext/1267365548/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1267365548/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1267365548/port.o.d" -o ${OBJECTDIR}/_ext/1267365548/port.o ../../../lib/afr/freertos_kernel/portable/IAR/LPC2000/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1267365548/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922848751/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922848751" 
	@${RM} ${OBJECTDIR}/_ext/1922848751/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1922848751/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1922848751/port.o.d" -o ${OBJECTDIR}/_ext/1922848751/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CA9/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922848751/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/848985171/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/848985171" 
	@${RM} ${OBJECTDIR}/_ext/848985171/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/848985171/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/848985171/port.o.d" -o ${OBJECTDIR}/_ext/848985171/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM33_NTZ/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/848985171/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/141602939/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RX700v3_DPFPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/141602939" 
	@${RM} ${OBJECTDIR}/_ext/141602939/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/141602939/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/141602939/port.o.d" -o ${OBJECTDIR}/_ext/141602939/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RX700v3_DPFPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/141602939/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1922849117/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1922849117" 
	@${RM} ${OBJECTDIR}/_ext/1922849117/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1922849117/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1922849117/port.o.d" -o ${OBJECTDIR}/_ext/1922849117/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1922849117/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2032087772/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/RL78/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2032087772" 
	@${RM} ${OBJECTDIR}/_ext/2032087772/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032087772/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2032087772/port.o.d" -o ${OBJECTDIR}/_ext/2032087772/port.o ../../../lib/afr/freertos_kernel/portable/IAR/RL78/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2032087772/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/444074765/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/AVR_Mega0/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/444074765" 
	@${RM} ${OBJECTDIR}/_ext/444074765/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/444074765/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/444074765/port.o.d" -o ${OBJECTDIR}/_ext/444074765/port.o ../../../lib/afr/freertos_kernel/portable/IAR/AVR_Mega0/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/444074765/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386322171/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386322171" 
	@${RM} ${OBJECTDIR}/_ext/1386322171/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386322171/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1386322171/port.o.d" -o ${OBJECTDIR}/_ext/1386322171/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F_MPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386322171/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/625127455/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/625127455" 
	@${RM} ${OBJECTDIR}/_ext/625127455/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/625127455/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/625127455/port.o.d" -o ${OBJECTDIR}/_ext/625127455/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/625127455/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541892655/secure_context.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1541892655" 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541892655/secure_context.o.d" -o ${OBJECTDIR}/_ext/1541892655/secure_context.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541892655/secure_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541892655/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1541892655" 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541892655/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1541892655/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541892655/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541892655/secure_init.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1541892655" 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541892655/secure_init.o.d" -o ${OBJECTDIR}/_ext/1541892655/secure_init.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541892655/secure_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1541892655/secure_heap.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_heap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1541892655" 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_heap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1541892655/secure_heap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1541892655/secure_heap.o.d" -o ${OBJECTDIR}/_ext/1541892655/secure_heap.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM23/secure/secure_heap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1541892655/secure_heap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/521219416/port.o: ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/521219416" 
	@${RM} ${OBJECTDIR}/_ext/521219416/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/521219416/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/521219416/port.o.d" -o ${OBJECTDIR}/_ext/521219416/port.o ../../../lib/afr/freertos_kernel/portable/IAR/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/521219416/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1330589629/port.o: ../../../lib/afr/freertos_kernel/portable/MikroC/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1330589629" 
	@${RM} ${OBJECTDIR}/_ext/1330589629/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1330589629/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1330589629/port.o.d" -o ${OBJECTDIR}/_ext/1330589629/port.o ../../../lib/afr/freertos_kernel/portable/MikroC/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1330589629/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1096540686/port.o: ../../../lib/afr/freertos_kernel/portable/SDCC/Cygnal/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1096540686" 
	@${RM} ${OBJECTDIR}/_ext/1096540686/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1096540686/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1096540686/port.o.d" -o ${OBJECTDIR}/_ext/1096540686/port.o ../../../lib/afr/freertos_kernel/portable/SDCC/Cygnal/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1096540686/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1184804963/port_exceptions.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804963" 
	@${RM} ${OBJECTDIR}/_ext/1184804963/port_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804963/port_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804963/port_exceptions.o.d" -o ${OBJECTDIR}/_ext/1184804963/port_exceptions.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port_exceptions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804963/port_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1184804963/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804963" 
	@${RM} ${OBJECTDIR}/_ext/1184804963/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804963/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804963/port.o.d" -o ${OBJECTDIR}/_ext/1184804963/port.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV9/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804963/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868706680/portISR.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/portISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868706680" 
	@${RM} ${OBJECTDIR}/_ext/1868706680/portISR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868706680/portISR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868706680/portISR.o.d" -o ${OBJECTDIR}/_ext/1868706680/portISR.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/portISR.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868706680/portISR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868706680" 
	@${RM} ${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o.d" -o ${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/lib_AT91SAM7X256.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868706680/lib_AT91SAM7X256.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1868706680/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1868706680" 
	@${RM} ${OBJECTDIR}/_ext/1868706680/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868706680/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1868706680/port.o.d" -o ${OBJECTDIR}/_ext/1868706680/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91SAM7S/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1868706680/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2064501105/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2064501105" 
	@${RM} ${OBJECTDIR}/_ext/2064501105/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2064501105/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2064501105/port.o.d" -o ${OBJECTDIR}/_ext/2064501105/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2064501105/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2064501105/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2064501105" 
	@${RM} ${OBJECTDIR}/_ext/2064501105/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/2064501105/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2064501105/portasm.o.d" -o ${OBJECTDIR}/_ext/2064501105/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/non_secure/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2064501105/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/604428253/secure_context.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/604428253" 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/604428253/secure_context.o.d" -o ${OBJECTDIR}/_ext/604428253/secure_context.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/604428253/secure_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/604428253/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/604428253" 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/604428253/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/604428253/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/604428253/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/604428253/secure_init.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/604428253" 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/604428253/secure_init.o.d" -o ${OBJECTDIR}/_ext/604428253/secure_init.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/604428253/secure_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/604428253/secure_heap.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_heap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/604428253" 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_heap.o.d 
	@${RM} ${OBJECTDIR}/_ext/604428253/secure_heap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/604428253/secure_heap.o.d" -o ${OBJECTDIR}/_ext/604428253/secure_heap.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33/secure/secure_heap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/604428253/secure_heap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1184804964/port_exceptions.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804964" 
	@${RM} ${OBJECTDIR}/_ext/1184804964/port_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804964/port_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804964/port_exceptions.o.d" -o ${OBJECTDIR}/_ext/1184804964/port_exceptions.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port_exceptions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804964/port_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1184804964/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1184804964" 
	@${RM} ${OBJECTDIR}/_ext/1184804964/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1184804964/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1184804964/port.o.d" -o ${OBJECTDIR}/_ext/1184804964/port.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlazeV8/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1184804964/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/486918289/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RX100/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486918289" 
	@${RM} ${OBJECTDIR}/_ext/486918289/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/486918289/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/486918289/port.o.d" -o ${OBJECTDIR}/_ext/486918289/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RX100/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/486918289/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1573813171/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/AVR_AVRDx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1573813171" 
	@${RM} ${OBJECTDIR}/_ext/1573813171/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573813171/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1573813171/port.o.d" -o ${OBJECTDIR}/_ext/1573813171/port.o ../../../lib/afr/freertos_kernel/portable/GCC/AVR_AVRDx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1573813171/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196601/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM0/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196601" 
	@${RM} ${OBJECTDIR}/_ext/2124196601/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196601/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196601/port.o.d" -o ${OBJECTDIR}/_ext/2124196601/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM0/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196601/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/186157216/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM7/r0p1/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/186157216" 
	@${RM} ${OBJECTDIR}/_ext/186157216/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/186157216/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/186157216/port.o.d" -o ${OBJECTDIR}/_ext/186157216/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM7/r0p1/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/186157216/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2111327397/portISR.o: ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/portISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2111327397" 
	@${RM} ${OBJECTDIR}/_ext/2111327397/portISR.o.d 
	@${RM} ${OBJECTDIR}/_ext/2111327397/portISR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2111327397/portISR.o.d" -o ${OBJECTDIR}/_ext/2111327397/portISR.o ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/portISR.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2111327397/portISR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2111327397/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2111327397" 
	@${RM} ${OBJECTDIR}/_ext/2111327397/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2111327397/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2111327397/port.o.d" -o ${OBJECTDIR}/_ext/2111327397/port.o ../../../lib/afr/freertos_kernel/portable/GCC/STR75x/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2111327397/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/496746403/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/HCS12/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/496746403" 
	@${RM} ${OBJECTDIR}/_ext/496746403/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/496746403/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/496746403/port.o.d" -o ${OBJECTDIR}/_ext/496746403/port.o ../../../lib/afr/freertos_kernel/portable/GCC/HCS12/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/496746403/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1781124133/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1781124133" 
	@${RM} ${OBJECTDIR}/_ext/1781124133/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1781124133/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1781124133/port.o.d" -o ${OBJECTDIR}/_ext/1781124133/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ColdFire_V2/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1781124133/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/501257293/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/MCF5235/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/501257293" 
	@${RM} ${OBJECTDIR}/_ext/501257293/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/501257293/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/501257293/port.o.d" -o ${OBJECTDIR}/_ext/501257293/port.o ../../../lib/afr/freertos_kernel/portable/GCC/MCF5235/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/501257293/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/868732920/portISR.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/portISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/868732920" 
	@${RM} ${OBJECTDIR}/_ext/868732920/portISR.o.d 
	@${RM} ${OBJECTDIR}/_ext/868732920/portISR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/868732920/portISR.o.d" -o ${OBJECTDIR}/_ext/868732920/portISR.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/portISR.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/868732920/portISR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/868732920/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/868732920" 
	@${RM} ${OBJECTDIR}/_ext/868732920/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/868732920/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/868732920/port.o.d" -o ${OBJECTDIR}/_ext/868732920/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC23xx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/868732920/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/486917328/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RX200/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486917328" 
	@${RM} ${OBJECTDIR}/_ext/486917328/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/486917328/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/486917328/port.o.d" -o ${OBJECTDIR}/_ext/486917328/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RX200/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/486917328/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/486913484/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RX600/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/486913484" 
	@${RM} ${OBJECTDIR}/_ext/486913484/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/486913484/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/486913484/port.o.d" -o ${OBJECTDIR}/_ext/486913484/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RX600/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/486913484/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/868727733/portISR.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/portISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/868727733" 
	@${RM} ${OBJECTDIR}/_ext/868727733/portISR.o.d 
	@${RM} ${OBJECTDIR}/_ext/868727733/portISR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/868727733/portISR.o.d" -o ${OBJECTDIR}/_ext/868727733/portISR.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/portISR.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/868727733/portISR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/868727733/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/868727733" 
	@${RM} ${OBJECTDIR}/_ext/868727733/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/868727733/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/868727733/port.o.d" -o ${OBJECTDIR}/_ext/868727733/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_LPC2000/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/868727733/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/948145979/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/948145979" 
	@${RM} ${OBJECTDIR}/_ext/948145979/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/948145979/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/948145979/port.o.d" -o ${OBJECTDIR}/_ext/948145979/port.o ../../../lib/afr/freertos_kernel/portable/GCC/IA32_flat/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/948145979/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1988497755/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1988497755" 
	@${RM} ${OBJECTDIR}/_ext/1988497755/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1988497755/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1988497755/port.o.d" -o ${OBJECTDIR}/_ext/1988497755/port.o ../../../lib/afr/freertos_kernel/portable/GCC/NiosII/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1988497755/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1847192621/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ATMega323/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847192621" 
	@${RM} ${OBJECTDIR}/_ext/1847192621/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847192621/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1847192621/port.o.d" -o ${OBJECTDIR}/_ext/1847192621/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ATMega323/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847192621/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/946811729/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/H8S2329/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/946811729" 
	@${RM} ${OBJECTDIR}/_ext/946811729/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/946811729/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/946811729/port.o.d" -o ${OBJECTDIR}/_ext/946811729/port.o ../../../lib/afr/freertos_kernel/portable/GCC/H8S2329/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/946811729/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1647804360/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1647804360" 
	@${RM} ${OBJECTDIR}/_ext/1647804360/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1647804360/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1647804360/port.o.d" -o ${OBJECTDIR}/_ext/1647804360/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CRx_No_GIC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1647804360/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2072580556/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2072580556" 
	@${RM} ${OBJECTDIR}/_ext/2072580556/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2072580556/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2072580556/port.o.d" -o ${OBJECTDIR}/_ext/2072580556/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RISC-V/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2072580556/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1324853081/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1324853081" 
	@${RM} ${OBJECTDIR}/_ext/1324853081/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1324853081/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1324853081/port.o.d" -o ${OBJECTDIR}/_ext/1324853081/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1324853081/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1324853081/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1324853081" 
	@${RM} ${OBJECTDIR}/_ext/1324853081/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1324853081/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1324853081/portasm.o.d" -o ${OBJECTDIR}/_ext/1324853081/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23_NTZ/non_secure/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1324853081/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/300548614/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/300548614" 
	@${RM} ${OBJECTDIR}/_ext/300548614/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/300548614/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/300548614/port.o.d" -o ${OBJECTDIR}/_ext/300548614/port.o ../../../lib/afr/freertos_kernel/portable/GCC/AVR32_UC3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/300548614/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1955953423/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1955953423" 
	@${RM} ${OBJECTDIR}/_ext/1955953423/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955953423/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1955953423/port.o.d" -o ${OBJECTDIR}/_ext/1955953423/port.o ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1955953423/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1955953423/porttrap.o: ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/porttrap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1955953423" 
	@${RM} ${OBJECTDIR}/_ext/1955953423/porttrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1955953423/porttrap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1955953423/porttrap.o.d" -o ${OBJECTDIR}/_ext/1955953423/porttrap.o ../../../lib/afr/freertos_kernel/portable/GCC/TriCore_1782/porttrap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1955953423/porttrap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196964/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196964" 
	@${RM} ${OBJECTDIR}/_ext/2124196964/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196964/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196964/port.o.d" -o ${OBJECTDIR}/_ext/2124196964/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA9/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196964/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1616804518/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1616804518" 
	@${RM} ${OBJECTDIR}/_ext/1616804518/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1616804518/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1616804518/port.o.d" -o ${OBJECTDIR}/_ext/1616804518/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1616804518/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1616804518/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1616804518" 
	@${RM} ${OBJECTDIR}/_ext/1616804518/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1616804518/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1616804518/portasm.o.d" -o ${OBJECTDIR}/_ext/1616804518/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1616804518/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/227580848/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RX600v2/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/227580848" 
	@${RM} ${OBJECTDIR}/_ext/227580848/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/227580848/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/227580848/port.o.d" -o ${OBJECTDIR}/_ext/227580848/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RX600v2/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/227580848/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/712764046/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RX700v3_DPFPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/712764046" 
	@${RM} ${OBJECTDIR}/_ext/712764046/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/712764046/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/712764046/port.o.d" -o ${OBJECTDIR}/_ext/712764046/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RX700v3_DPFPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/712764046/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196598/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196598" 
	@${RM} ${OBJECTDIR}/_ext/2124196598/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196598/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196598/port.o.d" -o ${OBJECTDIR}/_ext/2124196598/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196598/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/251511942/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/251511942" 
	@${RM} ${OBJECTDIR}/_ext/251511942/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/251511942/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/251511942/port.o.d" -o ${OBJECTDIR}/_ext/251511942/port.o ../../../lib/afr/freertos_kernel/portable/GCC/MicroBlaze/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/251511942/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1187781318/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/CORTUS_APS3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1187781318" 
	@${RM} ${OBJECTDIR}/_ext/1187781318/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1187781318/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1187781318/port.o.d" -o ${OBJECTDIR}/_ext/1187781318/port.o ../../../lib/afr/freertos_kernel/portable/GCC/CORTUS_APS3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1187781318/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1501352208/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1501352208" 
	@${RM} ${OBJECTDIR}/_ext/1501352208/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1501352208/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1501352208/port.o.d" -o ${OBJECTDIR}/_ext/1501352208/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CA53_64_BIT/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1501352208/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1279931197/portISR.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/portISR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1279931197" 
	@${RM} ${OBJECTDIR}/_ext/1279931197/portISR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1279931197/portISR.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1279931197/portISR.o.d" -o ${OBJECTDIR}/_ext/1279931197/portISR.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/portISR.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1279931197/portISR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1279931197/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1279931197" 
	@${RM} ${OBJECTDIR}/_ext/1279931197/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1279931197/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1279931197/port.o.d" -o ${OBJECTDIR}/_ext/1279931197/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM7_AT91FR40008/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1279931197/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/122828951/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/RL78/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122828951" 
	@${RM} ${OBJECTDIR}/_ext/122828951/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/122828951/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/122828951/port.o.d" -o ${OBJECTDIR}/_ext/122828951/port.o ../../../lib/afr/freertos_kernel/portable/GCC/RL78/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/122828951/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1177919254/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/MSP430F449/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1177919254" 
	@${RM} ${OBJECTDIR}/_ext/1177919254/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1177919254/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1177919254/port.o.d" -o ${OBJECTDIR}/_ext/1177919254/port.o ../../../lib/afr/freertos_kernel/portable/GCC/MSP430F449/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1177919254/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/966124963/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3_MPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/966124963" 
	@${RM} ${OBJECTDIR}/_ext/966124963/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/966124963/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/966124963/port.o.d" -o ${OBJECTDIR}/_ext/966124963/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM3_MPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/966124963/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1585363296/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/AVR_Mega0/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1585363296" 
	@${RM} ${OBJECTDIR}/_ext/1585363296/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1585363296/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1585363296/port.o.d" -o ${OBJECTDIR}/_ext/1585363296/port.o ../../../lib/afr/freertos_kernel/portable/GCC/AVR_Mega0/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1585363296/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/878282853/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/878282853" 
	@${RM} ${OBJECTDIR}/_ext/878282853/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/878282853/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/878282853/port.o.d" -o ${OBJECTDIR}/_ext/878282853/port.o ../../../lib/afr/freertos_kernel/portable/GCC/PPC405_Xilinx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/878282853/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2114282510/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2114282510" 
	@${RM} ${OBJECTDIR}/_ext/2114282510/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2114282510/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2114282510/port.o.d" -o ${OBJECTDIR}/_ext/2114282510/port.o ../../../lib/afr/freertos_kernel/portable/GCC/PPC440_Xilinx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2114282510/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1771098098/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1771098098" 
	@${RM} ${OBJECTDIR}/_ext/1771098098/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1771098098/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1771098098/port.o.d" -o ${OBJECTDIR}/_ext/1771098098/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1771098098/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1771098098/portasm.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1771098098" 
	@${RM} ${OBJECTDIR}/_ext/1771098098/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1771098098/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1771098098/portasm.o.d" -o ${OBJECTDIR}/_ext/1771098098/portasm.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/non_secure/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1771098098/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1883084580/secure_context.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1883084580" 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1883084580/secure_context.o.d" -o ${OBJECTDIR}/_ext/1883084580/secure_context.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1883084580/secure_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1883084580/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1883084580" 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1883084580/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1883084580/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1883084580/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1883084580/secure_init.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1883084580" 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1883084580/secure_init.o.d" -o ${OBJECTDIR}/_ext/1883084580/secure_init.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1883084580/secure_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1883084580/secure_heap.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_heap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1883084580" 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_heap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1883084580/secure_heap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1883084580/secure_heap.o.d" -o ${OBJECTDIR}/_ext/1883084580/secure_heap.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM23/secure/secure_heap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1883084580/secure_heap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1425584997/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1425584997" 
	@${RM} ${OBJECTDIR}/_ext/1425584997/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1425584997/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1425584997/port.o.d" -o ${OBJECTDIR}/_ext/1425584997/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1425584997/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/965201442/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4_MPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/965201442" 
	@${RM} ${OBJECTDIR}/_ext/965201442/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/965201442/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/965201442/port.o.d" -o ${OBJECTDIR}/_ext/965201442/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CM4_MPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/965201442/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2124196441/port.o: ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2124196441" 
	@${RM} ${OBJECTDIR}/_ext/2124196441/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124196441/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2124196441/port.o.d" -o ${OBJECTDIR}/_ext/2124196441/port.o ../../../lib/afr/freertos_kernel/portable/GCC/ARM_CR5/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124196441/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o: ../../../lib/afr/freertos_kernel/portable/Common/mpu_wrappers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1507077409" 
	@${RM} ${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o.d" -o ${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o ../../../lib/afr/freertos_kernel/portable/Common/mpu_wrappers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1507077409/mpu_wrappers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1648737201/port.o: ../../../lib/afr/freertos_kernel/portable/Rowley/MSP430F449/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1648737201" 
	@${RM} ${OBJECTDIR}/_ext/1648737201/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1648737201/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1648737201/port.o.d" -o ${OBJECTDIR}/_ext/1648737201/port.o ../../../lib/afr/freertos_kernel/portable/Rowley/MSP430F449/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1648737201/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/947030074/port.o: ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/small/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/947030074" 
	@${RM} ${OBJECTDIR}/_ext/947030074/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/947030074/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/947030074/port.o.d" -o ${OBJECTDIR}/_ext/947030074/port.o ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/small/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/947030074/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/463162171/port.o: ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/large_untested/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/463162171" 
	@${RM} ${OBJECTDIR}/_ext/463162171/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/463162171/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/463162171/port.o.d" -o ${OBJECTDIR}/_ext/463162171/port.o ../../../lib/afr/freertos_kernel/portable/Paradigm/Tern_EE/large_untested/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/463162171/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285462043/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM0/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/285462043" 
	@${RM} ${OBJECTDIR}/_ext/285462043/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/285462043/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285462043/port.o.d" -o ${OBJECTDIR}/_ext/285462043/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM0/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/285462043/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/604201972/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM7/r0p1/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/604201972" 
	@${RM} ${OBJECTDIR}/_ext/604201972/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/604201972/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/604201972/port.o.d" -o ${OBJECTDIR}/_ext/604201972/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM7/r0p1/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/604201972/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285461680/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/285461680" 
	@${RM} ${OBJECTDIR}/_ext/285461680/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/285461680/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285461680/port.o.d" -o ${OBJECTDIR}/_ext/285461680/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CA9/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/285461680/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/285462046/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/285462046" 
	@${RM} ${OBJECTDIR}/_ext/285462046/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/285462046/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/285462046/port.o.d" -o ${OBJECTDIR}/_ext/285462046/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/285462046/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/78371810/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/78371810" 
	@${RM} ${OBJECTDIR}/_ext/78371810/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/78371810/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/78371810/port.o.d" -o ${OBJECTDIR}/_ext/78371810/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM7_LPC21xx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/78371810/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/259388935/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/259388935" 
	@${RM} ${OBJECTDIR}/_ext/259388935/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/259388935/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/259388935/port.o.d" -o ${OBJECTDIR}/_ext/259388935/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/259388935/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/810418418/port.o: ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4_MPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/810418418" 
	@${RM} ${OBJECTDIR}/_ext/810418418/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/810418418/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/810418418/port.o.d" -o ${OBJECTDIR}/_ext/810418418/port.o ../../../lib/afr/freertos_kernel/portable/RVDS/ARM_CM4_MPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/810418418/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/435522139/port.o: ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/PC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/435522139" 
	@${RM} ${OBJECTDIR}/_ext/435522139/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/435522139/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/435522139/port.o.d" -o ${OBJECTDIR}/_ext/435522139/port.o ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/PC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/435522139/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1279475426/port.o: ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/Flsh186/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1279475426" 
	@${RM} ${OBJECTDIR}/_ext/1279475426/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1279475426/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1279475426/port.o.d" -o ${OBJECTDIR}/_ext/1279475426/port.o ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/Flsh186/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1279475426/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1843948701/portcomn.o: ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/common/portcomn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1843948701" 
	@${RM} ${OBJECTDIR}/_ext/1843948701/portcomn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1843948701/portcomn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1843948701/portcomn.o.d" -o ${OBJECTDIR}/_ext/1843948701/portcomn.o ../../../lib/afr/freertos_kernel/portable/oWatcom/16BitDOS/common/portcomn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1843948701/portcomn.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/205153989/port.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/205153989" 
	@${RM} ${OBJECTDIR}/_ext/205153989/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/205153989/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/205153989/port.o.d" -o ${OBJECTDIR}/_ext/205153989/port.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MX/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/205153989/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/52748546/port.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/52748546" 
	@${RM} ${OBJECTDIR}/_ext/52748546/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/52748546/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/52748546/port.o.d" -o ${OBJECTDIR}/_ext/52748546/port.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MEC14xx/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/52748546/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1669187602/port.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC18F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1669187602" 
	@${RM} ${OBJECTDIR}/_ext/1669187602/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1669187602/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1669187602/port.o.d" -o ${OBJECTDIR}/_ext/1669187602/port.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC18F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1669187602/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/205153987/port.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/205153987" 
	@${RM} ${OBJECTDIR}/_ext/205153987/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/205153987/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/205153987/port.o.d" -o ${OBJECTDIR}/_ext/205153987/port.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC32MZ/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/205153987/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/437362351/port.o: ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/437362351" 
	@${RM} ${OBJECTDIR}/_ext/437362351/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/437362351/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/437362351/port.o.d" -o ${OBJECTDIR}/_ext/437362351/port.o ../../../lib/afr/freertos_kernel/portable/MPLAB/PIC24_dsPIC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/437362351/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058873823/port.o: ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/PC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1058873823" 
	@${RM} ${OBJECTDIR}/_ext/1058873823/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058873823/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1058873823/port.o.d" -o ${OBJECTDIR}/_ext/1058873823/port.o ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/PC/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058873823/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1006320666/port.o: ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/Flsh186/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006320666" 
	@${RM} ${OBJECTDIR}/_ext/1006320666/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1006320666/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1006320666/port.o.d" -o ${OBJECTDIR}/_ext/1006320666/port.o ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/Flsh186/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1006320666/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/585091303/portcomn.o: ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/common/portcomn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/585091303" 
	@${RM} ${OBJECTDIR}/_ext/585091303/portcomn.o.d 
	@${RM} ${OBJECTDIR}/_ext/585091303/portcomn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/585091303/portcomn.o.d" -o ${OBJECTDIR}/_ext/585091303/portcomn.o ../../../lib/afr/freertos_kernel/portable/BCC/16BitDOS/common/portcomn.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/585091303/portcomn.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1138757583/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1138757583" 
	@${RM} ${OBJECTDIR}/_ext/1138757583/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1138757583/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1138757583/portasm.o.d" -o ${OBJECTDIR}/_ext/1138757583/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1138757583/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/823989829/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23_NTZ/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/823989829" 
	@${RM} ${OBJECTDIR}/_ext/823989829/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/823989829/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/823989829/portasm.o.d" -o ${OBJECTDIR}/_ext/823989829/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23_NTZ/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/823989829/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/852618980/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33_NTZ/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/852618980" 
	@${RM} ${OBJECTDIR}/_ext/852618980/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/852618980/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/852618980/portasm.o.d" -o ${OBJECTDIR}/_ext/852618980/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM33_NTZ/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/852618980/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1138757552/portasm.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23/portasm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1138757552" 
	@${RM} ${OBJECTDIR}/_ext/1138757552/portasm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1138757552/portasm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1138757552/portasm.o.d" -o ${OBJECTDIR}/_ext/1138757552/portasm.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/portable/GCC/ARM_CM23/portasm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1138757552/portasm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1103600747/port.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1103600747" 
	@${RM} ${OBJECTDIR}/_ext/1103600747/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1103600747/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1103600747/port.o.d" -o ${OBJECTDIR}/_ext/1103600747/port.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/non_secure/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1103600747/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1123175492/secure_init.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/init/secure_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1123175492" 
	@${RM} ${OBJECTDIR}/_ext/1123175492/secure_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123175492/secure_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1123175492/secure_init.o.d" -o ${OBJECTDIR}/_ext/1123175492/secure_init.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/init/secure_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1123175492/secure_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/572413827/secure_context.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/secure_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/572413827" 
	@${RM} ${OBJECTDIR}/_ext/572413827/secure_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/572413827/secure_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/572413827/secure_context.o.d" -o ${OBJECTDIR}/_ext/572413827/secure_context.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/secure_context.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/572413827/secure_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1031683254/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1031683254" 
	@${RM} ${OBJECTDIR}/_ext/1031683254/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1031683254/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1031683254/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1031683254/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM33/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1031683254/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1031683285/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1031683285" 
	@${RM} ${OBJECTDIR}/_ext/1031683285/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1031683285/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1031683285/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1031683285/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/IAR/ARM_CM23/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1031683285/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1936048835/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM33/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1936048835" 
	@${RM} ${OBJECTDIR}/_ext/1936048835/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1936048835/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1936048835/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1936048835/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM33/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1936048835/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1936048866/secure_context_port.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM23/secure_context_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1936048866" 
	@${RM} ${OBJECTDIR}/_ext/1936048866/secure_context_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1936048866/secure_context_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1936048866/secure_context_port.o.d" -o ${OBJECTDIR}/_ext/1936048866/secure_context_port.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/context/portable/GCC/ARM_CM23/secure_context_port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1936048866/secure_context_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1123214184/secure_heap.o: ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/heap/secure_heap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1123214184" 
	@${RM} ${OBJECTDIR}/_ext/1123214184/secure_heap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1123214184/secure_heap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1123214184/secure_heap.o.d" -o ${OBJECTDIR}/_ext/1123214184/secure_heap.o ../../../lib/afr/freertos_kernel/portable/ARMv8M/secure/heap/secure_heap.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1123214184/secure_heap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1933832991/Tick.o: ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1933832991" 
	@${RM} ${OBJECTDIR}/_ext/1933832991/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933832991/Tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1933832991/Tick.o.d" -o ${OBJECTDIR}/_ext/1933832991/Tick.o ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/Tick.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1933832991/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1933832991/isrTick.o: ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/isrTick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1933832991" 
	@${RM} ${OBJECTDIR}/_ext/1933832991/isrTick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1933832991/isrTick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1933832991/isrTick.o.d" -o ${OBJECTDIR}/_ext/1933832991/isrTick.o ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/Drivers/Tick/isrTick.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1933832991/isrTick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/95789487/port.o: ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/95789487" 
	@${RM} ${OBJECTDIR}/_ext/95789487/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/95789487/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/95789487/port.o.d" -o ${OBJECTDIR}/_ext/95789487/port.o ../../../lib/afr/freertos_kernel/portable/WizC/PIC18/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/95789487/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/290614047/port.o: ../../../lib/afr/freertos_kernel/portable/CCS/MSP430X/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/290614047" 
	@${RM} ${OBJECTDIR}/_ext/290614047/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/290614047/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/290614047/port.o.d" -o ${OBJECTDIR}/_ext/290614047/port.o ../../../lib/afr/freertos_kernel/portable/CCS/MSP430X/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/290614047/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1914141206/port.o: ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1914141206" 
	@${RM} ${OBJECTDIR}/_ext/1914141206/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1914141206/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1914141206/port.o.d" -o ${OBJECTDIR}/_ext/1914141206/port.o ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1914141206/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/623266235/port.o: ../../../lib/afr/freertos_kernel/portable/CCS/ARM_Cortex-R4/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/623266235" 
	@${RM} ${OBJECTDIR}/_ext/623266235/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/623266235/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/623266235/port.o.d" -o ${OBJECTDIR}/_ext/623266235/port.o ../../../lib/afr/freertos_kernel/portable/CCS/ARM_Cortex-R4/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/623266235/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/791164657/port.o: ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/791164657" 
	@${RM} ${OBJECTDIR}/_ext/791164657/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/791164657/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/791164657/port.o.d" -o ${OBJECTDIR}/_ext/791164657/port.o ../../../lib/afr/freertos_kernel/portable/CCS/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/791164657/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/523084622/heap_3.o: ../../../lib/afr/freertos_kernel/portable/MemMang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/523084622" 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/523084622/heap_3.o.d" -o ${OBJECTDIR}/_ext/523084622/heap_3.o ../../../lib/afr/freertos_kernel/portable/MemMang/heap_3.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/523084622/heap_3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/523084622/heap_4.o: ../../../lib/afr/freertos_kernel/portable/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/523084622" 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/523084622/heap_4.o.d" -o ${OBJECTDIR}/_ext/523084622/heap_4.o ../../../lib/afr/freertos_kernel/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/523084622/heap_4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/523084622/heap_5.o: ../../../lib/afr/freertos_kernel/portable/MemMang/heap_5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/523084622" 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_5.o.d 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/523084622/heap_5.o.d" -o ${OBJECTDIR}/_ext/523084622/heap_5.o ../../../lib/afr/freertos_kernel/portable/MemMang/heap_5.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/523084622/heap_5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/523084622/heap_1.o: ../../../lib/afr/freertos_kernel/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/523084622" 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/523084622/heap_1.o.d" -o ${OBJECTDIR}/_ext/523084622/heap_1.o ../../../lib/afr/freertos_kernel/portable/MemMang/heap_1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/523084622/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/523084622/heap_2.o: ../../../lib/afr/freertos_kernel/portable/MemMang/heap_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/523084622" 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_2.o.d 
	@${RM} ${OBJECTDIR}/_ext/523084622/heap_2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/523084622/heap_2.o.d" -o ${OBJECTDIR}/_ext/523084622/heap_2.o ../../../lib/afr/freertos_kernel/portable/MemMang/heap_2.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/523084622/heap_2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/430913507/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/RX100/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/430913507" 
	@${RM} ${OBJECTDIR}/_ext/430913507/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/430913507/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/430913507/port.o.d" -o ${OBJECTDIR}/_ext/430913507/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/RX100/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/430913507/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/430914468/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/RX200/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/430914468" 
	@${RM} ${OBJECTDIR}/_ext/430914468/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/430914468/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/430914468/port.o.d" -o ${OBJECTDIR}/_ext/430914468/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/RX200/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/430914468/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/430918312/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/RX600/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/430918312" 
	@${RM} ${OBJECTDIR}/_ext/430918312/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/430918312/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/430918312/port.o.d" -o ${OBJECTDIR}/_ext/430918312/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/RX600/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/430918312/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/160491640/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/SH2A_FPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/160491640" 
	@${RM} ${OBJECTDIR}/_ext/160491640/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/160491640/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/160491640/port.o.d" -o ${OBJECTDIR}/_ext/160491640/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/SH2A_FPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/160491640/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1795641124/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/RX600v2/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1795641124" 
	@${RM} ${OBJECTDIR}/_ext/1795641124/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1795641124/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1795641124/port.o.d" -o ${OBJECTDIR}/_ext/1795641124/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/RX600v2/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1795641124/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1237622298/port.o: ../../../lib/afr/freertos_kernel/portable/Renesas/RX700v3_DPFPU/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1237622298" 
	@${RM} ${OBJECTDIR}/_ext/1237622298/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1237622298/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1237622298/port.o.d" -o ${OBJECTDIR}/_ext/1237622298/port.o ../../../lib/afr/freertos_kernel/portable/Renesas/RX700v3_DPFPU/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1237622298/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/666862117/port.o: ../../../lib/afr/freertos_kernel/portable/Tasking/ARM_CM4F/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/666862117" 
	@${RM} ${OBJECTDIR}/_ext/666862117/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/666862117/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/666862117/port.o.d" -o ${OBJECTDIR}/_ext/666862117/port.o ../../../lib/afr/freertos_kernel/portable/Tasking/ARM_CM4F/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/666862117/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1434886805/port.o: ../../../lib/afr/freertos_kernel/portable/CodeWarrior/HCS12/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434886805" 
	@${RM} ${OBJECTDIR}/_ext/1434886805/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434886805/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1434886805/port.o.d" -o ${OBJECTDIR}/_ext/1434886805/port.o ../../../lib/afr/freertos_kernel/portable/CodeWarrior/HCS12/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434886805/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/130836147/port.o: ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/130836147" 
	@${RM} ${OBJECTDIR}/_ext/130836147/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/130836147/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/130836147/port.o.d" -o ${OBJECTDIR}/_ext/130836147/port.o ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V2/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/130836147/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/130836146/port.o: ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/130836146" 
	@${RM} ${OBJECTDIR}/_ext/130836146/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/130836146/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/130836146/port.o.d" -o ${OBJECTDIR}/_ext/130836146/port.o ../../../lib/afr/freertos_kernel/portable/CodeWarrior/ColdFire_V1/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/130836146/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/552203917/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/552203917" 
	@${RM} ${OBJECTDIR}/_ext/552203917/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/552203917/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/552203917/port.o.d" -o ${OBJECTDIR}/_ext/552203917/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/CDK/T-HEAD_CK802/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/552203917/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_intr.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_intr.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_intr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_intr.o.d" -o ${OBJECTDIR}/_ext/912209894/xtensa_intr.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_intr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_intr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/portclib.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portclib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/portclib.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/portclib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/portclib.o.d" -o ${OBJECTDIR}/_ext/912209894/portclib.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/portclib.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/portclib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_init.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_init.o.d" -o ${OBJECTDIR}/_ext/912209894/xtensa_init.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/port.o.d" -o ${OBJECTDIR}/_ext/912209894/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/912209894" 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o.d" -o ${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/XCC/Xtensa/xtensa_overlay_os_hook.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/912209894/xtensa_overlay_os_hook.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1173681791/wait_for_event.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1173681791" 
	@${RM} ${OBJECTDIR}/_ext/1173681791/wait_for_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1173681791/wait_for_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1173681791/wait_for_event.o.d" -o ${OBJECTDIR}/_ext/1173681791/wait_for_event.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/utils/wait_for_event.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1173681791/wait_for_event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1238046431/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1238046431" 
	@${RM} ${OBJECTDIR}/_ext/1238046431/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1238046431/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1238046431/port.o.d" -o ${OBJECTDIR}/_ext/1238046431/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Posix/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1238046431/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o.d" -o ${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/FreeRTOS-openocd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/FreeRTOS-openocd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_intr.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_intr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_intr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_intr.o.d" -o ${OBJECTDIR}/_ext/1544756697/xtensa_intr.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_intr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_intr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_init.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_init.o.d" -o ${OBJECTDIR}/_ext/1544756697/xtensa_init.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/port.o.d" -o ${OBJECTDIR}/_ext/1544756697/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544756697" 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o.d" -o ${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32/xtensa_overlay_os_hook.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544756697/xtensa_overlay_os_hook.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992749105/freertos_tls.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992749105" 
	@${RM} ${OBJECTDIR}/_ext/992749105/freertos_tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/992749105/freertos_tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/992749105/freertos_tls.o.d" -o ${OBJECTDIR}/_ext/992749105/freertos_tls.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/freertos_tls.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992749105/freertos_tls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992749105" 
	@${RM} ${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o.d" -o ${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/arc_freertos_exceptions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992749105/arc_freertos_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992749105/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992749105" 
	@${RM} ${OBJECTDIR}/_ext/992749105/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/992749105/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/992749105/port.o.d" -o ${OBJECTDIR}/_ext/992749105/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_EM_HS/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992749105/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732925268" 
	@${RM} ${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o.d" -o ${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/arc_freertos_exceptions.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/732925268/arc_freertos_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/732925268/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/732925268" 
	@${RM} ${OBJECTDIR}/_ext/732925268/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/732925268/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/732925268/port.o.d" -o ${OBJECTDIR}/_ext/732925268/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARC_v1/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/732925268/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARM_CM33_TFM/os_wrapper_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1704329549" 
	@${RM} ${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o.d" -o ${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ARM_CM33_TFM/os_wrapper_freertos.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1704329549/os_wrapper_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/729821655/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ATmega/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/729821655" 
	@${RM} ${OBJECTDIR}/_ext/729821655/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/729821655/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/729821655/port.o.d" -o ${OBJECTDIR}/_ext/729821655/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/ATmega/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/729821655/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/FreeRTOS-openocd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o.d" -o ${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/FreeRTOS-openocd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/FreeRTOS-openocd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_intr.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_intr.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_intr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_intr.o.d" -o ${OBJECTDIR}/_ext/738169262/xtensa_intr.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_intr.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_intr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_init.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_init.o.d" -o ${OBJECTDIR}/_ext/738169262/xtensa_init.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_init.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/port.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/port.o.d" -o ${OBJECTDIR}/_ext/738169262/port.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o: ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_overlay_os_hook.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/738169262" 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o.d 
	@${RM} ${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o.d" -o ${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o ../../../lib/afr/freertos_kernel/portable/ThirdParty/GCC/Xtensa_ESP32_IDF3/xtensa_overlay_os_hook.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/738169262/xtensa_overlay_os_hook.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/307975644/port.o: ../../../lib/afr/freertos_kernel/portable/MSVC-MingW/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/307975644" 
	@${RM} ${OBJECTDIR}/_ext/307975644/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/307975644/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/307975644/port.o.d" -o ${OBJECTDIR}/_ext/307975644/port.o ../../../lib/afr/freertos_kernel/portable/MSVC-MingW/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/307975644/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/queue.o: ../../../lib/afr/freertos_kernel/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/queue.o.d" -o ${OBJECTDIR}/_ext/702484399/queue.o ../../../lib/afr/freertos_kernel/queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/timers.o: ../../../lib/afr/freertos_kernel/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/timers.o.d" -o ${OBJECTDIR}/_ext/702484399/timers.o ../../../lib/afr/freertos_kernel/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/tasks.o: ../../../lib/afr/freertos_kernel/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/tasks.o.d" -o ${OBJECTDIR}/_ext/702484399/tasks.o ../../../lib/afr/freertos_kernel/tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/event_groups.o: ../../../lib/afr/freertos_kernel/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/event_groups.o.d" -o ${OBJECTDIR}/_ext/702484399/event_groups.o ../../../lib/afr/freertos_kernel/event_groups.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/702484399/croutine.o: ../../../lib/afr/freertos_kernel/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/702484399" 
	@${RM} ${OBJECTDIR}/_ext/702484399/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/702484399/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/702484399/croutine.o.d" -o ${OBJECTDIR}/_ext/702484399/croutine.o ../../../lib/afr/freertos_kernel/croutine.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/702484399/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/softap-wifi-provisioning.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/softap-wifi-provisioning.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/softap-wifi-provisioning.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/softap-wifi-provisioning.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/softap-wifi-provisioning.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
