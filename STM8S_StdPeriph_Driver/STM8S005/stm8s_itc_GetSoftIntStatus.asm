;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_itc_GetSoftIntStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_GetCPUCC
	.globl _ITC_GetSoftIntStatus
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
;	../STM8S_StdPeriph_Driver/src/stm8s_itc_GetSoftIntStatus.c: 46: uint8_t ITC_GetSoftIntStatus(void)
;	-----------------------------------------
;	 function ITC_GetSoftIntStatus
;	-----------------------------------------
_ITC_GetSoftIntStatus:
;	../STM8S_StdPeriph_Driver/src/stm8s_itc_GetSoftIntStatus.c: 48: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
	call	_ITC_GetCPUCC
	and	a, #0x28
;	../STM8S_StdPeriph_Driver/src/stm8s_itc_GetSoftIntStatus.c: 49: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
