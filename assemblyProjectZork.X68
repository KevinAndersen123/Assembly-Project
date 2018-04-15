*-----------------------------------------------------------
* Title      :Zork Game (computer architecture Project)
* Written by : Kevin Andersen
* Date       : march, april
* Description: Text Adventure
*-----------------------------------------------------------
   *INTRODUCTION-----------------------------------------------

INTRO	BSR	CLRSCRN
	LEA	WELCOME,A1	; Welcome message
	BSR	DISPLAY
	BSR	newLine
	
	MOVE.B	#2,D0		; name input
	LEA	NAME,A1
	TRAP	#15
	
	BSR	newLine
		
	MOVE.B	#14,D0
	TRAP	#15

	LEA	NCHANGE,A1	; Renamed to Alex, gender neutral name
	BSR	DISPLAY

	BSR	ECHOOFF
	
	BSR	ENTER
	
	LEA	NOWTHAT,A1
	BSR	DISPLAY	
	BSR	ENTER
		
	BSR	CLRSCRN
	
*DISPLAY INTRODUCTION
	
	LEA	NOWTHAT,A1
	BSR	DISPLAY
	LEA	TODAY,A1
	BSR	DISPLAY
	LEA	SOFANCY,A1
	BSR	DISPLAY
	LEA	WHYIMAG,A1
	BSR	DISPLAY
	LEA	PLAYBOX,A1
	BSR	DISPLAY
	BSR	ENTER
	
	BSR	newLine
	
	LEA	WELLTHA,A1
	BSR	DISPLAY
	LEA	PICTURE,A1
	BSR	DISPLAY
	LEA	DOTODAY,A1
	BSR	DISPLAY
	LEA	YOURMIN,A1
	BSR	DISPLAY
	LEA	INFORMA,A1
	BSR	DISPLAY
	
	BSR	ENTER
	BSR	newLine
LOOP1	LEA	CGOOD,A1
	BSR	DISPLAY
	LEA	CBAD,A1
	BSR	DISPLAY
	
	MOVE.B	#5,D0		; Read keyboard entry
	TRAP	#15
	
	BSR	NEWLINE
	CMP.B	#$31,D1
	BEQ	GCH1
	CMP.B	#$32,D1
	BEQ	BCH1
	BNE	ER1
GCH1	LEA	IFGOOD,A1
	BSR	DISPLAY
	BRA	NEXT1
BCH1	LEA	IFBAD,A1
	BSR	DISPLAY
	LEA	IFBAD2,A1
	BSR	DISPLAY
	BRA	NEXT1
ER1	LEA	EMSG,A1
	BSR	DISPLAY
	BRA	LOOP1

NEXT1	BSR	ENTER
	BSR	NEWLINE
	LEA	ANYWAYS,A1
	BSR	DISPLAY
	BSR	ENTER
	
	BSR	CLRSCRN
	
	LEA	ASTHEGA,A1
	BSR	DISPLAY
	LEA	YOURIMA,A1
	MOVE.B	#14,D0
	TRAP	#15
	BSR	REDTEXT
	LEA	HERERED,A1
	BSR	DISPLAY
	BSR	WHITEXT
	LEA	IREALLY,A1
	BSR	DISPLAY
	BSR	ENTER
	
	BSR	NEWLINE
	
	LEA	THEOBJE,A1
	BSR	DISPLAY
	LEA	AMAZING,A1
	BSR	DISPLAY
	LEA	COWARD,A1
	BSR	DISPLAY
	LEA	YOUNEED,A1
	BSR	DISPLAY
	LEA	CAVALRY,A1
	BSR	DISPLAY
	BSR	ENTER
	BSR	NEWLINE
	
	LEA	NOWFOOD,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	NEWLINE
	BSR	ECHOON
	MOVE.B	#2,D0
	LEA	STRATEGY,A1
	TRAP	#15
	MOVE.B	#14,D0
	TRAP	#15
	BSR	ECHOOFF
	
	LEA	NOWFOD2,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	ALEXRED,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	NOWFOD3,A1
	BSR	DNOLINE
	BSR	DISPLAY
	BSR	WHITEXT
	LEA	INSTEAD,A1
	BSR	DISPLAY
	BSR	ENTER
	BSR	CLRSCRN
	
*VIDEO GAME INTRO-----------------------------------------
	LEA	VI1,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	VI2,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	VI3,A1
	BSR	DISPLAY
	LEA	VI4,A1
	BSR	DISPLAY
	LEA	VI5,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	VI6,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	VI7,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	VI8,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	VI9,A1
	BSR	DISPLAY
	LEA	VI10,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	VI11,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	VI12,A1
	BSR	DISPLAY
	LEA	VI13,A1
	BSR	DISPLAY
	LEA	VI14,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	VI15,A1
	BSR	DISPLAY
	LEA	VI16,A1
	BSR	DISPLAY
	LEA	VI17,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	VI18,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	VI19,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	VI20,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	VI21,A1
	BSR	DISPLAY
	BSR	WHITEXT
	LEA	VI22,A1
	BSR	DISPLAY
	LEA	VI23,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	VI24,A1
	BSR	DISPLAY
	LEA	VI25,A1
	BSR	DISPLAY
	LEA	VI26,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	BSR	CLRSCRN
	
	LEA	VI27,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	VI41,A1
	BSR	DNOLINE
	LEA	VI42,A1
	BSR	REDTEXT
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	VI43,A1
	BSR	DISPLAY
	LEA	VI44,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
LOOP2	BSR	NEWLINE
	LEA	VI45,A1
	BSR	DISPLAY
	LEA	VI46,A1
	BSR	DISPLAY
	
	MOVE.B	#5,D0		; Read keyboard entry
	TRAP	#15
	
	CMP.B	#$31,D1
	BEQ	OUT
	CMP.B	#$32,D1
	BEQ	IN
	BNE	ER2
ER2	BSR	NEWLINE
	LEA	EMSG,A1
	MOVE.B	#14,D0
	TRAP	#15
	BSR	newLine
	BRA	LOOP2
	
	
	
	
*OUTSIDE INTRO--------------------------------------------
OUT	BSR	CLRSCRN
	LEA	OI1,A1
	BSR	DISPLAY
	LEA	OI2,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OI3R,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OI4,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OI5,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OI6R,A1
	BSR	WHITEXT
	BSR	DISPLAY
	LEA	OI7,A1
	BSR	DISPLAY
	LEA	OI8,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OI9,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OI10R,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OI11,A1
	BSR	DNOLINE
	LEA	OI12R,A1
	BSR	REDTEXT
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OI13,A1
	BSR	DISPLAY
	LEA	OI14,A1
	BSR	DISPLAY
	LEA	OI15,A1
	BSR	DISPLAY
	LEA	OI16,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR 	ENTER
	
LOOP3	LEA	OI17,A1
	BSR	DISPLAY
	LEA	OI18,A1
	BSR	DISPLAY
	BSR	NEWLINE
	
	MOVE.B	#5,D0
	TRAP	#15
	
	CMP.B	#$31,D1
	BEQ	OUTP
	CMP.B	#$32,D1
	BEQ	OUTS
	BNE	ER3
ER3	LEA	EMSG,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BRA	LOOP3

*OUTSIDE BRANCH --------------------------------------
OUTP	BSR	CLRSCRN


	BSR	DISPLAY
	BSR	ENTER
	BSR	CLRSCRN
	
	LEA	OP1,A1
	BSR	DISPLAY
	LEA	OP2,A1
	BSR	REDTEXT
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP3,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP4,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP5,A1
	BSR	DISPLAY
	LEA	OP6,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP7,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP8,A1
	BSR	DNOLINE
	LEA	OP9,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP10,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP11,A1
	BSR	DISPLAY
	LEA	OP12,A1
	BSR	DISPLAY
	LEA	OP13,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OP14,A1
	BSR	DISPLAY
	LEA	OP15,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP16,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP17,A1
	BSR	DISPLAY
	BSR	REDTEXT
	LEA	OP18,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP19,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP20,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP21,A1
	BSR	DISPLAY
	LEA	OP22,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP23,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP24,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OP27,A1
	BSR	DISPLAY
	LEA	OP28,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OP29,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP30,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP31,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP32,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP33,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP34,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP35,A1
	BSR	DISPLAY
	BSR	REDTEXT
	LEA	OP36,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP37,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP38,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP39,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP40,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP41,A1
	BSR	DISPLAY
	LEA	OP42,A1
	BSR	DISPLAY
	LEA	OP43,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OP44,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OP45,A1
	BSR	DISPLAY
	LEA	OP46,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OP47,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OP48,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
LOOP4	BSR	NEWLINE
	LEA	OP49,A1
	BSR	DISPLAY
	LEA	OP50,A1
	BSR	DISPLAY
	LEA	OP51,A1
	BSR	DISPLAY
	
	MOVE.B	#5,D0
	TRAP	#15
	
	CMP.B	#$31,D1
	BEQ	OUTPB
	CMP.B	#$32,D1
	BEQ	OUTPG
	BNE	ER4
ER4	LEA	EMSG,A1
	MOVE.B	#14,D0
	TRAP	#15
	BSR	NEWLINE
	BRA	LOOP4
	

*OUTSIDE BRANCH BAD----------------------------------
OUTPB	BSR	CLRSCRN
	LEA	OPB1,A1
	BSR	DISPLAY
	LEA	OPB2,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPB3,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB4,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPB5,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB6,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OPB7,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPB8,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB9,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPB10,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB11,A1
	BSR	DISPLAY
	LEA	OPB12,A1
	BSR	DISPLAY
	BSR	REDTEXT
	LEA	OPB13,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB14,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OPB15,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPB16,A1
	BSR	DISPLAY
	LEA	OPB17,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB18,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPB19,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB20,A1
	BSR	DISPLAY
	LEA	OPB21,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
LOOP5	LEA	OPB22,A1
	BSR	DISPLAY
	LEA	OPB23,A1
	BSR	DISPLAY
	
	MOVE.B	#5,D0
	TRAP	#15
	
	CMP.B	#$31,D1
	BEQ	SUI
	CMP.B	#$32,D1
	BEQ	OUTPB2
	BNE	ER5
ER5	LEA	EMSG,A1
	MOVE.B	#14,D0
	TRAP	#15
	BRA	LOOP5
	
OUTPB2	BSR	CLRSCRN
	LEA	OPB24,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPB25,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB26,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OPB27,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPB28,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB29,A1
	BSR	DISPLAY
	BSR	REDTEXT
	LEA	OPB30,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB31,A1
	BSR	DISPLAY
	LEA	OPB32,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPB33,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB34,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPB35,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB36,A1
	BSR	DISPLAY
	LEA	OPB37,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPB38,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPB39,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	BRA	SUP


*OUTSIDE BRANCH GOOD-----------------------------------
OUTPG	BSR	CLRSCRN
	LEA	OPG1,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPG2,A1
	BSR	DISPLAY
	LEA	OPG3,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPG4,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OPG5,A1
	BSR	DISPLAY
	LEA	OPG6,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPG7,A1
	BSR	DISPLAY
	LEA	OPG8,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPG9,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OPG10,A1
	BSR	DISPLAY
	LEA	OPG11,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPG12,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPG13,A1
	BSR	DISPLAY
	LEA	OPG14,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	BSR	REDTEXT
	LEA	OPG15,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPG16,A1
	BSR	DISPLAY
	LEA	OPG17,A1
	BSR	DISPLAY
	LEA	OPG18,A1
	BSR	DISPLAY
	LEA	OPG19,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OPG20,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OPG21,A1
	BSR	DISPLAY
	LEA	OPG22,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OPG29,A1
	BSR	DISPLAY
	BSR	ENTER
	BRA	SUP

*OUTSIDE SWORD--------------------------------------------
OUTS	BSR	CLRSCRN


	BSR	DISPLAY
	BSR	ENTER
	BSR	CLRSCRN
	
	LEA	OS1,A1
	BSR	DISPLAY
	LEA	OS2,A1
	BSR	DISPLAY
	LEA	OS3,A1
	BSR	DISPLAY
	LEA	OS4,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OS5,A1
	BSR	DISPLAY
	LEA	OS6,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OS7,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OS8,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OS9,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OS10,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OS11,A1
	BSR	DISPLAY
	BSR	REDTEXT
	LEA	OS12,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OS13,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OS14,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OS15,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OS16,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OS17,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OS18,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OS19,A1
	BSR	DISPLAY
	LEA	OS20,A1
	BSR	DISPLAY
	LEA	OS21,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OS23,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OS24,A1
	BSR	DISPLAY
	LEA	OS25,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OS26,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OS28,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
LOOP6	LEA	OS29,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OS30,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OS31,A1
	BSR	DISPLAY
	LEA	OS32,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OS33,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OS34,A1
	BSR	DISPLAY
	LEA	OS35,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OS36,A1
	BSR	DISPLAY
	BSR	WHITEXT
	
	
	MOVE.B	#5,D0
	TRAP	#15
	
	CMP.B	#$31,D1
	BEQ	OUTSB
	CMP.B	#$32,D1
	BEQ	OUTSG
	
	LEA	EMSG,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	BRA	LOOP6

*OUTSIDE SWORD GOOD--------------------------------
OUTSG	BSR	CLRSCRN
	LEA	OSG1,A1
	BSR	DISPLAY
	LEA	OSG2,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG3,A1
	BSR	DISPLAY
	LEA	OSG4,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG5,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OSG6,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG7,A1
	BSR	DISPLAY
	LEA	OSG8,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG9,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG10,A1
	BSR	DISPLAY
	LEA	OSG11,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG12,A1
	BSR	DISPLAY
	LEA	OSG13,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OSG14,A1
	BSR	DISPLAY
	LEA	OSG15,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG16,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG17,A1
	BSR	DISPLAY
	LEA	OSG18,A1
	BSR	DISPLAY
	LEA	OSG19,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG20,A1
	BSR	DISPLAY
	LEA	OSG21,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG22,A1
	BSR	DISPLAY
	BSR	ENTER
	
	BSR	CLRSCRN
	
	LEA	OSG23,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG24,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG25,A1
	BSR	DISPLAY
	LEA	OSG26,A1
	BSR	DISPLAY
	LEA	OSG27,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG28,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG29,A1
	BSR	DISPLAY
	LEA	OSG30,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG31,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG32,A1
	BSR	DISPLAY
	LEA	OSG33,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	BSR	REDTEXT
	LEA	OSG34,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG35,A1
	BSR	DISPLAY
	LEA	OSG36,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG37,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG38,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OSG39,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG40,A1
	BSR	DISPLAY
	LEA	OSG41,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG42,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG43,A1
	BSR	DISPLAY
	BSR	WHITEXT
	LEA	OSG44,A1
	BSR	DISPLAY
	LEA	OSG45,A1
	BSR	DISPLAY
	LEA	OSG46,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG47,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG48,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG49,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG50,A1
	BSR	DISPLAY
	LEA	OSG51,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSG52,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSG53,A1
	BSR	DISPLAY
	BSR	ENTER
	BRA	SUP


*OUTSIDE SWORD BAD---------------------------------
OUTSB	BSR	CLRSCRN
	LEA	OSB1,A1
	BSR	DISPLAY
	LEA	OSB2,A1
	BSR	DISPLAY
	BSR	REDTEXT
	LEA	OSB3,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB4,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OSB5,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSB6,A1
	BSR	DISPLAY
	LEA	OSB7,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB8,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSB9,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB10,A1
	BSR	DISPLAY
	BSR	REDTEXT
	LEA	OSB11,A1
	BSR	DNOLINE
	BSR	WHITEXT
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	OSB13,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSB14,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB15,A1
	BSR	DISPLAY
	LEA	OSB16,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSB17,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB18,A1
	BSR	DISPLAY
	LEA	OSB19,A1
	BSR	DISPLAY
	BSR	REDTEXT
	LEA	OSB20,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB21,A1
	BSR	DISPLAY
	BSR	ENTER
	
	BSR	CLRSCRN
	
	LEA	OSB22,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSB23,A1
	BSR	DISPLAY
	LEA	OSB24,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB25,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSB26,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB27,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSB28,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB29,A1
	BSR	DISPLAY
	LEA	OSB30,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSB31,A1
	BSR	DISPLAY
	BSR	WHITEXT
	BSR	NEWLINE
	BSR	ENTER
	
	BSR	CLRSCRN
	
	*DELAY HERE
	
	LEA	OSB32,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSB33,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB34,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSB35,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB36,A1
	BSR	DISPLAY
	LEA	OSB37,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	OSB38,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	OSB39,A1
	BSR	DISPLAY
	BSR	ENTER
	BRA	SUP
*INSIDE INTRO---------------------------------------------
IN	BSR	CLRSCRN
	LEA	II1,A1
	BSR	DISPLAY
	LEA	II2,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	II3,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	II4,A1
	BSR	DISPLAY
	LEA	II5,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	II6,A1
	BSR	DISPLAY
	LEA	II7,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	II8,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	II9,A1
	BSR	DISPLAY
	LEA	II10,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	II11,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	II12,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	II13,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	II14,A1
	BSR	DISPLAY
	LEA	II15,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	II16,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	II17,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
LOOP7	LEA	II18,A1
	BSR	DISPLAY
	LEA	II19,A1
	BSR	DISPLAY
	BSR	NEWLINE
	
	MOVE.B	#5,D0
	TRAP	#15
	
	CMP.B	#$31,D1
	BEQ	SUI
	CMP.B	#$32,D1
	BEQ	IN2
	
	BSR	NEWLINE
	LEA	EMSG,A1
	BSR	DISPLAY
	BRA	LOOP7
	
IN2	BSR	CLRSCRN
	BSR	REDTEXT
	LEA	II20,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	II21,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	II22,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	II23,A1
	BSR	DISPLAY
	LEA	II24,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	II25,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	II26,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	II27,A1
	BSR	DISPLAY
	LEA	II28,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	II29,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	II30,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
LOOP8	LEA	II31,A1
	BSR	DISPLAY
	LEA	II32,A1
	BSR	DISPLAY
	BSR	NEWLINE
	
	MOVE.B	#5,D0
	TRAP	#15
	
	CMP.B	#$31,D1
	BEQ	INV
	CMP.B	#$32,D1
	BEQ	INL
	
	BSR	NEWLINE
	LEA	EMSG,A1
	BSR	DISPLAY
	BRA	LOOP8
	

*INSIDE DOORWAY----------------------------------------------
INL	BSR	CLRSCRN

	BSR	DISPLAY
	BSR	ENTER
	
	BSR	CLRSCRN


	LEA	IL1,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	IL2,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IL3,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IL4,A1
	BSR	DISPLAY
	LEA	IL5,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IL6,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IL7,A1
	BSR	DISPLAY
	LEA	IL8,A1
	BSR	DNOLINE
	LEA	IL9,A1
	BSR	DISPLAY
	LEA	IL10,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IL11,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IL12,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	IL13,A1
	BSR	DISPLAY
	LEA	IL14,A1
	BSR	DISPLAY
	LEA	IL15,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IL16,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IL17,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	IL18,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	BSR	CLRSCRN
	
IMPORT	LEA	IL19,A1
	BSR	DISPLAY
	LEA	IL20,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IL21,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IL22,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IL23,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IL24,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IL25,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IL26,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IL27,A1
	BSR	DISPLAY
	LEA	IL28,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IL29,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IL30,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IL31,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	IL32,A1
	BSR	DISPLAY
	LEA	IL33,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	IL34,A1
	BSR	DISPLAY
	LEA	IL35,A1
	BSR	DISPLAY
	BSR	REDTEXT
	LEA	IL36,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IL37,A1
	BSR	DISPLAY
	LEA	IL38,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	IL39,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
LOOP9	LEA	IL40,A1
	BSR	DISPLAY
	LEA	IL41,A1
	BSR	DISPLAY
	BSR	NEWLINE
	
	MOVE.B	#5,D0
	TRAP	#15
	
	CMP.B	#$31,D1
	BEQ	INLG
	CMP.B	#$32,D1
	BEQ	INLB
	
	BSR	NEWLINE
	LEA	EMSG,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BRA	LOOP9


*INSIDE DOORWAY GOOD-----------------------------------------
INLG	BSR	CLRSCRN
	LEA	ILG1,A1
	BSR	DISPLAY
	LEA	ILG2,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	ILG3,A1
	BSR	DISPLAY
	BSR	WHITEXT
	LEA	ILG4,A1
	BSR	DISPLAY
	LEA	ILG5,A1
	BSR	DISPLAY
	LEA	ILG6,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	ILG7,A1
	BSR	DISPLAY
	LEA	ILG8,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	ILG9,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	ILG10,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	ILG11,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	ILG12,A1
	BSR	DISPLAY
	LEA	ILG13,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	ILG14,A1
	BSR	DISPLAY
	LEA	ILG15,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	ILG16,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	ILG17,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	ILG18,A1
	BSR	DISPLAY
	BSR	ENTER
	BSR	NEWLINE
	
LOOP10	LEA	ILG19,A1
	BSR	DISPLAY
	LEA	ILG20,A1
	BSR	DISPLAY
	BSR	NEWLINE
	
	MOVE.B	#5,D0
	TRAP	#15
	BSR	NEWLINE
	
	CMP.B	#$31,D1
	BEQ	SUI
	CMP.B	#$32,D1
	BEQ	SUP
	
	LEA	EMSG,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BRA	LOOP10


*INSIDE DOORWAY BAD------------------------------------------
INLB	BSR	CLRSCRN
	LEA	ILB1,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	ILB2,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	ILB3,A1
	BSR	DISPLAY
	LEA	ILB4,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	BSR	REDTEXT
	LEA	ILB5,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	ILB6,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	ILB7,A1
	BSR	DISPLAY
	BSR	WHITEXT
	LEA	ILB8,A1
	BSR	DISPLAY
	LEA	ILB9,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	ILB10,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	ILB11,A1
	BSR	DISPLAY
	LEA	ILB12,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	ILB13,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	ILB14,A1
	BSR	DISPLAY
	BSR	ENTER
	BRA	SUP
	
	


*INSIDE KNIGHTS--------------------------------------
INV	BSR	CLRSCRN


	BSR	DISPLAY
	BSR	ENTER

	BSR	CLRSCRN
	LEA	IV1,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	BSR	REDTEXT
	LEA	IV2,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV3,A1
	BSR	DISPLAY
	LEA	IV4,A1
	BSR	DISPLAY
	BSR	REDTEXT
	LEA	IV5,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV6,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IV7,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV8,A1
	BSR	DISPLAY
	LEA	IV9,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	IV10,A1
	BSR	DISPLAY
	LEA	IV11,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IV12,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV13,A1
	BSR	DISPLAY
	LEA	IV14,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IV15,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV16,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IV17,A1
	BSR	DISPLAY
	LEA	IV18,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV19,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IV20,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV21,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	BSR	CLRSCRN
	
	LEA	IV22,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IV23,A1
	BSR	DISPLAY
	LEA	IV24,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV25,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	IV26,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IV27,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV28,A1
	BSR	DISPLAY
	LEA	IV29,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IV30,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV31,A1
	BSR	DISPLAY
	LEA	IV32,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	IV33,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IV34,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV35,A1
	BSR	DISPLAY
	LEA	IV36,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	IV37,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	IV37,A1
	BSR	DISPLAY
	BSR	ENTER
	
	BRA	SUP

*THRONE ROOM GOOD-----------------------------------------
SUP	BSR	CLRSCRN
	LEA	SUP1,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	SUP2,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	SUP3,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	SUP4,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	SUP5,A1
	BSR	DISPLAY
	LEA	SUP6,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	SUP7,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	SUP8,A1
	BSR	DISPLAY
	BSR	WHITEXT
	LEA	SUP9,A1
	BSR	DISPLAY
	LEA	SUP10,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	SUP11,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	SUP12,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	SUP13,A1
	BSR	DISPLAY
	BSR	ENTER
	BSR	NEWLINE
	
LOOP11	LEA	SUP14,A1
	BSR	DISPLAY
	LEA	SUP15,A1
	BSR	DISPLAY
	BSR	NEWLINE
	
	MOVE.B	#5,D0
	TRAP	#15
	
	CMP.B	#$31,D1
	BEQ	SUI
	CMP.B	#$32,D1
	BEQ	SUPS
	
	LEA	EMSG,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	BRA	LOOP11
	
SUPS	BSR	CLRSCRN
	LEA	SUP16,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	SUP17,A1
	BSR	DISPLAY
	LEA	SUP18,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	SUP19,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	SUP20,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	SUP21,A1
	BSR	DISPLAY
	LEA	SUP22,A1
	BSR	DISPLAY
	LEA	SUP23,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	LEA	SUP24,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	SUP25,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	SUP26,A1
	BSR	DISPLAY
	LEA	SUP27,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	SUP28,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	SUP29,A1
	BSR	DISPLAY
	LEA	SUP30,A1
	BSR	DISPLAY
	BSR	NEWLINE
	BSR	ENTER
	
	BSR	CLRSCRN
	
	LEA	SUP31,A1
	BSR	DISPLAY
	LEA	SUP32,A1
	BSR	DNOLINE
	BSR	REDTEXT
	LEA	SUP33,A1
	BSR	DNOLINE
	BSR	WHITEXT
	LEA	SUP34,A1
	BSR	DISPLAY
	
	BSR	ENTER
	
	STOP	#$2700


*DIE ENDING-------------------------------------------
SUI	BSR	CLRSCRN
	LEA	SUI1,A1
	BSR	DISPLAY
	LEA	SUI2,A1
	BSR	DISPLAY
	BSR	ENTER
	
	STOP	#$2700

*SUBROUTINES~

KEY	MOVE.B	#15,D0
	TRAP	#15
	RTS
	
DNOLINE	MOVE.B	#14,D0
	TRAP	#15
	RTS
	
newLine	MOVEM.L	D0/A1,-(A7)
	MOVE	#14,D0
	LEA	crlf,A1
	TRAP	#15
	MOVEM.L	(A7)+,D0/A1
	RTS
	
ENTER	MOVE.B	#2,D0
	TRAP	#15
	RTS
	
CLRSCRN	MOVE.W		#$FF00,d1		* clear screen
	MOVEQ		#11,d0			* position cursor
	TRAP		#15
	RTS
	
ECHOOFF	MOVEQ		#0,d1				* echo off
	MOVEQ		#12,d0			* set keyboard echo
	TRAP		#15
	RTS
ECHOON	MOVEQ		#-1,d1			* echo on
	MOVEQ		#12,d0			* set keyboard echo
	TRAP		#15
	RTS

ERROR	LEA	EMSG,A1
	MOVE.B	#14,D0
	TRAP	#15
	RTS
DISPLAY	MOVE	#14,D0
	TRAP	#15
	MOVEM.L	D0/A1,-(A7)
	MOVE	#14,D0
	LEA	crlf,A1
	TRAP	#15
	MOVEM.L	(A7)+,D0/A1
	RTS	
	
REDTEXT	MOVE.L	#RED,D1
	MOVE.L	#FONT,D2
	MOVE.B	#21,D0
	TRAP	#15
	RTS
	
WHITEXT	MOVE.L	#WHITE,D1
	MOVE.L	#FONT,D2
	MOVE.B	#21,D0
	TRAP	#15
	RTS



	MOVE.B	#9,D0
	TRAP	#15		; halt simulator
	

* Variables and Strings
crlf	DC.B	$d,$a,0
* FONTs---------------------------------------------
RED	EQU	$000000FF
WHITE	EQU	$00FFFFFF
FONT	EQU	$01090000

*USER INPUTs-----------------------------------------
NAME	DS.B	80
	DS.W	0
STRATEGY	DS.B	80
	DS.W	0
	
*OTHER MESSAGES-------------------------------------------
EMSG	DC.B	'Key entered not recognized',0
ALEXRED	DC.B	'Alex ',0

*STORY LINE TEXT------------------------------------------

*INTRODUCTION 
Welcome	DC.B	'Welcome! To get things started, you are going to have to give me your name.',0
NChange	DC.B	' is it? Well, that''s too complicated. How about I call you Alex instead.',0
NOWTHAT	DC.B	'Now that we got that out of the way, let''s start going over the introduction.',0
TODAY	DC.B	'Today, video games are full of these new fancy graphics. These graphics are',0
SOFANCY	DC.B	'so fancy that players never seem to have to rely on their imagination for ',0
WHYIMAG	DC.B	'anything. Why imagine a fantasy world when you can pop in one of those super ',0
PLAYBOX	DC.B	'expensive games into your Playbox 3000?',0

WELLTHA	DC.B	'Well, that doesn''t seem like much fun. Humans have the awesome ability to ',0
PICTURE	DC.B	'picture entire worlds in their own minds, so that''s what we are going to ',0
DOTODAY	DC.B	'do today. No pictures are allowed here, YOU have to create the scene in ',0
YOURMIN	DC.B	'your own mind, I will merely provide the atmosphere and some basic ',0
INFORMA	DC.B	'information to get the ball rolling. How does that sound? Good or bad?',0

CGOOD	DC.B	'1. GOOD',0
CBAD	DC.B	'2. BAD',0

IFGOOD	DC.B	'I like the enthusiasm, it seems as if good people really do still exist.',0
IFBAD	DC.B	'While your tenacity and rebellion is refreshing, you really have no choice',0
IFBAD2	DC.B	' in the matter, unless you quit now. It really doesn''t bother me.',0

ANYWAYS	DC.B	'Anyways, now that we have that cleared up, let''s finish this up and start.',0

ASTHEGA	DC.B	'As the game progresses, there will be certain words that may play well into',0
YOURIMA	DC.B	'your imagination, and those words I will highlight in this pretty color',0
HERERED	DC.B	' here.',0
IREALLY	DC.B	'I really hope you are not colorblind at this moment.',0

THEOBJE	DC.B	'The object of the game is simple. You are a young knight who hears of a',0
AMAZING	DC.B	'amazing chance to finally prove to your family how good of a knight you are',0
COWARD	DC.B	',but as a cowardly knight this daunting task torments you day and night.',0
YOUNEED	DC.B	'You need to figure out an attack , and are determined to do so.',0
CAVALRY	DC.B	'Especially since it is almost time for the cavaly to charge.',0

NOWFOOD	DC.B	'Now tell me, what is your strategy of attack',0

NOWFOD2	DC.B	' you say? That''s a terrible idea. I think ',0	;ALEXRED
NOWFOD3	DC.B	'that you',0

INSTEAD	DC.B	'should attack with rage instead.',0

*VIDEO GAME INTRO-----------------------------------------

VI1	DC.B	'It''s about ',0
VI2	DC.B	'9 am ',0
VI3	DC.B	'now, and it seems like you''re fnally awake. It seems like',0
VI4	DC.B	'you''re up earlier than usual! This is a great thing, except for why you are',0
VI5	DC.B	'awake so early. Your ',0
VI6	DC.B	'day has come.',0
VI7	DC.B	'The day you, ',0
VI8	DC.B	'attack ',0
VI9	DC.B	'Egreth Castle.',0
VI10	DC.B	'You want nothing more than to take ',0
VI11	DC.B	'down the castle',0
VI12	DC.B	'and finally make a name for ',0
VI13	DC.B	'yourself. Oh why did you skip training last night? Was last night''s raid that',0
VI14	DC.B	'important? What am I saying, of course it was.',0

VI15	DC.B	'Instead of immediately running to find out about todays raid, you walk straight to',0
VI16	DC.B	'the gathering.You need to take over right? ',0
VI17	DC.B	'The castle wont know what hit them. ',0
VI18	DC.B	'You were ready',0
VI19	DC.B	'.',0

VI20	DC.B	'"IM SOOO READY! ',0
VI21	DC.B	'LETS GET THIS',0
VI22	DC.B	'CASTLE!" you shout out, at the top',0
VI23	DC.B	'of your lungs',0

VI24	DC.B	'Before you can even get close to the castle, you notice rustling to your left',0
VI25	DC.B	'and right. You are immediately aware of the grass around you.',0
VI26	DC.B	'there was something there.',0

VI27	DC.B	'It seems like there was something hiding in the bush below,',0

VI41	DC.B	'However you are late, as it is already ',0
VI42	DC.B	'12:07PM ',0
VI43	DC.B	'and you aren''t sure',0
VI44	DC.B	'whether or not you can make it to the castle in time. What should you do?',0

VI45	DC.B	'1.Check it out and jump down',0
VI46	DC.B	'2.Continue',0


*OUTSIDE INTRO--------------------------------------------
OI1	DC.B	'You''re really going to brave that jump? I never even said how high',0
OI2	DC.B	' you were. Then again, its',0
OI3R	DC.B	'worth ',0
OI4	DC.B	'checking out.',0

OI5	DC.B	'With determination, you seem to jump out and make a ',0
OI6R	DC.B	'rough landing,',0
OI7	DC.B	'taking a part of the tree outside the window with you.',0
OI8	DC.B	'Your scream summons out the enemy!',0

OI9	DC.B	'It seems as if ',0
OI10R	DC.B	'a small',0
OI11	DC.B	'but',0
OI12R	DC.B	'ferocious creature ',0
OI13	DC.B	'has broken',0
OI14	DC.B	'loose from the grass & snarles at you as you hang desperately onto',0
OI15	DC.B	'the tree. You look around and in your quick scan, realize you have',0
OI16	DC.B	'two options: ',0
OI17	DC.B	'1. Call for help!',0
OI18	DC.B	'2. Grab that super magical sword',0


*OUTSIDE BRANCH--------------------------------------
OP1	DC.B	'Well it seems as if you did the wrong thing, the ',0
OP2	DC.B	'creature',0
OP3	DC.B	'starts climbling the tree. Yes, ',0
OP4	DC.B	'climbs',0
OP5	DC.B	',',0
OP6	DC.B	'it is just a ',0
OP7	DC.B	'giant blur now',0
OP8	DC.B	'. ',0
OP9	DC.B	'You quickly grap the sword, ',0
OP10	DC.B	'you swing. ',0
OP11	DC.B	'Hits!',0
OP12	DC.B	'It gets knocked back, but it wasnt enough. You swing again.',0
OP13	DC.B	'Miss!',0

OP14	DC.B	'Things stated to get hectic now, the creature is ontop of you ',0
OP15	DC.B	'you jab at it, But ',0
OP16	DC.B	' nothing',0
OP17	DC.B	'You hit it again and then grabbing a branch you ',0
OP18	DC.B	'jump',0
OP19	DC.B	'.',0
OP20	DC.B	' landing on the floor, you shout for help',0
OP21	DC.B	'this time your fello knights arrive',0
OP22	DC.B	'This time they surround the',0
OP23	DC.B	'dark greyed creature and',0
OP24	DC.B	'jabbed it',0

OP25	DC.B	'the creature then',0
OP26	DC.B	'immediately runs off.',0

OP27	DC.B	'Anyways, now that ye''ve gotten that out of the way, let''s continue',0
OP28	DC.B	'walking. The Castle, remember?',0

OP29	DC.B	'You''re at the castle now,',0
OP30	DC.B	'Large gates ',0
OP31	DC.B	'infront',0
OP32	DC.B	'towering',0
OP33	DC.B	'over your fellow knights. ',0
OP34	DC.B	'Tall',0
OP35	DC.B	'circuler',0
OP36	DC.B	'Towers',0
OP37	DC.B	'stand',0
OP38	DC.B	'on either side',0
OP39	DC.B	'of a large ',0
OP40	DC.B	'Gate',0
OP41	DC.B	'Youre fianlly here.',0
OP42	DC.B	'You can finally make your parents proud,',0
OP43	DC.B	'But what happens when you meet an enemy?',0

OP44	DC.B	'Kill them? Youve never done it before,',0
OP45	DC.B	'its a big task',0
OP46	DC.B	'ahead of you',0
OP47	DC.B	', attacking another person in order to steal their castle.',0

OP48	DC.B	'Are you going to let that happen? Really?',0

OP49	DC.B	'1. Victory is far more important! This is a perfect opportunity to gain',0
OP50	DC.B	'my parents trust!',0
OP51	DC.B	'2. I can''t.. im to scared...',0

*OUTSIDE BRANCH 1----------------------------------

OPB1	DC.B	'Victory is the most important thing in your life, isnt it? Nothing is',0
OPB2	DC.B	'going to get in your way of finally obtaining the ',0
OPB3	DC.B	'sweet',0
OPB4	DC.B	', ',0
OPB5	DC.B	'sweet victory!',0
OPB6	DC.B	'.',0

OPB7	DC.B	'Nothing except for... ',0
OPB8	DC.B	'THUD',0
OPB9	DC.B	'What was that.. ',0
OPB10	DC.B	'THUD!',0
OPB11	DC.B	',there it was again..',0
OPB12	DC.B	'A troll',0
OPB13	DC.B	'was guarding the door',0
OPB14	DC.B	', and it starts walking towards you.',0

OPB15	DC.B	'This is bad for you. ',0
OPB16	DC.B	'Now there''s an chance to finally make you parents',0
OPB17	DC.B	'proud,',0
OPB18	DC.B	'now as the troll comes charging at you like a ',0
OPB19	DC.B	'bull',0
OPB20	DC.B	'. What should',0
OPB21	DC.B	'you do?',0

OPB22	DC.B	'1. Admit defeat, take the beating and die.',0
OPB23	DC.B	'2. Scream for help!',0

OPB24	DC.B	'So you scream for help, which 2 knights come ',0
OPB25	DC.B	'and help',0
OPB26	DC.B	'!',0

OPB27	DC.B	'They trip the troll ',0
OPB28	DC.B	'making him fall ',0
OPB29	DC.B	'onto the ground',0
OPB30	DC.B	'SMACK',0
OPB31	DC.B	'! Without hesitation they attack the troll',0
OPB32	DC.B	'killing him',0
OPB33	DC.B	'You stand there amazed.. ',0
OPB34	DC.B	'you then move with them',0
OPB35	DC.B	'to the throne room ',0
OPB36	DC.B	'to obtain',0
OPB37	DC.B	'Egreth ',0
OPB38	DC.B	'castle',0
OPB39	DC.B	'.',0

*OUTSIDE BRANCH 2 ---------------------------------
OPG1	DC.B	'Well look at you, scaredy cat',0
OPG2	DC.B	'Maybe coming here',0
OPG3	DC.B	'was a bad decision',0
OPG4	DC.B	', hm?',0

OPG5	DC.B	'You move away from the group,',0
OPG6	DC.B	'tryin to dodge all activity and still gain',0
OPG7	DC.B	'success',0
OPG8	DC.B	'and pride',0
OPG9	DC.B	'.',0

OPG10	DC.B	'Now this wasnt a smart plan, you stray away but an enemy',0
OPG11	DC.B	'come charging at you ',0
OPG12	DC.B	'like a bull',0
OPG13	DC.B	', and you immediately realize you',0
OPG14	DC.B	'have no defense, except...',0

OPG15	DC.B	'CLING!',0
OPG16	DC.B	' A knight comes to the rescue! Like a flash of lightning,',0
OPG17	DC.B	'He hits the enemy away,pushing him back with such force',0
OPG18	DC.B	'leaves you in awe. I believe',0
OPG19	DC.B	'they ',0
OPG20	DC.B	'call him the "DragonSlayer"',0
OPG21	DC.B	'Which you can probaly understand why',0
OPG22	DC.B	'he got the name..',0

OPG23	DC.B	'The knight approaches you, youre stunned a bit by the acts of the',0
OPG24	DC.B	'DRAGONSLAYER',0
OPG25	DC.B	',but happy nonetheless. ',0
OPG26	DC.B	'Stifly',0
OPG27	DC.B	', he nods to you',0
OPG28	DC.B	', and walks away towards the next door...',0

OPG29	DC.B	'Quickly you thank him, and speed back to the rest of the group',0

*OUTSIDE SWORD--------------------------------------------

OS1	DC.B	'You take out your sword and swing',0
OS2	DC.B	'smacking the creature in the face, it deals a lot of damage,',0
OS3	DC.B	'falling back it falls off the tree. It hits the ground, killed',0
OS4	DC.B	'instantly from the high fall.',0

OS5	DC.B	'Anyways, now that we''ve gotten that out of the way, let''s',0
OS6	DC.B	'continue walking. The castle, remember?',0

OS7	DC.B	'You''re at the castle now, ',0
OS8	DC.B	'Large gates  ',0
OS9	DC.B	'infront',0
OS10	DC.B	'towering',0
OS11	DC.B	'over your fellow knights. ',0
OS12	DC.B	'Tall',0
OS13	DC.B	'circuler ',0
OS14	DC.B	'Towers',0
OS15	DC.B	'stand',0
OS16	DC.B	'on either side',0
OS17	DC.B	'of a large ',0
OS18	DC.B	'Gate',0
OS19	DC.B	'Youre fianlly here.',0
OS20	DC.B	'You can finally make your parents proud,',0
OS21	DC.B	'But what happens when you meet an enemy?',0	

OS23	DC.B	'Kill them? Youve never done it before,',0
OS24	DC.B	'its a big task',0
OS25	DC.B	'ahead of you',0
OS26	DC.B	', attacking another person in order to steal their castle.',0

OS28	DC.B	'Are you going to let that happen? Really?',0

OS29	DC.B	'1. ',0
OS30	DC.B	'Victory',0
OS31	DC.B	'is far more important! This is a perfect opportunity to gain',0
OS32	DC.B	'my parents',0
OS33	DC.B	'trust',0
OS34	DC.B	'!',0

OS35	DC.B	'2. I can''t... Im too.. ',0
OS36	DC.B	'scared..',0


*OUTSIDE BRANCH SWORD 2--------------------------------

OSG1	DC.B	'So you do have a heart, eh? ',0
OSG2	DC.B	'Well, what are you going to do ',0
OSG3	DC.B	'when an enemy attacks you.',0
OSG4	DC.B	'Beg?',0
OSG5	DC.B	'I doubt theyll show you mercy.',0

OSG6	DC.B	'You move forward ',0
OSG7	DC.B	'making your way through the castle ',0
OSG8	DC.B	'until..',0
OSG9	DC.B	'an enemy appears ',0
OSG10	DC.B	'from around a corner ',0
OSG11	DC.B	'He notices you and ',0
OSG12	DC.B	' he starts running, more like sprinting ',0
OSG13	DC.B	'towards you!',0

OSG14	DC.B	'You don''t quite know what to do other than scream for help at',0
OSG15	DC.B	'this point. ',0
OSG16	DC.B	'You stand in fear.',0
OSG17	DC.B	'like lightning, ',0
OSG18	DC.B	'a knight comes from behind and ',0
OSG19	DC.B	' runs past you like ',0
OSG20	DC.B	'a wild',0
OSG21	DC.B	' animal',0
OSG22	DC.B	'out of nowhere!',0

OSG23	DC.B	'The best thing about this knight is that ',0
OSG24	DC.B	'he has no fears',0
OSG25	DC.B	'. Some',0
OSG26	DC.B	'say he attacked a fire breathing dragon and ',0
OSG27	DC.B	'won, without ',0
OSG28	DC.B	'braking a sweat..',0
OSG29	DC.B	'He swings at him..',0
OSG30	DC.B	'hitting the armour off the enemy. ',0
OSG31	DC.B	'he staggers back',0
OSG32	DC.B	'.',0
OSG33	DC.B	'He hits again...',0

OSG34	DC.B	'It''s a success',0
OSG35	DC.B	'! He kills the enemy there infront of you..',0
OSG36	DC.B	'You stand in awe of ',0
OSG37	DC.B	'his bravery ',0
OSG38	DC.B	'to kill.',0

OSG39	DC.B	'The knight notices your awe and smiles behind his viser..',0
OSG40	DC.B	'He',0
OSG41	DC.B	'nodes his head, accepting your thanks ',0
OSG42	DC.B	'and continues on his way..',0
OSG43	DC.B	'you follow him,',0
OSG44	DC.B	'staying close to him at all costs.',0
OSG45	DC.B	'You reach a marbled hallway with a door at the ',0
OSG46	DC.B	'end .',0
OSG47	DC.B	'Finally.. ',0
OSG48	DC.B	'you walk to the ',0
OSG49	DC.B	'throne room',0
OSG50	DC.B	'to',0
OSG51	DC.B	'obtain this sweet, sweet ',0
OSG52	DC.B	'Victory',0
OSG53	DC.B	'.',0

*OUTSIDE BRANCH SWORD 1---------------------------------

OSB1	DC.B	'We can''t be wasting our time trying to save people we don''t even',0
OSB2	DC.B	'know, right!?! Nothing is more important than obtaining this',0
OSB3	DC.B	'sweet, sweet Victory',0
OSB4	DC.B	'!',0

OSB5	DC.B	'It seems like luck is on your side! You have a ',0
OSB6	DC.B	'Super Strong',0
OSB7	DC.B	'magical sword',0
OSB8	DC.B	'that can do ',0
OSB9	DC.B	'more',0
OSB10	DC.B	'damage',0
OSB11	DC.B	'than any other can do',0
OSB12	DC.B	'!',0

OSB13	DC.B	'Now remember, ',0
OSB14	DC.B	'enemies are all over the castle',0
OSB15	DC.B	', and this is a',0
OSB16	DC.B	'perfect time to use all of those sweet ',0
OSB17	DC.B	'sword skills ',0
OSB18	DC.B	'you''ve',0
OSB19	DC.B	'aquired throughout the years! This time you decide to test your',0
OSB20	DC.B	'bravery and ',0
OSB21	DC.B	'skills...',0

OSB22	DC.B	'You were inside now, ',0
OSB23	DC.B	'This castle ',0
OSB24	DC.B	'has ',0
OSB25	DC.B	'gave you the opportunity to ',0
OSB26	DC.B	'fight! ',0
OSB27	DC.B	'You continue ',0
OSB28	DC.B	'walking',0
OSB29	DC.B	'through ',0
OSB30	DC.B	'the castle ',0
OSB31	DC.B	'and you stumble across a hallway..',0

OSB32	DC.B	'You walk down the marble hall ',0
OSB33	DC.B	'was this it? ',0
OSB34	DC.B	' the finale? ',0
OSB35	DC.B	'You open the',0
OSB36	DC.B	'Door..',0
OSB37	DC.B	'it was..',0
OSB38	DC.B	'indeed..',0
OSB39	DC.B	'the THRONE ROOM!!',0

*INSIDE INTRO---------------------------------------------

II1	DC.B	'So you decide to coninue on with your journey. You make your way towards the castle,',0
II2	DC.B	'nearly there, ',0
II3	DC.B	'almost..',0
II4	DC.B	'. Now be glad you didn''t jump out',0
II5	DC.B	'Your''e finally here!',0

II6	DC.B	'Anyways, you head towards the castle onfoot and decide to check the small door to the right of the main gate',0
II7	DC.B	'Thud!. ',0
II8	DC.B	'There was something big there',0
II9	DC.B	'.'
II10	DC.B	'But unfortunately, ',0
II11	DC.B	'You didn''t have backup.. ',0
II12	DC.B	'The creature trugged its way through the door ',0
II13	DC.B	'STOMP! STOMP! ',0
II14	DC.B	'He rose his giant hammer',0
II15	DC.B	'and swung it ',0
II16	DC.B	'towards you',0
II17	DC.B	'. You decide what to do next...',0

II18	DC.B	'1. Just stand there, cowardly...',0
II19	DC.B	'2. Do something',0

II20	DC.B	'You quickly jump out of ',0 
II21	DC.B	'The way! Close call,you swing your sword',0
II22	DC.B	'"Take this!" ',0
II23	DC.B	'"And this!"',0
II24	DC.B	',you scream. The giant took loads of damage and hit the floor..',0

II25	DC.B	'Your first kill ',0
II26	DC.B	' a rush',0
II27	DC.B	'But what now?',0
II28	DC.B	'You see more knights',0
II29	DC.B	' taking another',0
II30	DC.B	'entry. What should you do?',0

II31	DC.B	'1. Go with them',0
II32	DC.B	'2. Continue through this door',0

*INSIDE DOORWAY----------------------------------------------

IL1	DC.B	'You continue through the door, more enemies!',0

IL2	DC.B	'You sneak behind a piller',0
IL3	DC.B	' cowardly',0
IL4	DC.B	'.',0
IL5	DC.B	'Even with this new power power of',0
IL6	DC.B	'Rage',0
IL7	dc.b	'You',0
il8	dc.b	'try sneak',0
il9	dc.b	'around the enemies.',0
il10	dc.b	'You move pillar',0
il11	dc.b	'to ',0
il12	dc.b	'pillar',0

il13	dc.b	'You move silently towards them,',0
il14	dc.b	'creating the angle..',0
il15	dc.b	'you now have the best opportunity to... ',0
il16	dc.b	'run',0
il17	dc.b	'!',0

il18	dc.b	'And run you did...',0

il19	dc.b	'You ran towards the doorway,',0
il20	dc.b	' the enemies notice you',0
il21	dc.b	'2',0
il22	dc.b	'maybe ',0
il23	dc.b	'3',0
il24	dc.b	'? You werent sure. ',0
il25	dc.b	'But you were scared',0
il26	dc.b	', ',0
il27	dc.b	'You ran and',0
il28	dc.b	'ran',0
il29	dc.b	' but then..',0
il30	dc.b	'An enemy knight was stood infront of ',0
il31	dc.b	'you',0

il32	dc.b	'Well,now what.., You trembled with fear. The',0
il33	dc.b    'You werent sure what to do.',0

il34	dc.b	'You reached for your sword..but so did he',0
il35	dc.b	' you pulled out your sword, but it looks like your',0
il36	dc.b	'too late ',0
il37	dc.b	'he stabs you but you get him back good across the ',0
il38	dc.b	'neck.',0

il39	dc.b	'What should you do now?',0
il40	dc.b	'1. Show mercy?',0
il41	dc.b	'2. Kill him and run!',0

*INSIDE DOORWAY GOOD-----------------------------------------

ilg1	dc.b	'Show mercy, huh? Well,that wasn''t smartest solution to',0
ilg2	dc.b	'this problem. You may have just killed yourself ',0
ilg3	dc.b	'but ',0
ilg4	dc.b	'still. It seems like no matter how many times chicken out you always have',0
ilg5	dc.b	'some savior. To your left came one of your fello knights,',0
ilg6	dc.b	'Thank God.'

ilg7	dc.b	'They sliced him up',0
ilg8	dc.b	'viciously',0

ilg9	dc.b	'But then ',0
ilg10	dc.b	'behind',0
ilg11	dc.b	' your friend, out came ',0
ilg12	dc.b	'an enemy.',0
ilg13	dc.b	'You coudlnt ',0
ilg14	dc.b	'React in time. It was too late',0
ilg15	dc.b	'They turn ',0
ilg16	dc.b	' but..',0
ilg17	dc.b	'He gets stabbed from behind!',0

ilg18	dc.b	'What should you do?',0

ilg19	dc.b	'1. Fight!',0
ilg20	dc.b	'2. RUN!',0

ilg21	dc.b	'Nothing is stopping you now, and you start running towards the',0
ilg22	dc.b	'Door!',0

*INSIDE DOORWAY BAD------------------------------------------

ilb1	dc.b	'Kill and run, eh? You''re a ',0
ilb2	dc.b	'ruthless',0
ilb3	dc.b	'killer, aren''t you?',0
ilb4	dc.b	'Youve changed from the start of the quest...',0

ilb5	dc.b	'You start',0
ilb6	dc.b	'running again.',0
ilb7	dc.b	'This time down a ',0
ilb8	dc.b	'hallway. This looks like the right way..',0
ilb9	dc.b	'Marbled floor plus ',0
ilb10	dc.b	'you just killed someone',0
ilb11	dc.b	'! Nothing is stopping you',0
ilb12	dc.b	'now, and ',0
ilb13	dc.b	'you start running towards the throne room',0
ilb14	dc.b	'!',0

*INSIDE OTHER KNIGHTS--------------------------------------

iv1	dc.b	'So you decided to join the rest, huh?',0

iv2	dc.b	'That may have been the best idea',0
iv3	dc.b	'. You see, groups are good',0
iv4	dc.b	'at taking down multiple enemies at once.',0
iv5	dc.b	'And you didnt know',0
iv6	dc.b	'how many  ',0
iv7	dc.b	'enemies there were.',0
iv8	dc.b	'But these knights were good, ',0
iv9	dc.b	'excellent at there job, ruthless killers',0

iv10	dc.b	'You walk with them',0
iv11	dc.b	'killing all',0
iv12	dc.b	'enemies',0
iv13	dc.b	'in your path. One by one, but somehow',0
iv14	dc.b	'during the comotion. ',0
iv15	dc.b	'You get lost,',0
iv16	dc.b	'You were now on your own..',0
iv17	dc.b	'again..',0
iv18	dc.b	'smartly,',0
iv19	dc.b	'you run for cover in the ',0
iv20	dc.b	'chaos',0
iv21	dc.b	'.',0

iv22	dc.b	'You didn''t expect however to find what you did though, as a ',0
iv23	dc.b	'marbled hallway',0
iv24	dc.b	'which led to a door ',0
iv25	dc.b	'at the very end, laid ahead of you..',0

iv26	dc.b	'This ',0
iv27	dc.b	'hallway, ',0
iv28	dc.b	'was the main hallway,',0
iv29	dc.b	'which screamed importance!',0
iv30	dc.b	'You waited til chaos stopped for a bit..',0
iv31	dc.b	'Then you',0
iv32	dc.b	'ran to..',0

iv33	dc.b	'The ',0
iv34	dc.b	'Door.. ',0
iv35	dc.b	'which lead to the ',0
iv36	dc.b	'throne room',0
iv37	dc.b	'!',0

*ENDING GOOD-----------------------------------------

sup1	dc.b	'Success! You''ve reached ',0
sup2	dc.b	'the centre of the castle!',0
sup3	dc.b	'The',0
sup4	dc.b 	' Throne Room',0
sup5	dc.b	'The king ',0
sup6	dc.b	'sat there...ready for battle.',0

sup7	dc.b	'But there''s a problem! There are more knights',0
sup8	dc.b	'standing beside him',0
sup9	dc.b	'swords blazing. They were ready too!',0
sup10	dc.b	'It was only',0
sup11	dc.b	'you against this army..',0
sup12	dc.b	'!',0

sup13	dc.b	'What are you thinking about doing?',0

sup14	dc.b	'1. It''s not worth it...',0
sup15	dc.b	'2. Stand and fight!',0

sup16	dc.b	'So you want to stand and fight, eh?',0

sup17	dc.b	'Well, good luck... I can offer no more assistance, not that I was',0
sup18	dc.b	'of any help at any point in this game, but still...',0

sup19	dc.b	'But as you rush towards them, Your fellow knights',0
sup20	dc.b	'rush from behind',0
sup21	dc.b	'From all angles',0
sup22	dc.b	' you attack the castles knights',0
sup23	dc.b	'one by one you take them down.',0

sup24	dc.b	'Until',0
sup25	dc.b	' the king was left..',0
sup26	dc.b	'It was done,',0
sup27	dc.b	'Ye had the castle, ',0
sup28	dc.b	'just one more kill.',0
sup29	dc.b	' You raised your sword and.. ',0
sup30	dc.b	'Slice!, you pierce through his armor and kill him.',0

sup31	dc.b	'Success! You''ve succefully taken',0
sup32	dc.b	'over Egreth Castle! ',0
sup33	dc.b	'Victory',0
sup34	dc.b	'!',0 

*DEATH ENDING-------------------------------------------

sui1	dc.b	'Alex gets hit, you seem to have lost all hope,There''s nothing you can do,',0
sui2	dc.b	'you just lay there defeated...',0



    END	   INTRO





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
