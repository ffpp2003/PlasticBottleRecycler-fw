;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_SetCompare1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_SetCompare1
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
;	../STM8S_StdPeriph_Driver/src/stm8s_tim3_SetCompare1.c: 48: void TIM3_SetCompare1(uint16_t Compare1)
;	-----------------------------------------
;	 function TIM3_SetCompare1
;	-----------------------------------------
_TIM3_SetCompare1:
;	../STM8S_StdPeriph_Driver/src/stm8s_tim3_SetCompare1.c: 51: TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
	ld	a, xh
	ld	0x532d, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim3_SetCompare1.c: 52: TIM3->CCR1L = (uint8_t)(Compare1);
	ld	a, xl
	ld	0x532e, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim3_SetCompare1.c: 53: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)