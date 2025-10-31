opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 3 "D:\Embedded\PIC16F877A\Projects\Control_4_Motors\Control_4_Motor.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "D:\Embedded\PIC16F877A\Projects\Control_4_Motors\Control_4_Motor.c"
	dw 0X3F3A ;#
	FNROOT	_main
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_RCREG
_RCREG	set	26
	global	_CREN
_CREN	set	196
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RCIF
_RCIF	set	101
	global	_SPEN
_SPEN	set	199
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_BRGH
_BRGH	set	1218
	global	_SYNC
_SYNC	set	1220
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TXEN
_TXEN	set	1221
	file	"Motor_Control.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	1
	global	main@data
main@data:	; 1 bytes @ 0x1
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       2
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0      60
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      2       2       1       14.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "D:\Embedded\PIC16F877A\Projects\Control_4_Motors\Control_4_Motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\PIC16F877A\Projects\Control_4_Motors\Control_4_Motor.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	7
	
l945:	
;Control_4_Motor.c: 7: char data = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(main@data)
	line	9
	
l947:	
;Control_4_Motor.c: 9: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	10
	
l949:	
;Control_4_Motor.c: 10: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	11
	
l951:	
;Control_4_Motor.c: 11: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	12
	
l953:	
;Control_4_Motor.c: 12: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	16
	
l955:	
;Control_4_Motor.c: 16: SPBRG = 129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	17
	
l957:	
;Control_4_Motor.c: 17: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	18
	
l959:	
;Control_4_Motor.c: 18: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	line	19
	
l961:	
;Control_4_Motor.c: 19: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	20
	
l963:	
;Control_4_Motor.c: 20: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	line	21
	
l965:	
;Control_4_Motor.c: 21: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	goto	l560
	line	23
;Control_4_Motor.c: 23: while(1)
	
l559:	
	line	25
;Control_4_Motor.c: 24: {
;Control_4_Motor.c: 25: while(RCIF == 0);
	goto	l560
	
l561:	
	
l560:	
	btfss	(101/8),(101)&7
	goto	u11
	goto	u10
u11:
	goto	l560
u10:
	goto	l967
	
l562:	
	line	26
	
l967:	
;Control_4_Motor.c: 26: data = RCREG;
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	28
;Control_4_Motor.c: 28: if(data == 'a')
	movf	(main@data),w
	xorlw	061h
	skipz
	goto	u21
	goto	u20
u21:
	goto	l971
u20:
	line	30
	
l969:	
;Control_4_Motor.c: 29: {
;Control_4_Motor.c: 30: RB0 = 1;
	bsf	(48/8),(48)&7
	line	31
;Control_4_Motor.c: 31: RB1 = 0;
	bcf	(49/8),(49)&7
	line	32
;Control_4_Motor.c: 32: RB2 = 1;
	bsf	(50/8),(50)&7
	line	33
;Control_4_Motor.c: 33: RB3 = 0;
	bcf	(51/8),(51)&7
	line	34
;Control_4_Motor.c: 34: RB4 = 1;
	bsf	(52/8),(52)&7
	line	35
;Control_4_Motor.c: 35: RB5 = 0;
	bcf	(53/8),(53)&7
	line	36
;Control_4_Motor.c: 36: RB6 = 1;
	bsf	(54/8),(54)&7
	line	37
;Control_4_Motor.c: 37: RB7 = 0;
	bcf	(55/8),(55)&7
	line	38
;Control_4_Motor.c: 38: }
	goto	l560
	line	39
	
l563:	
	
l971:	
;Control_4_Motor.c: 39: else if(data == 'b')
	movf	(main@data),w
	xorlw	062h
	skipz
	goto	u31
	goto	u30
u31:
	goto	l975
u30:
	line	41
	
l973:	
;Control_4_Motor.c: 40: {
;Control_4_Motor.c: 41: RB0 = 0;
	bcf	(48/8),(48)&7
	line	42
;Control_4_Motor.c: 42: RB1 = 1;
	bsf	(49/8),(49)&7
	line	43
;Control_4_Motor.c: 43: RB2 = 0;
	bcf	(50/8),(50)&7
	line	44
;Control_4_Motor.c: 44: RB3 = 1;
	bsf	(51/8),(51)&7
	line	45
;Control_4_Motor.c: 45: RB4 = 0;
	bcf	(52/8),(52)&7
	line	46
;Control_4_Motor.c: 46: RB5 = 1;
	bsf	(53/8),(53)&7
	line	47
;Control_4_Motor.c: 47: RB6 = 0;
	bcf	(54/8),(54)&7
	line	48
;Control_4_Motor.c: 48: RB7 = 1;
	bsf	(55/8),(55)&7
	line	49
;Control_4_Motor.c: 49: }
	goto	l560
	line	50
	
l565:	
	
l975:	
;Control_4_Motor.c: 50: else if(data == 'c')
	movf	(main@data),w
	xorlw	063h
	skipz
	goto	u41
	goto	u40
u41:
	goto	l987
u40:
	line	52
	
l977:	
;Control_4_Motor.c: 51: {
;Control_4_Motor.c: 52: RB0=RB1=0;
	bcf	(49/8),(49)&7
	bcf	(48/8),(48)&7
	line	53
;Control_4_Motor.c: 53: if(RB4==1 && RB5==0 )
	btfss	(52/8),(52)&7
	goto	u51
	goto	u50
u51:
	goto	l568
u50:
	
l979:	
	btfsc	(53/8),(53)&7
	goto	u61
	goto	u60
u61:
	goto	l568
u60:
	line	55
	
l981:	
;Control_4_Motor.c: 54: {
;Control_4_Motor.c: 55: RB2=1;
	bsf	(50/8),(50)&7
	line	56
;Control_4_Motor.c: 56: RB3=0;
	bcf	(51/8),(51)&7
	line	58
	
l568:	
	line	59
;Control_4_Motor.c: 58: }
;Control_4_Motor.c: 59: if(RB4==0 && RB5==1 )
	btfsc	(52/8),(52)&7
	goto	u71
	goto	u70
u71:
	goto	l560
u70:
	
l983:	
	btfss	(53/8),(53)&7
	goto	u81
	goto	u80
u81:
	goto	l560
u80:
	line	61
	
l985:	
;Control_4_Motor.c: 60: {
;Control_4_Motor.c: 61: RB2=0;
	bcf	(50/8),(50)&7
	line	62
;Control_4_Motor.c: 62: RB3=1;
	bsf	(51/8),(51)&7
	goto	l560
	line	64
	
l569:	
	line	66
;Control_4_Motor.c: 64: }
;Control_4_Motor.c: 66: }
	goto	l560
	line	67
	
l567:	
	
l987:	
;Control_4_Motor.c: 67: else if(data == 'd')
	movf	(main@data),w
	xorlw	064h
	skipz
	goto	u91
	goto	u90
u91:
	goto	l560
u90:
	line	69
	
l989:	
;Control_4_Motor.c: 68: {
;Control_4_Motor.c: 69: RB2=RB3=0;
	bcf	(51/8),(51)&7
	bcf	(50/8),(50)&7
	line	70
;Control_4_Motor.c: 70: if(RB4==1 && RB5==0 )
	btfss	(52/8),(52)&7
	goto	u101
	goto	u100
u101:
	goto	l572
u100:
	
l991:	
	btfsc	(53/8),(53)&7
	goto	u111
	goto	u110
u111:
	goto	l572
u110:
	line	72
	
l993:	
;Control_4_Motor.c: 71: {
;Control_4_Motor.c: 72: RB0=1;
	bsf	(48/8),(48)&7
	line	73
;Control_4_Motor.c: 73: RB1=0;
	bcf	(49/8),(49)&7
	line	75
	
l572:	
	line	76
;Control_4_Motor.c: 75: }
;Control_4_Motor.c: 76: if(RB4==0 && RB5==1 )
	btfsc	(52/8),(52)&7
	goto	u121
	goto	u120
u121:
	goto	l560
u120:
	
l995:	
	btfss	(53/8),(53)&7
	goto	u131
	goto	u130
u131:
	goto	l560
u130:
	line	78
	
l997:	
;Control_4_Motor.c: 77: {
;Control_4_Motor.c: 78: RB0=0;
	bcf	(48/8),(48)&7
	line	79
;Control_4_Motor.c: 79: RB1=1;
	bsf	(49/8),(49)&7
	goto	l560
	line	81
	
l573:	
	goto	l560
	line	83
	
l571:	
	goto	l560
	line	85
	
l570:	
	goto	l560
	
l566:	
	goto	l560
	
l564:	
	goto	l560
	
l574:	
	line	23
	goto	l560
	
l575:	
	line	86
	
l576:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
