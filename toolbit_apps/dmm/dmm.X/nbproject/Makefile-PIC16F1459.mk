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
ifeq "$(wildcard nbproject/Makefile-local-PIC16F1459.mk)" "nbproject/Makefile-local-PIC16F1459.mk"
include nbproject/Makefile-local-PIC16F1459.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC16F1459
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/luke.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/luke.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../lib/i2c-lib.c ../memory/memory.c ../../../usb/src/usb.c ../../../usb/src/usb_hid.c ../usb_descriptors.c ../../common/hardware.c ../main.c ../luke_func.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1445267685/i2c-lib.p1 ${OBJECTDIR}/_ext/993419216/memory.p1 ${OBJECTDIR}/_ext/1268166442/usb.p1 ${OBJECTDIR}/_ext/1268166442/usb_hid.p1 ${OBJECTDIR}/_ext/1472/usb_descriptors.p1 ${OBJECTDIR}/_ext/1329223797/hardware.p1 ${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1472/luke_func.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1445267685/i2c-lib.p1.d ${OBJECTDIR}/_ext/993419216/memory.p1.d ${OBJECTDIR}/_ext/1268166442/usb.p1.d ${OBJECTDIR}/_ext/1268166442/usb_hid.p1.d ${OBJECTDIR}/_ext/1472/usb_descriptors.p1.d ${OBJECTDIR}/_ext/1329223797/hardware.p1.d ${OBJECTDIR}/_ext/1472/main.p1.d ${OBJECTDIR}/_ext/1472/luke_func.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1445267685/i2c-lib.p1 ${OBJECTDIR}/_ext/993419216/memory.p1 ${OBJECTDIR}/_ext/1268166442/usb.p1 ${OBJECTDIR}/_ext/1268166442/usb_hid.p1 ${OBJECTDIR}/_ext/1472/usb_descriptors.p1 ${OBJECTDIR}/_ext/1329223797/hardware.p1 ${OBJECTDIR}/_ext/1472/main.p1 ${OBJECTDIR}/_ext/1472/luke_func.p1

# Source Files
SOURCEFILES=../../lib/i2c-lib.c ../memory/memory.c ../../../usb/src/usb.c ../../../usb/src/usb_hid.c ../usb_descriptors.c ../../common/hardware.c ../main.c ../luke_func.c



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
	${MAKE}  -f nbproject/Makefile-PIC16F1459.mk dist/${CND_CONF}/${IMAGE_TYPE}/luke.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F1459
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1445267685/i2c-lib.p1: ../../lib/i2c-lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1445267685" 
	@${RM} ${OBJECTDIR}/_ext/1445267685/i2c-lib.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1445267685/i2c-lib.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1445267685/i2c-lib.p1 ../../lib/i2c-lib.c 
	@-${MV} ${OBJECTDIR}/_ext/1445267685/i2c-lib.d ${OBJECTDIR}/_ext/1445267685/i2c-lib.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1445267685/i2c-lib.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/993419216/memory.p1: ../memory/memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/993419216" 
	@${RM} ${OBJECTDIR}/_ext/993419216/memory.p1.d 
	@${RM} ${OBJECTDIR}/_ext/993419216/memory.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/993419216/memory.p1 ../memory/memory.c 
	@-${MV} ${OBJECTDIR}/_ext/993419216/memory.d ${OBJECTDIR}/_ext/993419216/memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/993419216/memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1268166442/usb.p1: ../../../usb/src/usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1268166442" 
	@${RM} ${OBJECTDIR}/_ext/1268166442/usb.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1268166442/usb.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1268166442/usb.p1 ../../../usb/src/usb.c 
	@-${MV} ${OBJECTDIR}/_ext/1268166442/usb.d ${OBJECTDIR}/_ext/1268166442/usb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1268166442/usb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1268166442/usb_hid.p1: ../../../usb/src/usb_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1268166442" 
	@${RM} ${OBJECTDIR}/_ext/1268166442/usb_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1268166442/usb_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1268166442/usb_hid.p1 ../../../usb/src/usb_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/1268166442/usb_hid.d ${OBJECTDIR}/_ext/1268166442/usb_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1268166442/usb_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/usb_descriptors.p1: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1472/usb_descriptors.p1 ../usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/usb_descriptors.d ${OBJECTDIR}/_ext/1472/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1329223797/hardware.p1: ../../common/hardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1329223797" 
	@${RM} ${OBJECTDIR}/_ext/1329223797/hardware.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1329223797/hardware.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1329223797/hardware.p1 ../../common/hardware.c 
	@-${MV} ${OBJECTDIR}/_ext/1329223797/hardware.d ${OBJECTDIR}/_ext/1329223797/hardware.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1329223797/hardware.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1472/main.p1 ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/luke_func.p1: ../luke_func.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/luke_func.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/luke_func.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1472/luke_func.p1 ../luke_func.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/luke_func.d ${OBJECTDIR}/_ext/1472/luke_func.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/luke_func.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1445267685/i2c-lib.p1: ../../lib/i2c-lib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1445267685" 
	@${RM} ${OBJECTDIR}/_ext/1445267685/i2c-lib.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1445267685/i2c-lib.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1445267685/i2c-lib.p1 ../../lib/i2c-lib.c 
	@-${MV} ${OBJECTDIR}/_ext/1445267685/i2c-lib.d ${OBJECTDIR}/_ext/1445267685/i2c-lib.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1445267685/i2c-lib.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/993419216/memory.p1: ../memory/memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/993419216" 
	@${RM} ${OBJECTDIR}/_ext/993419216/memory.p1.d 
	@${RM} ${OBJECTDIR}/_ext/993419216/memory.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/993419216/memory.p1 ../memory/memory.c 
	@-${MV} ${OBJECTDIR}/_ext/993419216/memory.d ${OBJECTDIR}/_ext/993419216/memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/993419216/memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1268166442/usb.p1: ../../../usb/src/usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1268166442" 
	@${RM} ${OBJECTDIR}/_ext/1268166442/usb.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1268166442/usb.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1268166442/usb.p1 ../../../usb/src/usb.c 
	@-${MV} ${OBJECTDIR}/_ext/1268166442/usb.d ${OBJECTDIR}/_ext/1268166442/usb.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1268166442/usb.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1268166442/usb_hid.p1: ../../../usb/src/usb_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1268166442" 
	@${RM} ${OBJECTDIR}/_ext/1268166442/usb_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1268166442/usb_hid.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1268166442/usb_hid.p1 ../../../usb/src/usb_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/1268166442/usb_hid.d ${OBJECTDIR}/_ext/1268166442/usb_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1268166442/usb_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/usb_descriptors.p1: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1472/usb_descriptors.p1 ../usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/usb_descriptors.d ${OBJECTDIR}/_ext/1472/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1329223797/hardware.p1: ../../common/hardware.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1329223797" 
	@${RM} ${OBJECTDIR}/_ext/1329223797/hardware.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1329223797/hardware.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1329223797/hardware.p1 ../../common/hardware.c 
	@-${MV} ${OBJECTDIR}/_ext/1329223797/hardware.d ${OBJECTDIR}/_ext/1329223797/hardware.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1329223797/hardware.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/main.p1: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1472/main.p1 ../main.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/main.d ${OBJECTDIR}/_ext/1472/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1472/luke_func.p1: ../luke_func.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/luke_func.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1472/luke_func.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -DXPRJ_PIC16F1459=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/_ext/1472/luke_func.p1 ../luke_func.c 
	@-${MV} ${OBJECTDIR}/_ext/1472/luke_func.d ${OBJECTDIR}/_ext/1472/luke_func.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1472/luke_func.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/luke.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/luke.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_PIC16F1459=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/luke.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/luke.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/luke.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/luke.X.${IMAGE_TYPE}.map  -DXPRJ_PIC16F1459=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -Og -maddrqual=ignore -xassembler-with-cpp -I".." -I"../../../usb/include" -I"../../common" -mwarn=0 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mosccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/luke.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC16F1459
	${RM} -r dist/PIC16F1459

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
