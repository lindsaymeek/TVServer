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
ifeq "$(wildcard nbproject/Makefile-local-PIC24FJ64GB002.mk)" "nbproject/Makefile-local-PIC24FJ64GB002.mk"
include nbproject/Makefile-local-PIC24FJ64GB002.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=PIC24FJ64GB002
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/main.c ../src/app_device_msd.c fast_copy.s ../src/Ethernet/socket.c ../src/Ethernet/wizchip_conf.c ../src/Ethernet/W5500/w5500.c ../src/usb/usb_device.c ../src/usb/usb_device_msd.c ../src/usb/usb_descriptors.c ../src/system.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_device_msd.o ${OBJECTDIR}/fast_copy.o ${OBJECTDIR}/_ext/1473102927/socket.o ${OBJECTDIR}/_ext/1473102927/wizchip_conf.o ${OBJECTDIR}/_ext/849320345/w5500.o ${OBJECTDIR}/_ext/659870090/usb_device.o ${OBJECTDIR}/_ext/659870090/usb_device_msd.o ${OBJECTDIR}/_ext/659870090/usb_descriptors.o ${OBJECTDIR}/_ext/1360937237/system.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app_device_msd.o.d ${OBJECTDIR}/fast_copy.o.d ${OBJECTDIR}/_ext/1473102927/socket.o.d ${OBJECTDIR}/_ext/1473102927/wizchip_conf.o.d ${OBJECTDIR}/_ext/849320345/w5500.o.d ${OBJECTDIR}/_ext/659870090/usb_device.o.d ${OBJECTDIR}/_ext/659870090/usb_device_msd.o.d ${OBJECTDIR}/_ext/659870090/usb_descriptors.o.d ${OBJECTDIR}/_ext/1360937237/system.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app_device_msd.o ${OBJECTDIR}/fast_copy.o ${OBJECTDIR}/_ext/1473102927/socket.o ${OBJECTDIR}/_ext/1473102927/wizchip_conf.o ${OBJECTDIR}/_ext/849320345/w5500.o ${OBJECTDIR}/_ext/659870090/usb_device.o ${OBJECTDIR}/_ext/659870090/usb_device_msd.o ${OBJECTDIR}/_ext/659870090/usb_descriptors.o ${OBJECTDIR}/_ext/1360937237/system.o

# Source Files
SOURCEFILES=../src/main.c ../src/app_device_msd.c fast_copy.s ../src/Ethernet/socket.c ../src/Ethernet/wizchip_conf.c ../src/Ethernet/W5500/w5500.c ../src/usb/usb_device.c ../src/usb/usb_device_msd.c ../src/usb/usb_descriptors.c ../src/system.c


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
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-PIC24FJ64GB002.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ64GB002
MP_LINKER_FILE_OPTION=,--script=p24FJ64GB002.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app_device_msd.o: ../src/app_device_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/app_device_msd.c  -o ${OBJECTDIR}/_ext/1360937237/app_device_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_device_msd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_device_msd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1473102927/socket.o: ../src/Ethernet/socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1473102927 
	@${RM} ${OBJECTDIR}/_ext/1473102927/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1473102927/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/Ethernet/socket.c  -o ${OBJECTDIR}/_ext/1473102927/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1473102927/socket.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1473102927/socket.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1473102927/wizchip_conf.o: ../src/Ethernet/wizchip_conf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1473102927 
	@${RM} ${OBJECTDIR}/_ext/1473102927/wizchip_conf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1473102927/wizchip_conf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/Ethernet/wizchip_conf.c  -o ${OBJECTDIR}/_ext/1473102927/wizchip_conf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1473102927/wizchip_conf.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1473102927/wizchip_conf.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/849320345/w5500.o: ../src/Ethernet/W5500/w5500.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/849320345 
	@${RM} ${OBJECTDIR}/_ext/849320345/w5500.o.d 
	@${RM} ${OBJECTDIR}/_ext/849320345/w5500.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/Ethernet/W5500/w5500.c  -o ${OBJECTDIR}/_ext/849320345/w5500.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/849320345/w5500.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/849320345/w5500.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/659870090/usb_device.o: ../src/usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/659870090 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/usb/usb_device.c  -o ${OBJECTDIR}/_ext/659870090/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/659870090/usb_device.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/659870090/usb_device.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/659870090/usb_device_msd.o: ../src/usb/usb_device_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/659870090 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_device_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/usb/usb_device_msd.c  -o ${OBJECTDIR}/_ext/659870090/usb_device_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/659870090/usb_device_msd.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/659870090/usb_device_msd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/659870090/usb_descriptors.o: ../src/usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/659870090 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/usb/usb_descriptors.c  -o ${OBJECTDIR}/_ext/659870090/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/659870090/usb_descriptors.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/659870090/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/system.o: ../src/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system.c  -o ${OBJECTDIR}/_ext/1360937237/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"        -g -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app_device_msd.o: ../src/app_device_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_device_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/app_device_msd.c  -o ${OBJECTDIR}/_ext/1360937237/app_device_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_device_msd.o.d"        -g -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_device_msd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1473102927/socket.o: ../src/Ethernet/socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1473102927 
	@${RM} ${OBJECTDIR}/_ext/1473102927/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1473102927/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/Ethernet/socket.c  -o ${OBJECTDIR}/_ext/1473102927/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1473102927/socket.o.d"        -g -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1473102927/socket.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1473102927/wizchip_conf.o: ../src/Ethernet/wizchip_conf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1473102927 
	@${RM} ${OBJECTDIR}/_ext/1473102927/wizchip_conf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1473102927/wizchip_conf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/Ethernet/wizchip_conf.c  -o ${OBJECTDIR}/_ext/1473102927/wizchip_conf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1473102927/wizchip_conf.o.d"        -g -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1473102927/wizchip_conf.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/849320345/w5500.o: ../src/Ethernet/W5500/w5500.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/849320345 
	@${RM} ${OBJECTDIR}/_ext/849320345/w5500.o.d 
	@${RM} ${OBJECTDIR}/_ext/849320345/w5500.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/Ethernet/W5500/w5500.c  -o ${OBJECTDIR}/_ext/849320345/w5500.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/849320345/w5500.o.d"        -g -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/849320345/w5500.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/659870090/usb_device.o: ../src/usb/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/659870090 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/usb/usb_device.c  -o ${OBJECTDIR}/_ext/659870090/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/659870090/usb_device.o.d"        -g -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/659870090/usb_device.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/659870090/usb_device_msd.o: ../src/usb/usb_device_msd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/659870090 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_device_msd.o.d 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_device_msd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/usb/usb_device_msd.c  -o ${OBJECTDIR}/_ext/659870090/usb_device_msd.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/659870090/usb_device_msd.o.d"        -g -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/659870090/usb_device_msd.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/659870090/usb_descriptors.o: ../src/usb/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/659870090 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/_ext/659870090/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/usb/usb_descriptors.c  -o ${OBJECTDIR}/_ext/659870090/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/659870090/usb_descriptors.o.d"        -g -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/659870090/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/system.o: ../src/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/system.c  -o ${OBJECTDIR}/_ext/1360937237/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1360937237/system.o.d"        -g -omf=elf -save-temps=obj -msmall-code -msmall-data -O1 -funroll-loops -fomit-frame-pointer -I"../src" -I"../../../../../../framework" -I"../../../../../../bsp/exp16/pic24fj64gb004_pim" -I"../src/system_config/exp16/pic24fj64gb004_pim" -msmart-io=1 -msfr-warn=off -fno-ivopts
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/fast_copy.o: fast_copy.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/fast_copy.o.d 
	@${RM} ${OBJECTDIR}/fast_copy.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  fast_copy.s  -o ${OBJECTDIR}/fast_copy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -save-temps=obj -Wa,-MD,"${OBJECTDIR}/fast_copy.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/fast_copy.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/fast_copy.o: fast_copy.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/fast_copy.o.d 
	@${RM} ${OBJECTDIR}/fast_copy.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  fast_copy.s  -o ${OBJECTDIR}/fast_copy.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -save-temps=obj -Wa,-MD,"${OBJECTDIR}/fast_copy.o.d",--defsym=__MPLAB_BUILD=1,-g,--relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/fast_copy.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -save-temps=obj  -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -save-temps=obj -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/PIC24FJ64GB002
	${RM} -r dist/PIC24FJ64GB002

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
