;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart2_SetGuardTime
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART2_SetGuardTime
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../STM8S_StdPeriph_Driver/src/stm8s_uart2_SetGuardTime.c: 47: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
;	-----------------------------------------
;	 function UART2_SetGuardTime
;	-----------------------------------------
_UART2_SetGuardTime:
;	../STM8S_StdPeriph_Driver/src/stm8s_uart2_SetGuardTime.c: 50: UART2->GTR = UART2_GuardTime;
	ld	0x524a, a
;	../STM8S_StdPeriph_Driver/src/stm8s_uart2_SetGuardTime.c: 51: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)