#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a pre- and a post- target defined where you can add customization code.
#
# This makefile implements macros and targets common to all configurations.
#
# NOCDDL


# Building and Cleaning subprojects are done by default, but can be controlled with the SUB
# macro. If SUB=no, subprojects will not be built or cleaned. The following macro
# statements set BUILD_SUB-CONF and CLEAN_SUB-CONF to .build-reqprojects-conf
# and .clean-reqprojects-conf unless SUB has the value 'no'
SUB_no=NO
SUBPROJECTS=${SUB_${SUB}}
BUILD_SUBPROJECTS_=.build-subprojects
BUILD_SUBPROJECTS_NO=
BUILD_SUBPROJECTS=${BUILD_SUBPROJECTS_${SUBPROJECTS}}
CLEAN_SUBPROJECTS_=.clean-subprojects
CLEAN_SUBPROJECTS_NO=
CLEAN_SUBPROJECTS=${CLEAN_SUBPROJECTS_${SUBPROJECTS}}


# Project Name
PROJECTNAME=usb_stack_hid_simple_demo.X

# Active Configuration
DEFAULTCONF=PIC16F1454
CONF=${DEFAULTCONF}

# All Configurations
ALLCONFS=PIC24FJ64GB002 PIC24FJ64GB002-bootloader PIC24FJ256DA206 PIC24FJ256DA206-bootloader PIC18_Starter_Kit_PIC18F46J50 PIC16F1454 PIC16F1459 PIC32_USB_Starter_Board_PIC32MX460F512L 


# build
.build-impl: .build-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .build-conf


# clean
.clean-impl: .clean-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .clean-conf

# clobber
.clobber-impl: .clobber-pre .depcheck-impl
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ64GB002 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ64GB002-bootloader clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ256DA206 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ256DA206-bootloader clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC18_Starter_Kit_PIC18F46J50 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC16F1454 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC16F1459 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC32_USB_Starter_Board_PIC32MX460F512L clean



# all
.all-impl: .all-pre .depcheck-impl
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ64GB002 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ64GB002-bootloader build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ256DA206 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC24FJ256DA206-bootloader build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC18_Starter_Kit_PIC18F46J50 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC16F1454 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC16F1459 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=PIC32_USB_Starter_Board_PIC32MX460F512L build



# dependency checking support
.depcheck-impl:
#	@echo "# This code depends on make tool being used" >.dep.inc
#	@if [ -n "${MAKE_VERSION}" ]; then \
#	    echo "DEPFILES=\$$(wildcard \$$(addsuffix .d, \$${OBJECTFILES}))" >>.dep.inc; \
#	    echo "ifneq (\$${DEPFILES},)" >>.dep.inc; \
#	    echo "include \$${DEPFILES}" >>.dep.inc; \
#	    echo "endif" >>.dep.inc; \
#	else \
#	    echo ".KEEP_STATE:" >>.dep.inc; \
#	    echo ".KEEP_STATE_FILE:.make.state.\$${CONF}" >>.dep.inc; \
#	fi
