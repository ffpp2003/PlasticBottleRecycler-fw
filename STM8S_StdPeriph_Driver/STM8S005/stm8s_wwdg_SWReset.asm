;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_wwdg_SWReset
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WWDG_SWReset
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
;	../STM8S_StdPeriph_Driver/src/stm8s_wwdg_SWReset.c: 47: void WWDG_SWReset(void)
;	-----------------------------------------
;	 function WWDG_SWReset
;	-----------------------------------------
_WWDG_SWReset:
;	../STM8S_StdPeriph_Driver/src/stm8s_wwdg_SWReset.c: 49: WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
	mov	0x50d1+0, #0x80
;	../STM8S_StdPeriph_Driver/src/stm8s_wwdg_SWReset.c: 50: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
