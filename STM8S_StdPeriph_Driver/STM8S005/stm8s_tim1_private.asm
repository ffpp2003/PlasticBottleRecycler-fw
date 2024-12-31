;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_private
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_TI1_Config
	.globl _TIM1_TI2_Config
	.globl _TIM1_TI3_Config
	.globl _TIM1_TI4_Config
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
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 58: void TIM1_TI1_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TIM1_TI1_Config
;	-----------------------------------------
_TIM1_TI1_Config:
	pushw	x
	ld	(0x02, sp), a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 63: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
	bres	0x525c, #0
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 66: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
	ld	a, 0x5258
	and	a, #0x0c
	ld	(0x01, sp), a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 67: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5258, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 63: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
	ld	a, 0x525c
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 70: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x02, sp)
	jreq	00102$
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 72: TIM1->CCER1 |= TIM1_CCER1_CC1P;
	or	a, #0x02
	ld	0x525c, a
	jra	00103$
00102$:
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 76: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
	and	a, #0xfd
	ld	0x525c, a
00103$:
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 80: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
	ld	a, 0x525c
	or	a, #0x01
	ld	0x525c, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 81: }
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 99: void TIM1_TI2_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TIM1_TI2_Config
;	-----------------------------------------
_TIM1_TI2_Config:
	pushw	x
	ld	(0x02, sp), a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 104: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
	bres	0x525c, #4
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 107: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
	ld	a, 0x5259
	and	a, #0x0c
	ld	(0x01, sp), a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 108: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x5259, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 104: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
	ld	a, 0x525c
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 110: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x02, sp)
	jreq	00102$
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 112: TIM1->CCER1 |= TIM1_CCER1_CC2P;
	or	a, #0x20
	ld	0x525c, a
	jra	00103$
00102$:
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 116: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
	and	a, #0xdf
	ld	0x525c, a
00103$:
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 119: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
	ld	a, 0x525c
	or	a, #0x10
	ld	0x525c, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 120: }
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 138: void TIM1_TI3_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TIM1_TI3_Config
;	-----------------------------------------
_TIM1_TI3_Config:
	pushw	x
	ld	(0x02, sp), a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 143: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
	ld	a, 0x525d
	and	a, #0xfe
	ld	0x525d, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 146: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
	ld	a, 0x525a
	and	a, #0x0c
	ld	(0x01, sp), a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 147: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x525a, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 143: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
	ld	a, 0x525d
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 150: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x02, sp)
	jreq	00102$
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 152: TIM1->CCER2 |= TIM1_CCER2_CC3P;
	or	a, #0x02
	ld	0x525d, a
	jra	00103$
00102$:
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 156: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
	and	a, #0xfd
	ld	0x525d, a
00103$:
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 159: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
	ld	a, 0x525d
	or	a, #0x01
	ld	0x525d, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 160: }
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 178: void TIM1_TI4_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function TIM1_TI4_Config
;	-----------------------------------------
_TIM1_TI4_Config:
	pushw	x
	ld	(0x02, sp), a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 183: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
	bres	0x525d, #4
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 186: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
	ld	a, 0x525b
	and	a, #0x0c
	ld	(0x01, sp), a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 187: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ld	0x525b, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 183: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
	ld	a, 0x525d
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 190: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x02, sp)
	jreq	00102$
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 192: TIM1->CCER2 |= TIM1_CCER2_CC4P;
	or	a, #0x20
	ld	0x525d, a
	jra	00103$
00102$:
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 196: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
	and	a, #0xdf
	ld	0x525d, a
00103$:
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 200: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
	ld	a, 0x525d
	or	a, #0x10
	ld	0x525d, a
;	../STM8S_StdPeriph_Driver/src/stm8s_tim1_private.c: 201: }
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
