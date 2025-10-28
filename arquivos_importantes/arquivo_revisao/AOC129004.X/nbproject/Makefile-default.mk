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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=obj
DEBUGGABLE_SUFFIX=obj
FINAL_IMAGE=${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=obj
DEBUGGABLE_SUFFIX=obj
FINAL_IMAGE=${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=part2.ASM part1.ASM experimento_soma.ASM enderecamento_direto.ASM enderecamento_indireto.ASM enderecamento_indireto_com_pos-incremento.ASM enderecamento_indireto_com_pre-decremento.ASM enderecamento_indireto_com_deslocamento.ASM alocando_espaco_sram.ASM usando_operacao_soma.ASM usando_low_e_high.ASM experimento_sram.ASM sram_vetores.ASM subrotinas_soma.ASM pisca_led_completo.ASM

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/part2.o ${OBJECTDIR}/part1.o ${OBJECTDIR}/experimento_soma.o ${OBJECTDIR}/enderecamento_direto.o ${OBJECTDIR}/enderecamento_indireto.o ${OBJECTDIR}/enderecamento_indireto_com_pos-incremento.o ${OBJECTDIR}/enderecamento_indireto_com_pre-decremento.o ${OBJECTDIR}/enderecamento_indireto_com_deslocamento.o ${OBJECTDIR}/alocando_espaco_sram.o ${OBJECTDIR}/usando_operacao_soma.o ${OBJECTDIR}/usando_low_e_high.o ${OBJECTDIR}/experimento_sram.o ${OBJECTDIR}/sram_vetores.o ${OBJECTDIR}/subrotinas_soma.o ${OBJECTDIR}/pisca_led_completo.o
POSSIBLE_DEPFILES=${OBJECTDIR}/part2.o.d ${OBJECTDIR}/part1.o.d ${OBJECTDIR}/experimento_soma.o.d ${OBJECTDIR}/enderecamento_direto.o.d ${OBJECTDIR}/enderecamento_indireto.o.d ${OBJECTDIR}/enderecamento_indireto_com_pos-incremento.o.d ${OBJECTDIR}/enderecamento_indireto_com_pre-decremento.o.d ${OBJECTDIR}/enderecamento_indireto_com_deslocamento.o.d ${OBJECTDIR}/alocando_espaco_sram.o.d ${OBJECTDIR}/usando_operacao_soma.o.d ${OBJECTDIR}/usando_low_e_high.o.d ${OBJECTDIR}/experimento_sram.o.d ${OBJECTDIR}/sram_vetores.o.d ${OBJECTDIR}/subrotinas_soma.o.d ${OBJECTDIR}/pisca_led_completo.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/part2.o ${OBJECTDIR}/part1.o ${OBJECTDIR}/experimento_soma.o ${OBJECTDIR}/enderecamento_direto.o ${OBJECTDIR}/enderecamento_indireto.o ${OBJECTDIR}/enderecamento_indireto_com_pos-incremento.o ${OBJECTDIR}/enderecamento_indireto_com_pre-decremento.o ${OBJECTDIR}/enderecamento_indireto_com_deslocamento.o ${OBJECTDIR}/alocando_espaco_sram.o ${OBJECTDIR}/usando_operacao_soma.o ${OBJECTDIR}/usando_low_e_high.o ${OBJECTDIR}/experimento_sram.o ${OBJECTDIR}/sram_vetores.o ${OBJECTDIR}/subrotinas_soma.o ${OBJECTDIR}/pisca_led_completo.o

# Source Files
SOURCEFILES=part2.ASM part1.ASM experimento_soma.ASM enderecamento_direto.ASM enderecamento_indireto.ASM enderecamento_indireto_com_pos-incremento.ASM enderecamento_indireto_com_pre-decremento.ASM enderecamento_indireto_com_deslocamento.ASM alocando_espaco_sram.ASM usando_operacao_soma.ASM usando_low_e_high.ASM experimento_sram.ASM sram_vetores.ASM subrotinas_soma.ASM pisca_led_completo.ASM

# Pack Options 
PACK_ASSEMBLER_OPTIONS=-I "${DFP_DIR}/avrasm/inc"  -i m328Pdef.inc



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/part2.o: part2.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/part2.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp part2.ASM
${OBJECTDIR}/part1.o: part1.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/part1.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp part1.ASM
${OBJECTDIR}/experimento_soma.o: experimento_soma.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/experimento_soma.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp experimento_soma.ASM
${OBJECTDIR}/enderecamento_direto.o: enderecamento_direto.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enderecamento_direto.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp enderecamento_direto.ASM
${OBJECTDIR}/enderecamento_indireto.o: enderecamento_indireto.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enderecamento_indireto.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp enderecamento_indireto.ASM
${OBJECTDIR}/enderecamento_indireto_com_pos-incremento.o: enderecamento_indireto_com_pos-incremento.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enderecamento_indireto_com_pos-incremento.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp enderecamento_indireto_com_pos-incremento.ASM
${OBJECTDIR}/enderecamento_indireto_com_pre-decremento.o: enderecamento_indireto_com_pre-decremento.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enderecamento_indireto_com_pre-decremento.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp enderecamento_indireto_com_pre-decremento.ASM
${OBJECTDIR}/enderecamento_indireto_com_deslocamento.o: enderecamento_indireto_com_deslocamento.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enderecamento_indireto_com_deslocamento.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp enderecamento_indireto_com_deslocamento.ASM
${OBJECTDIR}/alocando_espaco_sram.o: alocando_espaco_sram.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alocando_espaco_sram.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp alocando_espaco_sram.ASM
${OBJECTDIR}/usando_operacao_soma.o: usando_operacao_soma.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usando_operacao_soma.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp usando_operacao_soma.ASM
${OBJECTDIR}/usando_low_e_high.o: usando_low_e_high.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usando_low_e_high.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp usando_low_e_high.ASM
${OBJECTDIR}/experimento_sram.o: experimento_sram.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/experimento_sram.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp experimento_sram.ASM
${OBJECTDIR}/sram_vetores.o: sram_vetores.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sram_vetores.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp sram_vetores.ASM
${OBJECTDIR}/subrotinas_soma.o: subrotinas_soma.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/subrotinas_soma.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp subrotinas_soma.ASM
${OBJECTDIR}/pisca_led_completo.o: pisca_led_completo.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pisca_led_completo.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp pisca_led_completo.ASM
else
${OBJECTDIR}/part2.o: part2.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/part2.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss part2.ASM
${OBJECTDIR}/part1.o: part1.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/part1.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss part1.ASM
${OBJECTDIR}/experimento_soma.o: experimento_soma.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/experimento_soma.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss experimento_soma.ASM
${OBJECTDIR}/enderecamento_direto.o: enderecamento_direto.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enderecamento_direto.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss enderecamento_direto.ASM
${OBJECTDIR}/enderecamento_indireto.o: enderecamento_indireto.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enderecamento_indireto.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss enderecamento_indireto.ASM
${OBJECTDIR}/enderecamento_indireto_com_pos-incremento.o: enderecamento_indireto_com_pos-incremento.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enderecamento_indireto_com_pos-incremento.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss enderecamento_indireto_com_pos-incremento.ASM
${OBJECTDIR}/enderecamento_indireto_com_pre-decremento.o: enderecamento_indireto_com_pre-decremento.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enderecamento_indireto_com_pre-decremento.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss enderecamento_indireto_com_pre-decremento.ASM
${OBJECTDIR}/enderecamento_indireto_com_deslocamento.o: enderecamento_indireto_com_deslocamento.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/enderecamento_indireto_com_deslocamento.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss enderecamento_indireto_com_deslocamento.ASM
${OBJECTDIR}/alocando_espaco_sram.o: alocando_espaco_sram.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/alocando_espaco_sram.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss alocando_espaco_sram.ASM
${OBJECTDIR}/usando_operacao_soma.o: usando_operacao_soma.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usando_operacao_soma.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss usando_operacao_soma.ASM
${OBJECTDIR}/usando_low_e_high.o: usando_low_e_high.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usando_low_e_high.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss usando_low_e_high.ASM
${OBJECTDIR}/experimento_sram.o: experimento_sram.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/experimento_sram.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss experimento_sram.ASM
${OBJECTDIR}/sram_vetores.o: sram_vetores.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sram_vetores.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss sram_vetores.ASM
${OBJECTDIR}/subrotinas_soma.o: subrotinas_soma.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/subrotinas_soma.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss subrotinas_soma.ASM
${OBJECTDIR}/pisca_led_completo.o: pisca_led_completo.ASM  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} ${DISTDIR} 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pisca_led_completo.o 
	${MP_AS}  -fI -W+ie ${PACK_ASSEMBLER_OPTIONS} -d ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -S ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.tmp  -o ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.hex  -m ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.map  -l ${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.lss pisca_led_completo.ASM
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	
else
${DISTDIR}/AOC129004.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
