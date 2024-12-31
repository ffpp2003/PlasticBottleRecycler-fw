;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_SetCompare2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_SetCompare2
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
;	../STM8S_StdPeriph_Driver/src/stm8s_tim3_SetCompare2.c: 48: void TIM3_SetCompare2(uint16_t Compare2)
;	-----------------------------------------
;	 function TIM3_SetCompare2
;	-----------------------------------------
_TIM3_SetCompare2:
;	../STM8S_StdPeriph_Driver/src/stm8s_tim3_SetCompare2.c: 51: TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
	ld	a, xh
	ld	0x532f, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim3_SetCompare2.c: 52: TIM3->CCR2L = (uint8_t)(Compare2);
	ld	a, xl
	ld	0x5330, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim3_SetCompare2.c: 53: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)