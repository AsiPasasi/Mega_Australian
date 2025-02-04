IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Saxton's Variables
	SaGround dw 40320
	SaX dw 5
	SaY dw 40320
	SaVerVel dw 0
	SaJCheck db 0
	RCheck db 0
	RCheck2 db 0
	SCheck dw 0
	SRight dw 0
	HP db 28
	HPX dw 20
	HPY dw 10
	DJumpAmmo db 20
	RocketAmmo db 10
	FlameAmmo db 56
	SniperAmmo db 15
	SpyAmmo db 112
	SaLastPose dw 0
	SaMode db 0
	SaRightWall dw 298
	SaLeftWall dw 0
	SaFire db 0
	SaLives db 3
	SaVisible db 0
	PLX dw 0
	PLY dw 0
	;----------
; The Sentry's variables
	SeX dw 0
	SeY dw 0
	SeVerVel dw 0
	SeJCheck db 0
	SeHP db 0
	SeLastPose dw 0
	SeRightWall dw 298
	SeLeftWall dw 0
	;-----------
; General Enemy variables
	EnX dw 0
	EnY dw 0
	EnVerVel dw 0
	EnJCheck db 0
	EnHP db 0
	EnLastPose dw 0
	EnRightWall dw 298
	EnLeftWall dw 0
	EnWidth dw 0
	EnHeight dw 0
	;-----------
; Enemy1's variables
	En1X dw 290
	En1Y dw 40320
	En1VerVel dw 0
	En1JCheck db 0
	En1HP db 0
	En1LastPose dw 0
	En1Width dw 0
	En1Height dw 0
	En1Type db 0
	;-----------
; Enemy2's variables
	En2X dw 150
	En2Y dw 40320
	En2VerVel dw 0
	En2JCheck db 0
	En2HP db 0
	En2LastPose dw 0
	En2Width dw 0
	En2Height dw 0
	En2Type db 0
	;-----------
; Enemy3's variables
	En3X dw 290
	En3Y dw 56000
	En3VerVel dw 0
	En3JCheck db 0
	En3HP db 0
	En3LastPose dw 0
	En3Width dw 0
	En3Height dw 0
	En3Type db 0
	;-----------
; Friendly Bullets variables
	FBulX dw 20 dup (0)
	FBulY dw 20 dup (0)
	FBulRight dw 20 dup (0)
	FBulType dw 20 dup (0)
; Hostile Bullets variables
	SaReflected db 0
	HBulX dw 80 dup (0)
	HBulY dw 80 dup (0)
	HBulRight dw 80 dup (0)
	HBulType dw 80 dup (0)
; general bullet variables
	AddBulX dw 0
	AddBulY dw 0
	AddBulRight dw 0
	AddBulType dw 0
; Saxton's and the sentry's bullet timers
	BulSaTimer db 0
	BulSeTimer db 0
	BulEnTimer db 0
	BulEn1Timer db 0
	BulEn2Timer db 0
	BulEn3Timer db 0
	;-----------
; Misc. Enemy variables
	SBRCheck db 0
	SBRCheck2 db 0
	msg db '!$'
	;-----------------
; checks which of the 8 first stages were completed by the player (every bit symbolizes a different stage)
	StartStageCheck db 0
	DisBlockX dw 70
	DisBlockY dw 70
	DisBlock1X dw 70
	DisBlock1Y dw 70
	DisBlockHP db 0
; ------------------------------------------------
; General Variables and files used for printing 
	ground dw 40320
	StageGround db 320 dup (105)
	WallRange db 0
	IWalls db 0
	IWalls2 dw 0
	ground2 db 0
	SkipInjector db 0
	ceiling dw 0
	x dw 5
	y dw 56000
	VerVel dw 0
	JCheck db 0
	PicX dw 0
	PicY dw 0
	color db 2
	SLS db 'SLS2.bmp',0
	SRS db 'SRS21.bmp',0
	SRSl db 'SRSl2.bmp',0
	SLSl db 'SLSl2.bmp',0
	SLR2 db 'SLR2.bmp',0
	SRR2 db 'SRR2.bmp',0
	SLR1 db 'SLR1.bmp',0
	SRR1 db 'SRR1.bmp',0
	SeL db 'SeL.bmp',0
	SeR db 'SeR.bmp',0
	SebL db 'SebL.bmp',0
	SebR db 'SebR.bmp',0
	SBLR2 db 'SBLR2.bmp',0
	SBRR2 db 'SBRR2.bmp',0
	SBLR1 db 'SBLR1.bmp',0
	SBRR1 db 'SBRR1.bmp',0
	YLS db 'YRS.bmp',0
	YRS db 'YRS.bmp',0
	YLD db 'YLD.bmp',0
	YRD db 'YRD.bmp',0
	Bombo db 'Bombo.bmp',0
	Bombo1 db 'Bombo1.bmp',0
	Bombo2 db 'Bombo2.bmp',0
	Bombo3 db 'Bombo3.bmp',0
	Bombo4 db 'Bombo4.bmp',0
	SBE db 'SBE.bmp',0
	ScRS db 'ScRS.bmp',0
	ScLS db 'ScLS.bmp',0
	SoLS db 'SoRS.bmp',0
	PyRS db 'PyRS.bmp',0
	PyLS db 'PyLS.bmp',0
	SnLS db 'SnLS.bmp',0
	SpRS db 'SpRS.bmp',0
	SpLS db 'SpLS.bmp',0
	SpRV db 'SpRV.bmp',0
	SpLV db 'SpLV.bmp',0
	BKGSS db 'BKGSS.bmp',0
	BKGSSX1 db 'BKGSSX1.bmp',0
	BKGSSX2 db 'BKGSSX2.bmp',0
	BKGSSX3 db 'BKGSSX3.bmp',0
	BKGSS1 db 'BKGSS1.bmp',0
	BKGSS2 db 'BKGSS2.bmp',0
	BKGSS3 db 'BKGSS3.bmp',0
	BKGSS4 db 'BKGSS4.bmp',0
	BKGSS5 db 'BKGSS5.bmp',0
	BKGSS6 db 'BKGSS6.bmp',0
	BKGSS8 db 'BKGSS8.bmp',0
	BKGSS9 db 'BKGSS9.bmp',0
	BKGE1 db 'BKGE-1.bmp',0
	BKGE2 db 'BKGE-2.bmp',0
	BKGE3 db 'BKGE-3.bmp',0
	BKGE4 db 'BKGE-4.bmp',0
	BKGE5 db 'BKGE-5.bmp',0
	BKGE6 db 'BKGE-6.bmp',0
	BKGE7 db 'BKGE-7.bmp',0
	BKG01 db 'BKG0-1.bmp',0
	BKG02 db 'BKG0-2.bmp',0
	BKG03 db 'BKG0-3.bmp',0
	BKG04 db 'BKG0-4.bmp',0
	BKG05 db 'BKG0-5.bmp',0
	BKG06 db 'BKG0-6.bmp',0
	BKG07 db 'BKG0-7.bmp',0
	BKG08 db 'BKG0-8.bmp',0
	BKG09 db 'BKG0-9.bmp',0
	BKG11 db 'BKG1-1.bmp',0
	BKG12 db 'BKG1-2.bmp',0
	BKG13 db 'BKG1-3.bmp',0
	BKG14 db 'BKG1-4.bmp',0
	BKG15 db 'BKG1-5.bmp',0
	BKG16 db 'BKG1-6.bmp',0
	BKG1B db 'BKG1-B.bmp',0
	Be1B db 'Be1B.bmp',0
	BKG21 db 'BKG2-1.bmp',0
	BKG22 db 'BKG2-2.bmp',0
	BKG23 db 'BKG2-3.bmp',0
	BKG24 db 'BKG2-4.bmp',0
	BKG25 db 'BKG2-5.bmp',0
	BKG26 db 'BKG2-6.bmp',0
	BKG2B db 'BKG2-B.bmp',0
	Be2B db 'Be2B.bmp',0
	BKG31 db 'BKG3-1.bmp',0
	BKG32 db 'BKG3-2.bmp',0
	BKG33 db 'BKG3-3.bmp',0
	BKG34 db 'BKG3-4.bmp',0
	BKG35 db 'BKG3-5.bmp',0
	;BKG36 db 'BKG3-6.bmp',0
	BKG3B db 'BKG3-B.bmp',0
	Be3B db 'Be3B.bmp',0
	BKG41 db 'BKG4-1.bmp',0
	BKG42 db 'BKG4-2.bmp',0
	BKG43 db 'BKG4-3.bmp',0
	BKG44 db 'BKG4-4.bmp',0
	BKG45 db 'BKG4-5.bmp',0
	BKG4B db 'BKG4-B.bmp',0
	Be4B db 'Be4B.bmp',0
	BKG51 db 'BKG5-1.bmp',0
	BKG52 db 'BKG5-2.bmp',0
	BKG53 db 'BKG5-3.bmp',0
	BKG54 db 'BKG5-4.bmp',0
	BKG55 db 'BKG5-5.bmp',0
	BKG56 db 'BKG5-6.bmp',0
	BKG57 db 'BKG5-7.bmp',0
	BKG5B db 'BKG5-B.bmp',0
	Be5B db 'Be5B.bmp',0
	;BKG61 db 'BKG6-1.bmp',0
	BKG62 db 'BKG6-2.bmp',0
	BKG63 db 'BKG6-3.bmp',0
	BKG64 db 'BKG6-4.bmp',0
	BKG65 db 'BKG6-5.bmp',0
	;BKG66 db 'BKG6-6.bmp',0
	BKG6B db 'BKG6-B.bmp',0
	Be6B db 'Be6B.bmp',0
	BKG81 db 'BKG8-1.bmp',0
	BKG82 db 'BKG8-2.bmp',0
	BKG83 db 'BKG8-3.bmp',0
	BKG84 db 'BKG8-4.bmp',0
	BKG85 db 'BKG8-5.bmp',0
	BKG86 db 'BKG8-6.bmp',0
	BKG87 db 'BKG8-7.bmp',0
	BKG88 db 'BKG8-8.bmp',0
	BKG89 db 'BKG8-9.bmp',0
	BKG810 db 'BKG8-10.bmp',0
	BKG811 db 'BKG8-11.bmp',0
	BKG812 db 'BKG8-12.bmp',0
	BKG8B db 'BKG8B.bmp',0
	Be8B db 'Be8B.bmp',0
	BKG91 db 'BKG9-1.bmp',0
	BKG92 db 'BKG9-2.bmp',0
	BKG93 db 'BKG9-3.bmp',0
	BKG94 db 'BKG9-4.bmp',0
	BKG95 db 'BKG9-5.bmp',0
	BKG96 db 'BKG9-6.bmp',0
	BKG9B db 'BKG9-B.bmp',0
	Be9B db 'Be9B.bmp',0
	MAP11 db 'MAP1-1.txt',0
	MAP12 db 'MAP1-2.txt',0
	MAP13 db 'MAP1-3.txt',0
	MAP14 db 'MAP1-4.txt',0
	MAP142 db 'MAP1-42.txt',0
	MAP15 db 'MAP1-5.txt',0
	MAP16 db 'MAP1-6.txt',0
	MAP1B db 'MAP1-B.txt',0
	MAP21 db 'MAP2-1.txt',0
	MAP22 db 'MAP2-2.txt',0
	MAP23 db 'MAP2-3.txt',0
	MAP24 db 'MAP2-4.txt',0
	MAP25 db 'MAP2-5.txt',0
	MAP26 db 'MAP2-6.txt',0
	MAP2B db 'MAP2-B.txt',0
	MAP31 db 'MAP3-1.txt',0
	MAP32 db 'MAP3-2.txt',0
	MAP33 db 'MAP3-3.txt',0
	MAP34 db 'MAP3-4.txt',0
	MAP35 db 'MAP3-5.txt',0
	MAP3B db 'MAP3-B.txt',0
	MAP41 db 'MAP4-1.txt',0
	MAP42 db 'MAP4-2.txt',0
	MAP43 db 'MAP4-3.txt',0
	MAP44 db 'MAP4-4.txt',0
	MAP45 db 'MAP4-5.txt',0
	MAP4B db 'MAP4-B.txt',0
	MAP51 db 'MAP5-1.txt',0
	MAP55 db 'MAP5-5.txt',0
	MAP56 db 'MAP5-6.txt',0
	MAP57 db 'MAP5-7.txt',0
	MAP5B db 'MAP5-B.txt',0
	MAP81 db 'MAP8-1.txt',0
	MAP82 db 'MAP8-2.txt',0
	MAP83 db 'MAP8-3.txt',0
	MAP84 db 'MAP8-4.txt',0
	MAP85 db 'MAP8-5.txt',0
	MAP87 db 'MAP8-7.txt',0
	MAP88 db 'MAP8-8.txt',0
	MAP89 db 'MAP8-9.txt',0
	MAP8B db 'MAP8-B.txt',0
	MAP91 db 'MAP9-1.txt',0
	MAP92 db 'MAP9-2.txt',0
	MAP93 db 'MAP9-3.txt',0
	MAP95 db 'MAP9-5.txt',0
	MAP96 db 'MAP9-6.txt',0
	MAP9B db 'MAP9-B.txt',0
	GOS db 'GOS.bmp',0
	GOS2 db 'GOS2.bmp',0
	Intel db 'Intel.bmp',0
	PLBL db 'PLBL.bmp',0
	PLBR db 'PLBR.bmp',0
	PLRL db 'PLRL.bmp',0
	PLRR db 'PLRR.bmp',0
	BulH db 'BulH.bmp',0
	RktR db 'RktR.bmp',0
	RktL db 'RktL.bmp',0
	FStick db 'FStick.bmp',0
	HStick db 'HStick.bmp',0
	DisBlock db 'DisBlock.bmp',0
	DisBlock2 db 'DisBlk2.bmp',0
	DisBlock3 db 'DisBlk3.bmp',0
	DisBlock4 db 'DisBlk4.bmp',0
	Fire db 'Fire.bmp',0
	BombV db 'BombV.bmp',0
	BBall db 'BBall.bmp',0
	Saw1 db 'Saw1l.bmp',0
	Saw2 db 'Saw2l.bmp',0
	FiWa1 db 'FiWa1.bmp',0
	FiWa2 db 'FiWa2.bmp',0
	filehandle dw ?
	Header db 54 dup (0)
	Palette db 256*4 dup (0)
	ScrLine db 320 dup (0)
	; ScrBuffer db 320*200 dup(0)
	ErrorMsg db 'Error', 13, 10,'$'
	LastPose dw 0
; --------------------------
; Clock related variables
	Clock equ es:6Ch
	BKGPrintCheck db 0
	BKGPrintCheck2 db 0
	RoomTimer db 0
	RoomTimer2 db 0
	RoomTimer3 db 0
	RoomTimer4 db 0
; ------------------------------------------------
	;ScrBuffer db 320 dup(0)

CODESEG
proc NatMov
; activates all the movements that need to happen every tick
	push ax
	push bx
	
	call FindGround
	call Gravity
	call BasicReset
	
	pop bx
	pop ax
	ret
endp
;========================================================================
proc FindGround
	push ax
	push bx
	push cx
	push dx
	cmp [SkipInjector], 0
	je SkipSkipFindGround
		jmp SkipFindGround
	SkipSkipFindGround:
	mov bx, [x]
	xor dx, dx
	mov cx, 320
	mov ax, [y]
	div cx
	mov dx, ax
	sub dx, 10
	xor ax, ax
	mov al, [StageGround + bx]
	xor cx, cx
	FindGroundLoop:
		cmp dl, [StageGround + bx]
		jae SkipFindGroundWall
			push ax
			mov ax, 1
			cmp cx, 8
			jae FindGroundWallHigh
			shl ax, cl
			add [IWalls], ah
			FindGroundWallHigh:
			sub cx, 8
			shl ax, cl
			add [IWalls2], ax
			add cx, 8
			pop ax
			jmp SkipFindGroundUpLoop
		SkipFindGroundWall:
		cmp al, [StageGround + bx]
		jna SkipFindGroundUpLoop
			mov al, [StageGround + bx]
		SkipFindGroundUpLoop:
		inc bx
		inc cx
		cmp cx, 21
		jb FindGroundLoop
	
	xor ah, ah
	sub ax, 24
	mov bx, ax
	shl ax, 8
	shl bx, 6
	add ax, bx
	mov [ground], ax
	
	mov [WallRange], 0
	mov al, [IWalls]
	cmp al, 0
	je SkipFindGroundNegWallRange
		sub [WallRange], 8
		shl al, 1
		jc SkipFindGroundNegWallRange
		inc [WallRange]
	SkipFindGroundNegWallRange:
	mov ax, [IWalls2]
	shl ax, 3
	cmp ax, 0
	FindGroundPosWallRangeLoop:
	je SkipFindGroundPosWallRange
		inc [WallRange]
		shl ax, 1
		cmp ax, 0
		jne FindGroundPosWallRangeLoop
	SkipFindGroundPosWallRange:
SkipFindGround:	
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp
;========================================================================
proc Injector
	push ax
	push bx
	push cx
	cmp [SkipInjector], 0
	je SkipSkipInjector
		jmp SkipInjector2
	SkipSkipInjector:
	mov bx, [x]
	xor ax, ax
	mov al, [StageGround + bx]
	add bx, 21
	mov ah, [StageGround + bx]
	cmp bx, 21
	jnb SkipSkipStraightInjector
	mov al, ah
	jmp SkipInjectorSwap2
	SkipSkipStraightInjector:
	cmp ah, al
	jae SkipInjectorSwap
		cmp bx, 320
		jae SkipInjectorSwap
		
		mov cx, 21
		InjectorSwapLoop:
		dec bx
		dec cx
		cmp [StageGround + bx], ah
		je InjectorSwapLoop
		; inc cl
		mov al, [StageGround + bx]
		mov [ground2], al
		mov [WallRange], 21
		sub [WallRange], cl
		mov al, ah
		jmp SkipInjectorSwap2
	SkipInjectorSwap:
	cmp al, ah
	jae SkipInjectorSwap2
		cmp bx, 320
		jae SkipInjectorSwap2
		sub bx, 21
		mov cx, 21
		InjectorSwapLoop2:
		inc bx
		dec cx
		cmp [StageGround + bx], al
		je InjectorSwapLoop2
		mov ah, [StageGround + bx]
		mov [ground2], ah
		dec cl
		mov [WallRange], cl
		sub [WallRange], 21
		; mov ah, al
	SkipInjectorSwap2:
	xor ah, ah
	sub ax, 24
	mov bx, ax
	shl ax, 8
	shl bx, 6
	add ax, bx
	mov [ground], ax
	SkipInjector2:
	pop cx
	pop bx
	pop ax
	ret
endp

proc Gravity
	; changes a character's vertical position according to gravity (works similarly to basic reset)
	push bx
	push ax
	GravityGround2:
	mov ax, [y]
	cmp ax, [ground]
	jae SkipAboveGround
		cmp [ground2], 0
		je SkipGravityGround2
			xor ax, ax
			mov al, [ground2]
			sub ax, 24
			mov bx, ax
			shl ax, 8
			shl bx, 6
			add ax, bx
			mov [ground2], 0
			jmp GravityGround2
		SkipGravityGround2:
		inc [JCheck]
SkipAboveGround:
	cmp [JCheck], 0
	je SkipGravity
Deccelerate:
		cmp ax, [ground]
		ja SkipGravity
		mov ax, [VerVel]
		sub [y], ax
		sub [VerVel], 320
SkipGravity:
	mov bx, [y]
	cmp bx, [ground]
	jae ResetVerVel
	jmp SkipResetVerVel
ResetVerVel:
		mov [VerVel], 0
		mov [JCheck], 0
SkipResetVerVel:
	pop ax
	pop bx
	ret
endp

proc BasicReset
; gets through the used variables a character's stats and according to them decides if it needs to be moved (i.e. if the character is in a wall or hits the ceiling/floor)
	push ax
	push bx
	mov ax, [SaRightWall]
	cmp [x], ax
	jg ResetRight
	mov bx, [SaLeftWall]
	cmp [x], bx
	jl ResetLeft
	jmp SkipResetX
	ResetRight:
		mov [x], ax
		jmp SkipResetX
	ResetLeft:
		mov [x], bx
	SkipResetX:
	mov bx, [ceiling]
	cmp [y], bx
	jb ResetUp
	cmp [y], 62000
	ja ResetUp
	mov ax, [ground]
	BasicResetGround2:
	cmp [y], ax
	ja ResetDown
	jmp SkipResetY
	ResetDown:
		cmp [ground2], 0
		je SkipBasicResetGround2
			mov bx, [y]
			sub bx, ax
			cmp bx, 3200
			jna SkipBasicResetGround2
				xor ax, ax
				mov al, [WallRange]
				mov bx, [x]
				sub bl, al
				mov [x], bx
				mov al, [ground2]
				sub ax, 24
				mov bx, ax
				shl ax, 8
				shl bx, 6
				add ax, bx
				jmp BasicResetGround2
		SkipBasicResetGround2:
		mov [y], ax
		mov [ground2], 0
		jmp SkipResetY
	ResetUp:
		mov [y], bx
		mov [VerVel], 0
	SkipResetY:
	pop bx
	pop ax
	ret
	; afterwards stats are being moved from the general var to the character specific var
endp

proc HealthBar
	; Prints Saxton's bars
	push es
	push cx
	push dx
	push ax
	push bx
	push [HPX]
	push [HPY]
	mov cx, 28
PrintHealthBar:
		push cx
		push dx
		mov [color], dl
		cmp cl, [HP]
		jna SkipBlackBar
			mov [color], 1
		SkipBlackBar:
		mov cx, 2
	HPBRow:
			push cx
			push [HPX]
			cmp cx, 1
			jne SkipBlackBar2
				mov [color], 1
			SkipBlackBar2:
			mov cx, 7
		PrintHPBLine:
				push cx
				mov dx, [HPY]
				mov di, [HPY]
				shl di, 8
				shl dx, 6
				add di, dx
				add di, [HPX]
				mov bl, [color]
				mov ax, 0A000h
				sub ax, 6400
				mov es, ax
				mov [es:di], bl
				inc [HPX]
				pop cx
				loop PrintHPBLine
			inc [HPY]
			pop [HPX]
			pop cx
			loop HPBRow
		pop dx
		pop cx
		loop PrintHealthBar
	pop [HPY]
	pop [HPX]
	pop bx
	pop ax
	pop dx
	pop cx
	pop es
	ret
endp

proc BossHealthBar
	push cx
	push dx
	push ax
	push bx
	push [HPX]
	push [HPY]
	mov bl, [HP]
	add [HPX], 10
	mov al, [DisBlockHP]
	mov [HP], al
	mov dl, 9
	call HealthBar
	mov [HP], bl
	pop [HPY]
	pop [HPX]
	pop bx
	pop ax
	pop dx
	pop cx
	ret
endp 

proc WeaponHealthBar
	push cx
	push dx
	push ax
	push bx
	push [HPX]
	push [HPY]
	mov bl, [HP]
	sub [HPX], 10
	mov [HP], al
	call HealthBar
	mov [HP], bl
	pop [HPY]
	pop [HPX]
	pop bx
	pop ax
	pop dx
	pop cx
	ret
endp 


	
proc ClearKeyboardBuffer
	; Clears the Keyboard Buffer (just in case)
	push ax
	push es
	mov	ax, 0000h
	mov	es, ax
	mov	[word ptr es:041ah], 041eh
	mov	[word ptr es:041ch], 041eh				; Clears keyboard buffer
	pop	es
	pop	ax
	ret
endp

proc PrintBlock
	push es
	mov cx, 10
	PrBlLine:
		push cx
		push [x]
		mov cx, 10
		PrBlLineLoop:
			push cx
			mov cx,[y]
			mov di,[y]
			shl di, 8
			shl cx, 6
			add di, cx
			add di, [x]
			mov dl,[color]
			mov	ax, 0A000h
			sub ax, 6400
			mov	es, ax
			mov [es:di], dl
			inc [x]
			pop cx
			loop PrBlLineLoop
		inc [y]
		pop [x]
		pop cx
		loop PrBlLine
	pop es
	ret
endp

proc CapturePoint
	push es
	push cx
	mov cx, 3
	Cap1StageL:
		push cx
			mov cx,[y]
			mov di,[y]
			shl di, 8
			shl cx, 6
			add di, cx
			add di, [x]
			mov dl,[color]
			mov	ax, 0A000h
			sub ax, 6400
			mov	es, ax
			mov [es:di], dl
		pop cx
		dec [y]
		loop Cap1StageL
	sub [y], 24
	mov cx, 10
		Cap1StageH:
		push cx
			mov cx,[y]
			mov di,[y]
			shl di, 8
			shl cx, 6
			add di, cx
			add di, [x]
			mov dl,[color]
			mov	ax, 0A000h
			sub ax, 6400
			mov	es, ax
			mov [es:di], dl
		pop cx
		dec [y]
		loop Cap1StageH
	SkipCap:
	pop cx
	pop es
	ret
endp

proc PushLoad
	mov ax, [SaX]
	add ax, 23
	cmp [PLX], ax
	jg SkipPL
		sub ax, 46
		cmp [PLX], ax
		jl SkipPL
			inc [PLX]
			cmp [SaMode], 1
			jne SkipPL
				inc [PLX]
	SkipPL:
	push ax
	push dx
	push cx
	push bx
	mov ax, [PLX]
	mov [x], ax
	mov ax, [PLY]
	mov [y], ax
	mov dx, offset PLRR
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	pop bx
	pop cx
	pop dx
	pop ax
	ret
endp

proc CleanBullets
	push bx
	push cx
	push ax
	xor bx, bx
	mov cx, 80
	CleanHostileBullets:
		mov [HBulType + bx], 0
		; moves on to the next bullet if there is one
		inc bx
		inc bx
		loop CleanHostileBullets
	xor bx, bx
	mov cx, 20
	CleanFriendlyBullets:
		mov [FBulType + bx], 0
		; moves on to the next bullet if there is one
		inc bx
		inc bx
		loop CleanFriendlyBullets
	pop ax
	pop cx
	pop bx
	ret
endp

proc CleanEnemies
	push bx
	push cx
	push ax
	mov [En1HP], 0
	mov [En2HP], 0
	mov [En3HP], 0
	pop ax
	pop cx
	pop bx
	ret
endp
	
proc PreRoomReset
	mov [SaX], 5
	mov [SaMode], 0
	mov [SaLeftWall], 0
	mov [SaRightWall], 300
	mov [HP], 28
	mov [En1HP], 0
	mov [En3HP], 0
	mov [En2HP], 0
	mov [SaFire], 0
	mov [DJumpAmmo], 20
	mov [RocketAmmo], 10
	mov [FlameAmmo], 56
	mov [SniperAmmo], 15
	mov [SpyAmmo], 112
	mov [ceiling], 0
	call CleanBullets
	call CleanEnemies
	ret
endp PreRoomReset

proc DefaultRoom
	; repeats the actions that every room does
	; gets the right room BKG through DX
	inc [BKGPrintCheck]
	cmp [BKGPrintCheck], 1
	jb SkipResetDRBKG
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	mov [BKGPrintCheck], 0
	
	SkipResetDRBKG:
	in al, 60h
	call Move
	call Sentry
	call Enemies
	call FriendlyBullets
	call HostileBullets
	;call CopyScrBuffer
	cmp [HP], 1
	jnl SkipDeath
		dec [SaLives]
		jmp StageSelect
	SkipDeath:
	ret
endp

proc OpenFile
; Open file, gets correct offset from dx
	push ax
	push dx
	mov ah, 3Dh
	xor al, al
	int 21h
	jc openerror
		mov [filehandle], ax
		pop dx
		pop ax
		ret
	openerror:
		mov dx, offset ErrorMsg
		mov ah, 9h
		int 21h
		pop dx
		pop ax
		ret
endp OpenFile
proc ReadHeader
; Read BMP file header, 54 bytes
	mov ah, 3fh
	mov bx, [filehandle]
	mov cx, 54
	mov dx, offset Header
	int 21h
	ret
endp ReadHeader
proc ReadPalette
; Read BMP file color palette, 256 colors * 4 bytes (400h)
	mov ah, 3fh
	mov cx, 400h
	mov dx, offset Palette
	int 21h
	ret
endp ReadPalette
proc CopyPal
	; Copy the colors palette to the video memory
	; The number of the first color should be sent to port 3C8h
	; The palette is sent to port 3C9h
	mov si,offset Palette
	mov cx,256
	mov dx,3C8h
	mov al,0
	; Copy starting color to port 3C8h
	out dx,al
	; Copy palette itself to port 3C9h
	inc dx
	PalLoop:
		; Note: Colors in a BMP file are saved as BGR values rather than RGB.
		mov al,[si+2] ; Get red value.
		shr al,2 ; Max. is 255, but video palette maximal
		; value is 63. Therefore dividing by 4.
		out dx,al ; Send it.
		mov al,[si+1] ; Get green value.
		shr al,2
		out dx,al ; Send it.
		mov al,[si] ; Get blue value.
		shr al,2
		out dx,al ; Send it.
		add si,4 ; Point to next color.
		; (There is a null chr. after every color.)
	loop PalLoop
	ret
endp CopyPal
proc CopyBitmap
; BMP graphics are saved upside-down.
; Read the graphic line by line (24 lines in VGA format),
; displaying the lines from bottom to top.
	push ax
	push cx
	push di
	push si
	push es
	mov ax, 0A000h
	sub ax, 6400
	mov es, ax
	mov cx, [PicY]
PrintBMPLoop:
		push cx
		; di = cx*320, point to the correct screen line
		mov di,cx
		shl cx,6
		shl di,8
		add di,cx
	; Read one line
		mov ah,3fh
		mov cx, [PicY]
		mov dx,offset ScrLine
		int 21h
		; Copy one line into video memory
		mov cx, [PicX]
		mov si,offset ScrLine 
		push ax
		add di, [x]
		add di, [y]
	LineLoop:
			mov ah, [ds:si]
			cmp ah, 0
			je SkipPixel
				; mov [ScrBuffer + di], ah
				mov [es:di], ah
		SkipPixel:
			inc si
			inc di
		loop LineLoop;
		pop ax
		pop cx
		loop PrintBMPLoop
	pop es
	pop si
	pop di
	pop cx
	pop ax
	ret
endp CopyBitmap

proc CopyBKGBitmap
; BMP graphics are saved upside-down.
; Read the graphic line by line (24 lines in VGA format),
; displaying the lines from bottom to top.
	push ax
	push cx
	push di
	push si
	push es
	mov ax, 0A000h
	sub ax, 6400
	mov es, ax
	mov cx, 200
BKGPrintBMPLoop:
		push cx
		; di = cx*320, point to the correct screen line
		mov di,cx
		shl cx,6
		shl di,8
		add di,cx
	; Read one line
		mov ah,3fh
		mov cx, 320
		mov dx,offset ScrLine
		int 21h
		; Copy one line into video memory
		mov cx, 320
		mov si,offset ScrLine 
		push ax

	BKGLineLoop:
			mov ah, [ds:si]
			cmp ah, 255
			je SkipBKGPixel
				; mov [ScrBuffer + di], ah
				mov [es:di], ah
		SkipBKGPixel:
			inc si
			inc di
		loop BKGLineLoop;
		pop ax
		pop cx
		loop BKGPrintBMPLoop
	pop es
	pop si
	pop di
	pop cx
	pop ax
	ret
endp CopyBKGBitmap

proc CopyScrBuffer
	push ax
	push cx
	push di
	push si
	push es
	mov ax, 0A000h
	mov es, ax
	mov cx, 200
BufferPrintBMPLoop:
		push cx
		; di = cx*320, point to the correct screen line
		mov di,cx
		shl cx,6
		shl di,8
		add di,cx
	; Read one line
		; mov ah,3fh
		; mov cx, 320
		; mov dx,offset ScrLine
		; int 21h
		; Copy one line into video memory
		mov cx, 320
		; mov si,offset ScrBuffer
		push ax
		push bx
	BufferLineLoop:
			mov ax, 0A000h
			sub ax, 6400
			mov es, ax
			mov bh, [es:di]
			mov ax, 0A000h
			mov es, ax
			mov [es:di], bh
			inc si
			inc di
		loop BufferLineLoop;
		pop bx
		pop ax
		pop cx
		loop BufferPrintBMPLoop
	pop es
	pop si
	pop di
	pop cx
	pop ax
	ret
endp

proc CopyStageGround
	push ax
	push bx
	push cx
	push dx
	call OpenFile
	; Read one line
	mov ah,3fh
	mov cx, 320
	mov dx,offset StageGround
	int 21h
	; Copy one line into video memory
	call CloseFile
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp

proc CloseFile
	; Closes files after they get used so it would be able to open more files later
	push ax
	push bx
	mov ah,3Eh
	mov bx, [filehandle]
	int 21h
	pop bx
	pop ax
	ret
endp CloseFile 

proc Print0Tower
	inc [RoomTimer2]
	mov dx, offset BKG01
	cmp [RoomTimer2], 0
	je PrintTower
	mov dx, offset BKG02
	cmp [RoomTimer2], 3
	je PrintTower
	mov dx, offset BKG03
	cmp [RoomTimer2], 6
	je PrintTower
	mov dx, offset BKG04
	cmp [RoomTimer2], 9
	je PrintTower
	mov dx, offset BKG01
	cmp [RoomTimer2], 11
	jne Skip0RT2Reset
		mov [RoomTimer2], 1
		not [RoomTimer2]
		inc [RoomTimer2]
	Skip0RT2Reset:
	jmp SkipPrintTower
	PrintTower:
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBKGBitmap
		call CloseFile
	SkipPrintTower:
	ret
endp

proc SentryBuster
	; The AI for the Sentry Buster enemy. Runs in the direction of Saxton and explodes when he touches him, reducing 10 hp and sending him flying.
	push ax
	push bx
	push cx
	push di
	push si
	push es
	push dx
	mov ax, [EnY]
	mov [y], ax
	mov ax, [EnX]
	mov [x], ax
	mov [PicX], 21
	mov [PicY], 24
	sub ax, 21
	cmp [SaVisible], 0
	je SkipSkipSBVisibility
		jmp SkipSBAI
	SkipSkipSBVisibility:
	cmp ax, [Sax] ; What Direction ?
	jng SkipLeftDir
		jmp SBMoveLeft
	SkipLeftDir:
	add ax, 42
	cmp ax, [Sax]
	jna SkipSBExplode
	; Decides to explode or not
SBExplode:
		mov ax, [EnY]
		add ax, 8000
		cmp ax, [SaY]
		ja SkipSkipSB2
			mov [EnLastPose], offset SBRR1
			jmp SBSkipMoveLeft
		SkipSkipSB2:
		sub ax, 16000
		cmp ax, [SaY]
		jb SkipSkipSB3
			mov [EnLastPose], offset SBRR1
			jmp SBSkipMoveLeft
		SkipSkipSB3:
		inc [SaJCheck]
		mov [SaVerVel], 2880
		mov [EnHP], 0
		sub [HP], 12
		mov [EnLastPose], offset SBE
		jmp SBSkipMoveLeft
SkipSBExplode:
SBMoveRight:
		add [EnX], 3
		cmp [SBRCheck2], 0
		je SBRRunningStance2
	SBRRunningStance1:
			mov [EnLastPose], offset SBRR1
			jmp SBSkipCRS
	SBRRunningStance2:
			mov [EnLastPose], offset SBRR2
	SBSkipCRS:
		inc [SBRCheck]
		cmp [SBRCheck], 4
		jl SBSkipCRS2
		not [SBRCheck2]
		mov [SBRCheck], 0
	SBSkipCRS2:
		mov [picX], 21
		mov [PicY], 24
		jmp SBSkipMoveLeft
SBMoveLeft:
		sub [EnX], 3
		cmp [SBRCheck2], 0
		je SBLRunningStance2
	SBLRunningStance1:
			mov [EnLastPose], offset SBLR1
			jmp SBSkipCLRS
	SBLRunningStance2:
			mov [EnLastPose], offset SBLR2
	SBSkipCLRS:
		inc [SBRCheck]
		cmp [SBRCheck], 4
		jl SBSkipCLRS2
		not [SBRCheck2]
		mov [SBRCheck], 0
	SBSkipCLRS2:
		mov [picX], 21
		mov [PicY], 24
SBSkipMoveLeft:
	SkipSBAI:
	;Returns all of the updated stats to the general enemy var which would later go to the specific enemy var
	mov ax, [EnX]
	mov [x], ax
	mov ax, [EnY]
	mov [y], ax
	mov ax, [EnVerVel]
	mov [VerVel], ax
	mov ah, [EnJCheck]
	mov [JCheck], ah
	call NatMov
	;call Gravity
	;call BasicReset
	mov ax, [x]
	mov [EnX], ax
	mov ax, [y]
	mov [EnY], ax
	mov ax, [VerVel]
	mov [EnVerVel], ax
	mov ah, [JCheck]
	mov [EnJCheck], ah
	mov [EnWidth], 21
	mov [EnHeight], 7680
	mov dx, [EnLastPose]
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	pop dx
	pop es
	pop si
	pop di
	pop cx
	pop bx
	pop ax
	ret
endp SentryBuster

proc HSentry
	; ;checks  if Sentry is alive and updates his stats (in a tick) accordingly
	push ax
	push bx
	push cx
	push di
	push si
	push es
	push dx
	mov ax, [EnX]
	mov [x], ax
	mov ax, [EnY]
	mov [y], ax
	mov [PicX], 21
	mov [PicY], 24
	cmp [SaVisible], 0
	je SkipSkipHSeVisibility
		jmp SkipHSeAI
	SkipSkipHSeVisibility:
	cmp [BulEnTimer], 0
	jne SkipHSeShoot
	HSeShoot:
		inc [BulEnTimer]
		mov [AddBulType], 1
		mov ax, [EnX]
		mov [AddBulX], ax
		mov ax, [EnY]
		mov [AddBulY], ax
		mov [AddBulRight], 8
		mov bx, offset SebR
		cmp [EnLastPose], bx
		je SkipHSeBulDirChange
	LeftHSeShoot:
			sub [AddBulRight], 16
	SkipHSeBulDirChange:
		call AddHostileBul
		call AddHostileBul
SkipHSeShoot:
	cmp [BulEnTimer], 0
	je SkipHUpdateBulSeTimer
		inc [BulEnTimer]
		cmp [BulEnTimer], 25
		jl SkipHResetBulSeTimer
			mov [BulEnTimer], 0
		SkipHResetBulSeTimer:
SkipHUpdateBulSeTimer:
	SkipHSeAI:
	mov ax, [EnX]
	mov [x], ax
	mov ax, [EnY]
	mov [y], ax
	mov [EnWidth], 21
	mov [EnHeight], 6080
	mov dx, [EnLastPose]
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	pop dx
	pop es
	pop si
	pop di
	pop cx
	pop bx
	pop ax
	ret
endp HSentry

proc Yeti
	; The AI for the Sentry Buster enemy. Runs in the direction of Saxton and explodes when he touches him, reducing 10 hp and sending him flying.
	push ax
	push bx
	push cx
	push di
	push si
	push es
	push dx
	mov ax, [EnY]
	mov [y], ax
	mov ax, [EnX]
	mov [x], ax
	mov [PicX], 21
	mov [PicY], 24
	sub ax, 21
	cmp [SaVisible], 0
	je SkipSkipYetiVisibility
		jmp SkipYetiAI
	SkipSkipYetiVisibility:
	cmp ax, [Sax] ; What Direction ?
	jng SkipYLeftDir
		jmp SkipYHit
	SkipYLeftDir:
	add ax, 42
	cmp ax, [Sax]
	jna SkipYHit
	cmp [BulEnTimer], 25
	jng SkipYHit
	; Decides to explode or not
Yhit:
		mov ax, [EnY]
		add ax, 8000
		cmp ax, [SaY]
		ja SkipSkipYHit2
			jmp SkipYHit
		SkipSkipYHit2:
		sub ax, 16000
		cmp ax, [SaY]
		jb SkipSkipYHit3
			jmp SkipYHit
		SkipSkipYHit3:
		sub [HP], 1
SkipYHit:

inc [BulEnTimer]
cmp [BulEnTimer], 25
jng YSkipMoveLeft
	mov bx, offset YLS
	cmp [EnLastPose], bx
	je YMoveLeft
	mov bx, offset YLD
	cmp [EnLastPose], bx
	je YMoveLeft
		YMoveRight:
			add [EnX], 6
			mov [EnLastPose], offset YRD
			mov ax, [EnVerVel]
			cmp [EnX], ax
			jna SkipStopYetiRightDash
				mov [EnLastPose], offset YLS
				mov [EnX], ax
				mov [BulEnTimer], 0
			SkipStopYetiRightDash:
			jmp YSkipMoveLeft
		YMoveLeft:
			sub [EnX], 6
			mov [EnLastPose], offset YLD
			xor ax, ax
			mov al, [EnJCheck]
			cmp [EnX], ax
			jnb SkipStopYetiLeftDash
				mov [EnLastPose], offset YRS
				mov [EnX], ax
				mov [BulEnTimer], 0
			SkipStopYetiLeftDash:
	YSkipMoveLeft:
	SkipYetiAI:
	mov [EnWidth], 21
	mov [EnHeight], 7680
	mov dx, [EnLastPose]
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	pop dx
	pop es
	pop si
	pop di
	pop cx
	pop bx
	pop ax
	ret
endp Yeti

proc Bombonomicon
	; ;checks  if Sentry is alive and updates his stats (in a tick) accordingly
	push ax
	push bx
	push cx
	push di
	push si
	push es
	push dx
	mov ax, [EnX]
	mov [x], ax
	mov ax, [EnY]
	mov [y], ax
	mov [PicX], 21
	mov [PicY], 24
	cmp [SaVisible], 0
	je SkipSkipBomboVisibility
		jmp SkipBomboAI
	SkipSkipBomboVisibility:
	cmp [BulEnTimer], 0
	jne SkipBomboShoot
		inc [BulEnTimer]
		mov [AddBulType], 3
		mov ax, [EnX]
		mov [AddBulX], ax
		mov ax, [EnY]
		add ax, 1920
		mov [AddBulY], ax
		mov [AddBulRight], 0
		call AddHostileBul
		mov [AddBulType], 2
		mov [AddBulRight], 8
		call AddHostileBul
		sub [AddBulRight], 16
		call AddHostileBul
		mov [EnLastPose], offset Bombo
		add [EnY], 5120
SkipBomboShoot:
	cmp [BulEnTimer], 0
	jne SkipSkipUpdateBulBomboTimer
		jmp SkipUpdateBulBomboTimer
	SkipSkipUpdateBulBomboTimer:
		inc [BulEnTimer]
		cmp [BulEnTimer], 5
		jne SkipBomboStage10
			sub [EnY], 640
		SkipBomboStage10:
		cmp [BulEnTimer], 10
		jne SkipBomboStage1
			mov [EnLastPose], offset Bombo1
			sub [EnY], 640
		SkipBomboStage1:
		cmp [BulEnTimer], 15
		jne SkipBomboStage20
			sub [EnY], 640
		SkipBomboStage20:
		cmp [BulEnTimer], 20
		jne SkipBomboStage2
			mov [EnLastPose], offset Bombo2
			sub [EnY], 640
		SkipBomboStage2:
		cmp [BulEnTimer], 25
		jne SkipBomboStage30
			sub [EnY], 640
		SkipBomboStage30:
		cmp [BulEnTimer], 30
		jne SkipBomboStage3
			mov [EnLastPose], offset Bombo3
			sub [EnY], 640
		SkipBomboStage3:
		cmp [BulEnTimer], 35
		jne SkipBomboStage40
			sub [EnY], 640
		SkipBomboStage40:
		cmp [BulEnTimer], 40
		jne SkipResetBulBomboTimer
			mov [EnLastPose], offset Bombo4
			sub [EnY], 640
			mov [BulEnTimer], 0
		SkipResetBulBomboTimer:
SkipUpdateBulBomboTimer:
	SkipBomboAI:
	mov ax, [EnX]
	mov [x], ax
	mov ax, [EnY]
	mov [y], ax
	mov [EnWidth], 15
	mov [EnHeight], 5760
	mov dx, [EnLastPose]
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	pop dx
	pop es
	pop si
	pop di
	pop cx
	pop bx
	pop ax
	ret
endp Bombonomicon

proc S12ChangeFloor
; gets x through bx, y through ax
	mov cx, 10
	Skip12Erase1Loop:
		mov [StageGround + bx], al
		inc bx
		loop Skip12Erase1Loop
	inc [RoomTimer3]
	ret
endp

proc Spy9B
	push ax
	push bx
	push cx
	push di
	push si
	push es
	push dx
	mov [PicX], 21
	mov [PicY], 24
	inc [BulEnTimer]
	cmp [EnLeftWall], 1
	jne SkipSpy9BActive1Invis
		jmp Spy9BInvis
	SkipSpy9BActive1Invis:
	cmp [EnLeftWall], 3
	jne SkipSpy9BActive2Invis
		jmp Spy9BInvis
	SkipSpy9BActive2Invis:
	
	cmp [EnLeftWall], 2
	je SkipSpy9BActivate1Invis
	cmp [EnHP], 20
	ja SkipSpy9BActivate1Invis
		cmp [EnHP], 14
		jb SkipSpy9BActivate1Invis
			inc [EnLeftWall]
			mov [BulEn1Timer], 0 
	SkipSpy9BActivate1Invis:
	cmp [EnLeftWall], 4
	je SkipSpy9BActivate2Invis
	cmp [EnHP], 10
	ja SkipSpy9BActivate2Invis
		cmp [EnHP], 4
		jb SkipSpy9BActivate2Invis
			inc [EnLeftWall]
			mov [BulEn1Timer], 0 
	SkipSpy9BActivate2Invis:
	
	
	cmp [BulEnTimer], 26
	jne SkipSpy9BShoot
		mov [AddBulRight], 8
		mov bx, offset SpRS
		cmp [EnLastPose], bx
		je SkipSpy9BBulDirChange
		mov bx, offset SRS
		cmp [EnLastPose], bx
		je SkipSpy9BBulDirChange
			sub [AddBulRight], 16
		SkipSpy9BBulDirChange:
		mov [AddBulType], 1
		mov ax, [EnX]
		mov [AddBulX], ax
		mov ax, [EnY]
		mov [AddBulY], ax
		call AddHostileBul
		call AddHostileBul
		call AddHostileBul
		mov [BulEnTimer], 0
	SkipSpy9BShoot:
	
	
	mov ax, [EnX]
	mov [x], ax
	mov ax, [EnY]
	mov [y], ax
	mov dx, [EnLastPose]
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	jmp SkipSpy9BInvis
	; 298,
	; 11,
	; 170, 140
	Spy9BInvis:
		cmp [BulEnTimer], 3
		ja SkipSpy9BSemiInvis
			mov bx, offset SpLS
			cmp [EnLastPose], bx
			je SkipSpy9BSemiInvisDirChange
			mov bx, offset SLS
			cmp [EnLastPose], bx
			je SkipSpy9BSemiInvisDirChange
				mov [EnLastPose], offset SpRV
				jmp SkipSpy9BSemiInvisDirChangeR
			SkipSpy9BSemiInvisDirChange:
				mov [EnLastPose], offset SpLV
			SkipSpy9BSemiInvisDirChangeR:
			mov ax, [EnX]
			mov [x], ax
			mov ax, [EnY]
			mov [y], ax
			mov dx, [EnLastPose]
			call OpenFile
			call ReadHeader
			call ReadPalette
			call CopyBitmap
			call CloseFile
			jmp SkipSpy9BInvis
		SkipSpy9BSemiInvis:
		cmp [BulEnTimer], 100
		jb SkipSpy9BReturn
			inc [EnLeftWall]
			mov [BulEnTimer], 0
			jmp SkipSpy9BInvis
		SkipSpy9BReturn:
		cmp [EnLeftWall], 1
		jne SkipSpy9BFirstInvRet
			mov [EnX], 6
			mov [EnLastPose], offset SpRS
		SkipSpy9BFirstInvRet:
		cmp [EnLeftWall], 3
		jne SkipSpy9BSecondInvRet
			mov [EnX], 170
			mov [SaX], 140
			mov [SaLastPose], offset SLS
			mov [EnLastPose], offset SLS
		SkipSpy9BSecondInvRet:
		
	SkipSpy9BInvis:
	mov al, [EnHP]
	mov [DisBlockHP], al
	call BossHealthBar
	
	pop dx
	pop es
	pop si
	pop di
	pop cx
	pop bx
	pop ax
	ret
endp Spy9B

; proc Demo4B
	; push ax
	; push bx
	; push cx
	; push di
	; push si
	; push es
	; push dx
	; mov [PicX], 21
	; mov [PicY], 24
	; inc [BulEnTimer]
	; cmp [SaVisible], 0
	; je SkipSkipDemo4bVisibility
		; jmp SkipDemo4BAI
	; SkipSkipDemo4bVisibility:
	; cmp [JCheck], 0
	; jne SkipDemo4BShoot
	; mov ax, [SaX]
	; add ax, 50
	; cmp ax, 285
	; jng SkipDemo4BMaxRight
		; mov ax, 285
	; SkipDemo4BMaxRight:
	; mov [EnX], ax
	; cmp [BulEnTimer], 25
	; jne SkipDemo4BShoot
		; mov [AddBulRight], 6
		; mov bx, offset DeRS
		; cmp [EnLastPose], bx
		; je SkipDemo4BBulDirChange
			; sub [AddBulRight], 12
		; SkipDemo4BBulDirChange:
		; mov [AddBulType], 4
		; mov ax, [EnX]
		; mov [AddBulX], ax
		; mov ax, [EnY]
		; mov [AddBulY], ax
		; call AddHostileBul
		; mov [BulEnTimer], 0
		; inc [EnVerVel]
	; SkipDemo4BShoot:
	; cmp [EnVerVel], 8
	; jna SkipDemo4BStartDash
		; inc [EnJCheck]
		; mov [EnVerVel], 0
	; SkipDemo4BStartDash:
	; mov ax, [EnY]
	; mov [y], ax
	; mov ax, [EnX]
	; mov [x], ax
	; sub ax, 21
	; cmp ax, [Sax]
	; jng SkipDemo4BLeftDir
		; jmp SkipDemoSwordHit
	; SkipDemo4BLeftDir:
	; add ax, 42
	; cmp ax, [Sax]
	; jna SkipDemoSwordHit
	; cmp [EnJCheck], 0
	; je SkipDemoSwordHit
	;;Decides to explode or not ------------------------------------------------------------------------
	; DemoSwordHit:
		; mov ax, [EnY]
		; add ax, 8000
		; cmp ax, [SaY]
		; ja SkipSkipDemoHit2
			; jmp SkipDemoSwordHit
		; SkipSkipDemoHit2:
		; sub ax, 16000
		; cmp ax, [SaY]
		; jb SkipSkipDemoHit3
			; jmp SkipDemoSwordHit
		; SkipSkipDemoHit3:
		; sub [HP], 3
	; SkipDemoSwordHit:

	; cmp [EnJCheck], 1
	; jne SkipDemo4BMoveLeft
			; sub [EnX], 7
			; mov [EnLastPose], offset DeLD
			; xor ax, ax
			; mov al, [EnJCheck]
			; cmp [EnX], ax
			; jnb SkipDemo4BMoveLeft
				; mov [EnLastPose], offset DeRS
				; mov [EnX], ax
				; mov [BulEnTimer], 0
				; inc [EnJCheck]
	; SkipDemo4BMoveLeft:
	; cmp [EnJCheck], 2
	; jne SkipDemo4BMoveRight
			; add [EnX], 6
			; mov [EnLastPose], offset YLD
			; xor ax, ax
			; mov al, [EnLeftWall]
			; cmp [EnX], ax
			; jnb SkipDemo4BMoveLeft
				; mov [EnLastPose], offset YRS
				; mov [EnX], ax
				; mov [BulEnTimer], 0
				; mov [EnJCheck], 0
	; SkipDemo4BMoveRight:
	; SkipDemo4BAI:
	
	; mov ax, [EnX]
	; mov [x], ax
	; mov ax, [EnY]
	; mov [y], ax
	; mov dx, [EnLastPose]
	; call OpenFile
	; call ReadHeader
	; call ReadPalette
	; call CopyBitmap
	; call CloseFile
	
	; mov al, [EnHP]
	; mov [DisBlockHP], al
	; call BossHealthBar
	
	; pop dx
	; pop es
	; pop si
	; pop di
	; pop cx
	; pop bx
	; pop ax
	; ret
; endp Demo4B

proc FriendlyBullets
	; updates friendly bullet's position and checks if they hit. Type 0: no. Type 1: regular bullet. Type 2: Rocket. Type 3: Explosion. Type 4: Sticky
	push ax
	push dx
	push cx
	push bx
	xor bx, bx
	mov cx, 20
	FriendlyBulletsArr:
		mov ax, [FBulType + bx]
		cmp ax, 0
		jne SkipSkipFBul
			jmp SkipFBul
	SkipSkipFBul:
		cmp [FBulType + bx], 4
		jl SkipSkipHurtEn1
			jmp SkipBulHitEn3
		SkipSkipHurtEn1:
		mov ax, [FBulX + bx]
		cmp ax, 0
		jnl SkipSkipFBul1
			mov [FBulRight + bx], 0
			mov [FBulType + bx], 0
			jmp SkipFBul
	SkipSkipFBul1:
		cmp ax, 305
		jng SkipSkipFBul2
			mov [FBulRight + bx], 0
			mov [FBulType + bx], 0
			jmp SkipFBul
	SkipSkipFBul2:
		mov ax, [FBulX + bx] ; Useless
		mov [x], ax
		mov ax, [FBulY + bx]
		mov [y], ax
		mov [PicX], 21
		mov [PicY], 24
			cmp [En1HP], 0
			jg SpecSkipBulHitEn1
				jmp SkipBulHitEn1
			SpecSkipBulHitEn1:
			mov ax, [FBulX + bx]
			sub ax, [En1Width] ; En1 Width dependent
			cmp ax, [En1x] ; What Direction ?
			jng SkipSkipBulHitEn1
				jmp SkipBulHitEn1
		SkipSkipBulHitEn1:
			add ax, [En1Width]
			add ax, 5 ; bullet size dependent (21 + bul)
			cmp ax, [En1x]
			jna SkipBulHitEn1
		BulHitEn1:
				mov ax, [FBulY + bx]
				add ax, 8320 ; En1 Height dependent
				sub ax, [En1Height]
				cmp ax, [En1Y]
				ja SkipSkipBulHitEn12
					jmp SkipBulHitEn1
				SkipSkipBulHitEn12:
				add ax, [En1Height] ; En1 Height dependent
				sub ax, 12480
				cmp ax, [En1Y]
				jb SkipSkipBulHitEn13
					jmp SkipBulHitEn1 
				SkipSkipBulHitEn13:
				sub [En1HP], 1
				cmp [FBulType + bx], 3
				jne SkipFbulExEn1
					sub [En1HP], 2
					add [En1VerVel], 2560
					inc [En1JCheck]
				SkipFbulExEn1:
				mov [FBulRight + bx], 0
				cmp [FBulType + bx], 2
				je SkipSkipRktHurtEn1
				mov [FBulType + bx], 0
				jmp SkipBulHitEn3
				SkipSkipRktHurtEn1:
					mov [FBulType + bx], 5
					cmp [En1HP], 0
					jg SkipBulHitEn1
					mov [FBulType + bx], 0
					jmp SkipBulHitEn3
	SkipBulHitEn1:
			cmp [En2HP], 0
			jg SpecSkipBulHitEn2
				jmp SkipBulHitEn2
			SpecSkipBulHitEn2:
			mov ax, [FBulX + bx]
			sub ax, [En2Width]
			cmp ax, [En2X] ; What Direction ?
			jng SkipSkipBulHitEn2
				jmp SkipBulHitEn2
		SkipSkipBulHitEn2:
			add ax, [En2Width]
			add ax, 5 ; bullet size dependent (21 + bul)
			cmp ax, [En2X]
			jna SkipBulHitEn2
		BulHitEn2:
				mov ax, [FBulY + bx]
				add ax, 4800
				cmp ax, [En2Y]
				ja SkipSkipBulHitEn22
					jmp SkipBulHitEn2
			SkipSkipBulHitEn22:
				sub ax, 1920
				sub ax, [En2Height]
				cmp ax, [En2Y]
				jb SkipSkipBulHitEn23
					jmp SkipBulHitEn2 
				SkipSkipBulHitEn23:
				sub [En2HP], 1
				cmp [FBulType + bx], 3
				jne SkipFbulExEn2
					sub [En2HP], 2
					add [En2VerVel], 2560
					inc [En2JCheck]
				SkipFbulExEn2:
				mov [FBulRight + bx], 0
				cmp [FBulType + bx], 2
				je SkipSkipRktHurtEn2
				mov [FBulType + bx], 0
				jmp SkipBulHitEn3
				SkipSkipRktHurtEn2:
					mov [FBulType + bx], 5
					cmp [En2HP], 0
					jg SkipBulHitEn2
					mov [FBulType + bx], 0
					jmp SkipBulHitEn3
	SkipBulHitEn2:
			cmp [En3HP], 0
			jg SpecSkipBulHitEn3
				jmp SkipBulHitEn3
			SpecSkipBulHitEn3:
			mov ax, [FBulX + bx]
			sub ax, [En3Width]
			cmp ax, [En3X] ; What Direction ?
			jng SkipSkipBulHitEn3
				jmp SkipBulHitEn3
		SkipSkipBulHitEn3:
			add ax, [En3Width]
			add ax, 5 ; bullet size dependent (21 + bul)
			cmp ax, [En3X]
			jna SkipBulHitEn3
		BulHitEn3:
				mov ax, [FBulY + bx]
				add ax, 4800
				cmp ax, [En3Y]
				ja SkipSkipBulHitEn32
					jmp SkipBulHitEn3
			SkipSkipBulHitEn32:
				sub ax, 1920
				sub ax, [En3Height]
				cmp ax, [En3Y]
				jb SkipSkipBulHitEn33
					jmp SkipBulHitEn3 
				SkipSkipBulHitEn33:
				sub [En3HP], 1
				cmp [FBulType + bx], 3
				jne SkipFbulExEn3
					sub [En3HP], 2
					add [En3VerVel], 2560
					inc [En3JCheck]
				SkipFbulExEn3:
				mov [FBulRight + bx], 0
				cmp [FBulType + bx], 2
				je SkipSkipRktHurtEn3
				mov [FBulType + bx], 0
				jmp SkipBulHitEn3
				SkipSkipRktHurtEn3:
					mov [FBulType + bx], 5
					cmp [En3HP], 0
					jg SkipBulHitEn3
					mov [FBulType + bx], 0
	SkipBulHitEn3:
		cmp [FBulType + bx], 3
		jne SkipFDisperseExplosion
			mov [FBulType + bx], 0
		SkipFDisperseExplosion:
		; updates bullet stats and sends them to the general var to print the bullet
		mov ax, [FBulRight + bx]
		add [FBulX + bx], ax
		mov ax, [FBulX + bx]
		mov [x], ax
		mov ax, [FBulY + bx]
		mov [Y], ax
		mov dx, offset BulH
		cmp [FBulType + bx], 2
		jne SkipFbulChangeRkt
			mov dx, offset RktR
			cmp [FBulRight + bx], 0
			jg SkipFbulRktSide
				mov dx, offset RktL
			SkipFbulRktSide:
		SkipFbulChangeRkt:
		cmp [FBulType + bx], 3
		jne SkipFbulChangeEx
			mov dx, offset SBE
			mov [FBulType + bx], 0
		SkipFbulChangeEx:
		cmp [FBulType + bx], 5
		jne SkipFbulChangeEx1
			mov dx, offset SBE
			mov [FBulType + bx], 3
		SkipFbulChangeEx1:
		push ax
		push dx
		push cx
		push bx
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
		pop bx
		pop cx
		pop dx
		pop ax
SkipFBul:
	; moves on to the next bullet if there is one
	inc bx
	inc bx
	dec cx
	jz FinishFBul
	jmp FriendlyBulletsArr
FinishFBul:
	pop bx
	pop cx
	pop dx
	pop ax
	ret
endp FriendlyBullets

proc HostileBullets
; same as Friendly Bullets but for the hostile bullets
	
	; updates friendly bullet's position and checks if they hit.
	push ax
	push dx
	push cx
	push bx
	xor bx, bx
	mov cx, 80
	HostileBulletsArr:
		mov ax, [HBulType + bx]
		cmp ax, 0
		jne SkipSkipHBul
			jmp SkipHBul
	SkipSkipHBul:
		; cmp [HBulType + bx], 4
		; jl SkipSkipHurtSa
			; jmp SkipBulHitSa
		; SkipSkipHurtSa:
		mov ax, [HBulX + bx]
		cmp ax, 0
		jnl SkipSkipHBul1
			mov [HBulRight + bx], 0
			mov [HBulType + bx], 0
			jmp SkipHBul
	SkipSkipHBul1:
		cmp ax, 305
		jng SkipSkipHBul2
			mov [HBulRight + bx], 0
			mov [HBulType + bx], 0
			jmp SkipHBul
	SkipSkipHBul2:
		mov ax, [HBulX + bx] ; Useless
		mov [x], ax
		mov ax, [HBulY + bx]
		mov [y], ax
		mov [PicX], 21
		mov [PicY], 24
			cmp [HP], 0
			jg SkipSkipBulHitSa4
				jmp SkipBulHitSa
			SkipSkipBulHitSa4:
			mov ax, [HBulX + bx]
			sub ax, 21 ; En1 Width dependent
			cmp ax, [Sax] ; What Direction ?
			jng SkipSkipBulHitSa
				jmp SkipBulHitSa
		SkipSkipBulHitSa:
			add ax, 26 ; En1 Width dependent
			cmp ax, [Sax]
			ja SkipSkipBulHitSa5
				jmp SkipBulHitSa
			SkipSkipBulHitSa5:
		BulHitSa:
				mov ax, [HBulY + bx]
				add ax, 4800 ; En1 Height dependent
				cmp ax, [SaY]
				ja SkipSkipBulHitSa2
					
					jmp SkipBulHitSa
			SkipSkipBulHitSa2:
				sub ax, 9600 ; En1 Height dependent
				cmp ax, [SaY]
				jb SkipSkipBulHitSa3
					jmp SkipBulHitSa 
				SkipSkipBulHitSa3:
				cmp [SaReflected], 1
				jl SkipSaReflect
					mov ax, [HBulRight + bx]
					not ax
					inc ax
					mov [AddBulRight], ax
					mov ax, [HBulType + bx]
					mov [AddBulType], ax
					mov ax, [HBulY + bx]
					mov [AddBulY], ax
					mov ax, [HBulX + bx]
					mov [AddBulX], ax
					call AddFriendlyBul
					mov [HBulType + bx], 0
					mov [HBulRight + bx], 0
					mov [HBulY + bx], 0
					jmp SkipBulHitSa
				SkipSaReflect:
				sub [HP], 1
				cmp [HBulType + bx], 3
				jne SkipFbulExSa
					sub [HP], 2
					add [SaVerVel], 2560
					inc [SaJCheck]
					mov [HBulType + bx], 5
				SkipFbulExSa:
				mov [HBulRight + bx], 0
				cmp [HBulType + bx], 2
				je SkipSkipRktHurtSa
				cmp [HBulType + bx], 4
				je SkipSkipRktHurtSa
				mov [HBulType + bx], 0
				jmp SkipBulHitSa
				SkipSkipRktHurtSa:
					mov [HBulType + bx], 5
					cmp [HP], 0
					jg SkipBulHitSa
					mov [HBulType + bx], 0
	SkipBulHitSa:
		; updates bullet stats and sends them to the general var to print the bullet
		mov ax, [HBulRight + bx]
		add [HBulX + bx], ax
		mov ax, [HBulX + bx]
		mov [x], ax
		mov ax, [HBulY + bx]
		mov [Y], ax
		mov dx, offset BulH
		cmp [HBulType + bx], 2
		jne SkipHbulChangeRkt
			mov dx, offset RktR
			cmp [HBulRight + bx], 0
			jg SkipHbulRktSide
				mov dx, offset RktL
			SkipHbulRktSide:
		SkipHbulChangeRkt:
		cmp [HBulType + bx], 4
		jne SkipHbulChangeStc
			mov dx, offset HStick
		SkipHbulChangeStc:
		cmp [HBulType + bx], 3
		jne SkipHbulChangeEx
			mov dx, offset SBE
			mov [HBulType + bx], 0
		SkipHbulChangeEx:
		cmp [HBulType + bx], 5
		jne SkipHbulChangeEx1
			mov [HBulType + bx], 3
			mov dx, offset SBE
		SkipHbulChangeEx1:
		push ax
		push dx
		push cx
		push bx
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
		pop bx
		pop cx
		pop dx
		pop ax
SkipHBul:
	; moves on to the next bullet if there is one
	inc bx
	inc bx
	dec cx
	jz FinishHBul
	jmp HostileBulletsArr
FinishHBul:
	pop bx
	pop cx
	pop dx
	pop ax
	ret
endp HostileBullets

proc AddFriendlyBul
	;adds a friendly bullet if there's space for one
	push ax
	push bx
	push cx
	mov cx, 20
	xor bx, bx
	CheckIfEmpty:
		cmp [FBulType + bx], 0
		jne SkipAddFriendly
			mov ax, [AddBulX]
			mov [FBulX + bx], ax
			mov ax, [AddBulY]
			mov [FBulY + bx], ax
			mov ax, [AddBulRight]
			mov [FBulRight + bx], ax
			mov ax, [AddBulType]
			mov [FBulType + bx], ax
			jmp FriendlyBulAdded
		SkipAddFriendly:
		inc bx
		inc bx
	loop CheckIfEmpty
	FriendlyBulAdded:
	pop cx
	pop bx
	pop ax
	ret
endp AddFriendlyBul

proc AddHostileBul
	;adds a hostile bullet if there's space for one
	push ax
	push bx
	push cx
	mov cx, 80
	xor bx, bx
	HCheckIfEmpty:
		cmp [HBulType + bx], 0
		jne SkipAddHostile
			mov ax, [AddBulX]
			mov [HBulX + bx], ax
			mov ax, [AddBulY]
			mov [HBulY + bx], ax
			mov ax, [AddBulRight]
			mov [HBulRight + bx], ax
			mov ax, [AddBulType]
			mov [HBulType + bx], ax
			jmp HostileBulAdded
		SkipAddHostile:
		inc bx
		inc bx
	loop HCheckIfEmpty
	HostileBulAdded:
	pop cx
	pop bx
	pop ax
	ret
endp AddHostileBul

proc Enemies
	; goes over all of the enemies' actions.
	push ax
	push bx
	push cx
	push di
	push si
	push es
	push dx
	;checks  if Enemy1 is alive and updates his stats (in a tick) accordingly
	cmp [En1HP], 0
	jg SkipSkipEnemy1
		jmp SkipEnemy1
	SkipSkipEnemy1:
		mov ax, [En1X]
		mov [EnX], ax
		mov ax, [En1Y]
		mov [EnY], ax
		mov ax, [En1VerVel]
		mov [EnVerVel], ax
		mov ah, [En1JCheck]
		mov [EnJCheck], ah
		mov ah, [En1HP]
		mov [EnHP], ah
		mov ax, [En1LastPose]
		mov [EnLastPose], ax
		mov ah, [BulEn1Timer]
		mov [BulEnTimer], ah
		cmp [En1Type], 1
		jne SkipEn11
			call SentryBuster
		SkipEn11:
		cmp [En1Type], 2
		jne SkipEn12
			call HSentry
		SkipEn12:
		cmp [En1Type], 3
		jne SkipEn13
			call Yeti
		SkipEn13:
		cmp [En1Type], 4
		jne SkipEn14
			call Bombonomicon
		SkipEn14:
		cmp [En1Type], 29
		jne SkipEn129
			call Spy9B
		SkipEn129:
		mov ax, [EnX]
		mov [En1X], ax
		mov ax, [EnY]
		mov [En1Y], ax
		mov ax, [EnVerVel]
		mov [En1VerVel], ax
		mov ax, [EnWidth]
		mov [En1Width], ax
		mov ax, [EnHeight]
		mov [En1Height], ax
		mov ah, [EnJCheck]
		mov [En1JCheck], ah
		mov ah, [EnHP]
		mov [En1HP], ah
		mov ax, [EnLastPose]
		mov [En1LastPose], ax
		mov ah, [BulEnTimer]
		mov [BulEn1Timer], ah
		
SkipEnemy1:
	;checks  if Enemy2 is alive and updates his stats (in a tick) accordingly
	cmp [En2HP], 0
	jg SkipSkipEnemy2
		jmp SkipEnemy2
	SkipSkipEnemy2:
		mov ax, [En2X]
		mov [EnX], ax
		mov ax, [En2Y]
		mov [EnY], ax
		mov ax, [En2VerVel]
		mov [EnVerVel], ax
		mov ah, [En2JCheck]
		mov [EnJCheck], ah
		mov ah, [En2HP]
		mov [EnHP], ah
		mov ax, [En2LastPose]
		mov [EnLastPose], ax
		mov ah, [BulEn2Timer]
		mov [BulEnTimer], ah
		cmp [En2Type], 1
		jne SkipEn21
			call SentryBuster
		SkipEn21:
		cmp [En2Type], 2
		jne SkipEn22
			call HSentry
		SkipEn22:
		cmp [En2Type], 3
		jne SkipEn23
			call Yeti
		SkipEn23:
		cmp [En2Type], 4
		jne SkipEn24
			call Bombonomicon
		SkipEn24:
		mov ax, [EnX]
		mov [En2X], ax
		mov ax, [EnY]
		mov [En2Y], ax
		mov ax, [EnVerVel]
		mov [En2VerVel], ax
		mov ax, [EnWidth]
		mov [En2Width], ax
		mov ax, [EnHeight]
		mov [En2Height], ax
		mov ah, [EnJCheck]
		mov [En2JCheck], ah
		mov ah, [EnHP]
		mov [En2HP], ah
		mov ax, [EnLastPose]
		mov [En2LastPose], ax
		mov ah, [BulEnTimer]
		mov [BulEn2Timer], ah
SkipEnemy2:
;checks  if Enemy3 is alive and updates his stats (in a tick) accordingly
	cmp [En3HP], 0
	jg SkipSkipEnemy3
		jmp SkipEnemy3
	SkipSkipEnemy3:
		mov ax, [En3X]
		mov [EnX], ax
		mov ax, [En3Y]
		mov [EnY], ax
		mov ax, [En3VerVel]
		mov [EnVerVel], ax
		mov ah, [En3JCheck]
		mov [EnJCheck], ah
		mov ah, [En3HP]
		mov [EnHP], ah
		mov ax, [En3LastPose]
		mov [EnLastPose], ax
		mov ah, [BulEn3Timer]
		mov [BulEnTimer], ah
		cmp [En3Type], 1
		jne SkipEn31
			call SentryBuster
		SkipEn31:
		cmp [En3Type], 2
		jne SkipEn32
			call HSentry
		SkipEn32:
		cmp [En3Type], 3
		jne SkipEn33
			call Yeti
		SkipEn33:
		cmp [En1Type], 4
		jne SkipEn34
			call Bombonomicon
		SkipEn34:
		mov ax, [EnX]
		mov [En3X], ax
		mov ax, [EnY]
		mov [En3Y], ax
		mov ax, [EnVerVel]
		mov [En3VerVel], ax
		mov ax, [EnWidth]
		mov [En3Width], ax
		mov ax, [EnHeight]
		mov [En3Height], ax
		mov ah, [EnJCheck]
		mov [En3JCheck], ah
		mov ah, [EnHP]
		mov [En3HP], ah
		mov ax, [EnLastPose]
		mov [En3LastPose], ax
		mov ah, [BulEnTimer]
		mov [BulEn3Timer], ah
SkipEnemy3:
	pop dx
	pop es
	pop si
	pop di
	pop cx
	pop bx
	pop ax
	ret
endp Enemies

proc Sentry
	; ;checks  if Sentry is alive and updates his stats (in a tick) accordingly
	push ax
	push bx
	push cx
	push di
	push si
	push es
	push dx
	cmp [SeHP], 0
	jne SkipSkipSentry
		jmp SkipSentry
SkipSkipSentry:
	mov ax, [SeX]
	mov [x], ax
	mov ax, [SeY]
	mov [y], ax
	mov [PicX], 21
	mov [PicY], 24
	cmp [BulSeTimer], 0
	jne SkipSeShoot
	SeShoot:
		inc [BulSeTimer]
		mov ax, [SeX]
		mov [AddBulX], ax
		mov ax, [SeY]
		mov [AddBulY], ax
		mov [AddBulRight], 8
		mov bx, offset SeR
		cmp [SeLastPose], bx
		je SkipseBulDirChange
	LeftSeShoot:
			sub [AddBulRight], 16
	SkipSeBulDirChange:
		call AddFriendlyBul
SkipSeShoot:
	cmp [BulSeTimer], 0
	je SkipUpdateBulSeTimer
		inc [BulSeTimer]
		cmp [BulSeTimer], 15
		jl SkipResetBulSeTimer
			mov [BulSeTimer], 0
		SkipResetBulSeTimer:
SkipUpdateBulSeTimer:
	mov bx, [ground]
	cmp [SeY], bx
	jb SeFall
	jmp SkipSeFall
	SeFall:
		inc [SeJCheck]
	SkipSeFall:
	mov ax, [SeX]
	mov [x], ax
	mov ax, [SeY]
	mov [y], ax
	mov ax, [SeVerVel]
	mov [VerVel], ax
	mov ah, [SeJCheck]
	mov [JCheck], ah
	call NatMov
	; call Gravity
	; call BasicReset
	mov ax, [x]
	mov [SeX], ax
	mov ax, [y]
	mov [SeY], ax
	mov ax, [VerVel]
	mov [SeVerVel], ax
	mov ah, [JCheck]
	mov [SeJCheck], ah
	mov dx, [SeLastPose]
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	SkipSentry:
	pop dx
	pop es
	pop si
	pop di
	pop cx
	pop bx
	pop ax
	ret
endp Sentry

proc Move
	; Decides what Saxton would do in that tick according to the user's input
	push ax
	push bx
	push cx
	push di
	push si
	push es
	push dx
	cmp al, 0
	jne SkipSkipMove
		jmp SkipMove
SkipSkipMove:
	push ax
	mov ax, [SaX]
	mov [x], ax
	mov ax, [SaY]
	mov [y], ax
	pop ax
	mov [PicX], 21
	mov [PicY], 24
	mov [SaReflected], 0
	cmp al, 11 ;Is it the 1 key ?
	je SaxtonMode
	jmp SkipSaxtonMode
SaxtonMode:
		
		mov [SaMode], 0
		push ax
		mov dx, offset BKGSS
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CloseFile
		pop ax
SkipSaxtonMode:
	cmp al, 2 ;Is it the 1 key ?
	je ScoutMode
	jmp SkipScoutMode
ScoutMode:
		mov dl, [StartStageCheck]
		and dl, 1b
		cmp dl, 1b
		jne SkipScoutMode
		mov [SaMode], 1
		push ax
		mov dx, offset BKGSS1
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CloseFile
		pop ax
SkipScoutMode:
	cmp al, 3 ;Is it the 2 key ?
	je SoldierMode
	jmp SkipSoldierMode
SoldierMode:
		mov dl, [StartStageCheck]
		and dl, 10b
		cmp dl, 10b
		jne SkipSoldierMode
		mov [SaMode], 2
		push ax
		mov dx, offset BKGSS2
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CloseFile
		pop ax
		
SkipSoldierMode:
	cmp al, 4 ;Is it the 3 key ?
	je PyroMode
	jmp SkipPyroMode
PyroMode:
		mov dl, [StartStageCheck]
		and dl, 100b
		cmp dl, 100b
		jne SkipPyroMode
		mov [SaMode], 3
		push ax
		mov dx, offset BKGSS3
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CloseFile
		pop ax
SkipPyroMode:
	cmp al, 5 ;Is it the 4 key ?
	je DemomanMode
	jmp SkipDemomanMode
DemomanMode:
		
		mov [SaMode], 4
		push ax
		mov dx, offset BKGSS4
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CloseFile
		pop ax
SkipDemomanMode:
	cmp al, 6 ;Is it the 5 key ?
	je HeavyMode
	jmp SkipHeavyMode
HeavyMode:
		mov [HP], 28
		mov [SaMode], 5
		push ax
		mov dx, offset BKGSS5
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CloseFile
		pop ax
		
SkipHeavyMode:
	cmp al, 7 ;Is it the 6 key ?
	je PlaceSentry
	jmp SkipPlaceSentry
PlaceSentry:
		
		mov [SaMode], 6
		push ax
		mov dx, offset BKGSS6
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CloseFile
		pop ax
		
		;mov [SeHP], 10
		;mov ax, [SaX]
		;add ax, 21
		;mov [SeX], ax
		;mov ax, [SaY]
		;mov [SeY], ax
		;mov ax, [SaVerVel]
		;mov [SeVerVel], ax
		;mov bx, offset SRS
		;cmp [SaLastPose], bx
		;je RightSentry
		;mov bx, offset SRR1
		;cmp [SaLastPose], bx
		;je RightSentry
		;mov bx, offset SRR2
		;cmp [SaLastPose], bx
		;je RightSentry
		;mov bx, offset SRSl
		;cmp [SaLastPose], bx
		;je RightSentry
		;jmp LeftSentry
	;RightSentry:
			;mov [SeLastPose], offset SeR

			;jmp SkipPlaceSentry
	;LeftSentry:
			;mov [SeLastPose], offset SeL
			;sub [Sex], 42
SkipPlaceSentry:
	cmp al, 9 ;Is it the 8 key ?
	je SniperMode
	jmp SkipSniperMode
SniperMode:
		mov dl, [StartStageCheck]
		and dl, 1000000b
		cmp dl, 1000000b
		jne SkipSniperMode
		mov [SaMode], 8
		push ax
		mov dx, offset BKGSS8
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CloseFile
		pop ax
SkipSniperMode:
	cmp al, 10 ;Is it the 9 key ?
	je SpyMode
	jmp SkipSpyMode
SpyMode:
		mov dl, [StartStageCheck]
		and dl, 10000000b
		cmp dl, 10000000b
		jne SkipSpyMode
		mov [SaMode], 9
		push ax
		mov dx, offset BKGSS9
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyPal
		call CloseFile
		pop ax
SkipSpyMode:
	cmp [SaMode], 1
	jne SkipDJumpAmmo
		push ax
		push dx
		mov dl, 255
		mov al, [DJumpAmmo]
		call WeaponHealthBar
		pop dx
		pop ax
SkipDJumpAmmo:
	cmp [SaMode], 2
	jne SkipRktAmmo
		push ax
		push dx
		mov dl, 255
		mov al, [RocketAmmo]
		call WeaponHealthBar
		pop dx
		pop ax
SkipRktAmmo:
	cmp [SaMode], 3
	jne SkipFlmAmmo
		push ax
		push dx
		mov dl, 255
		mov al, [FlameAmmo]
		add al, 1
		shr al, 1
		call WeaponHealthBar
		pop dx
		pop ax
SkipFlmAmmo:
cmp [SaMode], 8
	jne SkipSnpAmmo
		push ax
		push dx
		mov dl, 255
		mov al, [SniperAmmo]
		call WeaponHealthBar
		pop dx
		pop ax
SkipSnpAmmo:
cmp [SaMode], 9
	jne SkipSpyAmmo
		push ax
		push dx
		mov dl, 255
		mov al, [SpyAmmo]
		add al, 1
		shr al, 2
		call WeaponHealthBar
		pop dx
		pop ax
SkipSpyAmmo:
	push ax
	cmp [SaFire], 0
	jne SkipSkipSaBurn
		jmp SkipSaBurn
	SkipSkipSaBurn:
		inc [SaFire]
		cmp [SaFire], 200
		jna Skip200Burn
			dec [HP]
			mov [SaFire], 0
			jmp SkipSaBurn
		Skip200Burn:
		cmp [SaFire], 170
		jne Skip170Burn
			dec [HP]
			jmp SkipSaBurn
		Skip170Burn:
		cmp [SaFire], 140
		jne Skip140Burn
			dec [HP]
			jmp SkipSaBurn
		Skip140Burn:
		cmp [SaFire], 110
		jne Skip110Burn
			dec [HP]
			jmp SkipSaBurn
		Skip110Burn:
		cmp [SaFire], 80
		jne Skip80Burn
			dec [HP]
			jmp SkipSaBurn
		Skip80Burn:
		cmp [SaFire], 50
		jne Skip50Burn
			dec [HP]
			jmp SkipSaBurn
		Skip50Burn:
		cmp [SaFire], 20
		jne Skip20Burn
			dec [HP]
			jmp SkipSaBurn
		Skip20Burn:	
		cmp [SaFire], 2
		jne Skip2Burn
			dec [HP]
		Skip2Burn:
		mov ax, [SaX]
		mov [x], ax
		mov ax, [SaY]
		mov [y], ax
		mov dx, offset Fire
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
SkipSaBurn:
	pop ax
	cmp [SaMode], 9
	je SkipResetVisibilty1
		mov [SaVisible], 0
	SkipResetVisibilty1:
	cmp [SpyAmmo], 0
	jne SkipResetVisibilty2
		mov [SaVisible], 0
	SkipResetVisibilty2:
	cmp [SaMode], 9
	jne SkipDecVisibilty
		cmp [SaVisible], 0
		je SkipDecVisibilty
			dec [SpyAmmo]
	SkipDecVisibilty:
	cmp [SCheck], 0
	jna SkipSkipFirstSlide
		jmp SkipFirstSlide
	SkipSkipFirstSlide:
	mov bx, [ground]
	cmp [SaY], bx
	jnb SkipSSPass
		jmp SkipSlide
SkipSSPass:
	cmp al, 50h ;Is it the Down key ?
	je Slide
	jmp SkipSlide
Slide:
		cmp [SaMode], 2
		jne SkipRktJump
			cmp [RocketAmmo], 0
			jg SkipSkipSlide 
				jmp SkipSlide
			SkipSkipSlide:
			inc [SaJCheck]
			mov [SaVerVel], 3520
			sub [HP], 2
			dec [RocketAmmo]
			mov dx, offset SBE
			push ax
			mov ax, [SaX]
			mov [x], ax
			mov ax, [SaY]
			add ax, 1600
			mov [y], ax
			call OpenFile
			call ReadHeader
			call ReadPalette
			call CopyBitmap
			call CloseFile
			pop ax
			jmp SkipSlide
		SkipRktJump:
		cmp [SaMode], 8
		jne SkipJarate
			cmp [SniperAmmo], 0
			jg SkipSkipSlide2 
				jmp SkipSlide
			SkipSkipSlide2:
			sub [SniperAmmo], 2
			mov [SaFire], 0
			jmp SkipSlide
		SkipJarate:
		cmp [SCheck], 0
		jne SkipFirstSlide
	FirstSlide:
			mov [SRight], 6
			mov bx, offset SRS
			cmp [SaLastPose], bx
			je RightSlide
			mov bx, offset SRR1
			cmp [SaLastPose], bx
			je RightSlide
			mov bx, offset SRR2
			cmp [SaLastPose], bx
			je RightSlide
			jmp LeftSlide
		RightSlide:
				mov [SaLastPose], offset SRSl
				mov [picX], 21
				mov [PicY], 24
				jmp SkipFirstSlide
		LeftSlide:
				mov [SaLastPose], offset SLSl
				mov [picX], 21
				mov [PicY], 24
				sub [SRight], 12
	SkipFirstSlide:
		inc [SCheck]
		mov bx, [SRight]
		add [SaX], bx
		cmp [SCheck], 10
		jnl SkipSMLPass
			jmp SkipStopLeftRun
	SkipSMLPass:
		mov [SCheck], 0
			mov [SaLastPose], offset SRS
		cmp [SRight], 0
		jg SkipSlide
			mov [SaLastPose], offset SLS
		mov [picX], 21
		mov [PicY], 24
SkipSlide:
	cmp [SaVisible], 0
	je SkipSkipInvisibleShoot
		jmp SkipShoot
	SkipSkipInvisibleShoot:
	cmp [SaMode], 3
	je SkipSkipBulSaTim
	cmp [BulSaTimer], 0
	je SkipSkipShoot
		jmp SkipShoot
	SkipSkipShoot:
	SkipSkipBulSaTim:
	cmp al, 39h ;Is it the Space key ?
	je Shoot
	jmp SkipShoot
Shoot:
		inc [BulSaTimer]
		mov [AddBulType], 1
		mov [AddBulRight], 8
		cmp [SaMode], 1
		jne SkipSaChangeToDJump
			inc [AddBulType]
			cmp [DJumpAmmo], 0
			jg SkipSkipShoot1
				jmp SkipShoot
			SkipSkipShoot1:
			dec [DJumpAmmo]
			mov [SaVerVel], 2560
			jmp SkipShoot
		SkipSaChangeToDJump:
		cmp [SaMode], 2
		jne SkipSaChangeToRkt
			inc [AddBulType]
			cmp [RocketAmmo], 0
			jg SkipRktSkipShoot
				jmp SkipShoot
			SkipRktSkipShoot:
			dec [RocketAmmo]
			mov [AddBulRight], 6
		SkipSaChangeToRkt:
		cmp [SaMode], 3
		jne SkipSaChangeToAir
			cmp [FlameAmmo], 0
			jle SkipShoot 
			inc [SaReflected]
			dec [FlameAmmo]
			jmp SkipShoot
		SkipSaChangeToAir:
		cmp [SaMode], 8
		jne SkipSaChangeToSnip
			cmp [SniperAmmo], 0
			jle SkipShoot 
			dec [SniperAmmo]
			mov [AddBulRight], 10
		SkipSaChangeToSnip:
		cmp [SaMode], 9
		jne SkipSaChangeToSpy
			cmp [SpyAmmo], 0
			jle SkipShoot
			mov [SaVisible], 1
			jmp SkipShoot
		SkipSaChangeToSpy:
		mov ax, [SaX]
		mov [AddBulX], ax
		mov ax, [SaY]
		mov [AddBulY], ax
		mov bx, offset SRS
		cmp [SaLastPose], bx
		je SkipBulDirChange
		mov bx, offset SRR1
		cmp [SaLastPose], bx
		je SkipBulDirChange
		mov bx, offset SRR2
		cmp [SaLastPose], bx
		je SkipBulDirChange
	LeftShoot:
			not [AddBulRight]
			inc [AddBulRight]
	SkipBulDirChange:
		call AddFriendlyBul
		cmp [SaMode], 8
		jne SkipRepeatShot
			call AddFriendlyBul
			call AddFriendlyBul
			call AddFriendlyBul
		SkipRepeatShot:
SkipShoot:
	cmp [BulSaTimer], 0
	je SkipUpdateBulSaTimer
		inc [BulSaTimer] 
		cmp [BulSaTimer], 5
		jl SkipResetBulSaTimer
			cmp [SaMode], 2
			jne SkipElongateBulSaT
			cmp [SaMode], 8
			jne SkipElongateBulSaT
				cmp [BulSaTimer], 10
				jl SkipResetBulSaTimer
			SkipElongateBulSaT:
			mov [BulSaTimer], 0
		SkipResetBulSaTimer:
	SkipUpdateBulSaTimer:
	mov bx, [ground]
	cmp [SaY], bx
	jb SkipJump
	cmp al, 48h ;Is it the Up key ?
	jne SkipJump
Jump:
		inc [SaJCheck]
		add [SaVerVel], 2560
SkipJump:
	cmp al, 4dh ;Is it the Right key ?
	jne SkipMoveRight
MoveRight:
		add [SaX], 4
		cmp [RCheck2], 0
		je RRunningStance2
	RRunningStance1:
			mov [SaLastPose], offset SRR1
			jmp SkipCRS
	RRunningStance2:
			mov [SaLastPose], offset SRR2
	SkipCRS:
		inc [RCheck]
		cmp [RCheck], 4
		jl SkipCRS2
		not [RCheck2]
		mov [RCheck], 0
	SkipCRS2:
		mov [picX], 21
		mov [PicY], 24
SkipMoveRight:
	cmp al, 0cdh ;Is it the Right key (up)?
	jne SkipStopRightRun
StopRightRun:
		mov [SaLastPose], offset SRS
		mov [picX], 21
		mov [PicY], 24
SkipStopRightRun:
	cmp al, 4bh ;Is it the Left key ?
	jne SkipMoveLeft
MoveLeft:
		sub [SaX], 4
		cmp [RCheck2], 0
		je LRunningStance2
	LRunningStance1:
			mov [SaLastPose], offset SLR1
			jmp SkipCLRS
	LRunningStance2:
			mov [SaLastPose], offset SLR2
	SkipCLRS:
		inc [RCheck]
		cmp [RCheck], 4
		jl SkipCLRS2
		not [RCheck2]
		mov [RCheck], 0
	SkipCLRS2:
		mov [picX], 21
		mov [PicY], 24
SkipMoveLeft:
	cmp al, 0cbh ;Is it the Right key (up)?
	jne SkipStopLeftRun
StopLeftRun:
		mov [SaLastPose], offset SLS
		mov [picX], 21
		mov [PicY], 24
SkipStopLeftRun:
	cmp al, 1h ; Is it the ESC key ?
	jne SkipSpecESC
		xor al, al
		out 60h, al
		dec [SaLives]
		jmp StageSelect
SkipSpecESC:
	call ClearKeyboardBuffer
	mov ax, [SaX]
	mov [x], ax
	mov ax, [SaY]
	mov [y], ax
	mov ax, [SaVerVel]
	mov [VerVel], ax
	mov ah, [SaJCheck]
	mov [JCheck], ah
	; call Gravity
	; call BasicReset
	call NatMov
	mov ax, [x]
	mov [SaX], ax
	mov ax, [y]
	mov [SaY], ax
	mov ax, [VerVel]
	mov [SaVerVel], ax
	mov ah, [JCheck]
	mov [SaJCheck], ah
	mov dx, [SaLastPose]
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap                                                                                             
	call CloseFile
	mov dl, 2
	call HealthBar
SkipMove:
	pop dx
	pop es
	pop si
	pop di
	pop cx
	pop bx
	pop ax
	ret
endp
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
; Graphic mode
	mov ax, 13h
	int 10h
; Process BMP file
Start0:	
	mov ax, 40h
	mov es, ax
	mov [RoomTimer], 0
	mov [RoomTimer2], 0
	mov dx, offset BKG01
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
Room01Loop:
	mov ax, [Clock]
Tick01:
	cmp ax, [Clock]
	je Tick01
	call Print0Tower
	mov dx, offset BKGE1
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	inc [RoomTimer]
	in al, 60h
	cmp al, 48h
	jne SkipRealStart1
		jmp EndTowerLoop
	SkipRealStart1:
	cmp [RoomTimer], 101
	ja EndRoom01Loop
	jmp Room01Loop
EndRoom01Loop:
	mov [RoomTimer], 0
Room02Loop:
	mov ax, [Clock]
Tick02:
	cmp ax, [Clock]
	je Tick02
	call Print0Tower
	mov dx, offset BKGE2
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	inc [RoomTimer]
	in al, 60h
	cmp al, 48h
	jne SkipRealStart2
		jmp EndTowerLoop
	SkipRealStart2:
	cmp [RoomTimer], 76
	ja EndRoom02Loop
	jmp Room02Loop
EndRoom02Loop:
	mov [RoomTimer], 0
Room03Loop:
	mov ax, [Clock]
Tick03:
	cmp ax, [Clock]
	je Tick03
	call Print0Tower
	mov dx, offset BKGE3
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	inc [RoomTimer]
	in al, 60h
	cmp al, 48h
	jne SkipRealStart3
		jmp EndTowerLoop
	SkipRealStart3:
	cmp [RoomTimer], 76
	ja EndRoom03Loop
	jmp Room03Loop
EndRoom03Loop:
	mov [RoomTimer], 0
Room04Loop:
	mov ax, [Clock]
Tick04:
	cmp ax, [Clock]
	je Tick04
	call Print0Tower
	mov dx, offset BKGE4
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	inc [RoomTimer]
	cmp [RoomTimer], 76
	ja EndRoom04Loop
	jmp Room04Loop
EndRoom04Loop:
	mov [RoomTimer], 0
Room05Loop:
	mov ax, [Clock]
Tick05:
	cmp ax, [Clock]
	je Tick05
	call Print0Tower
	mov dx, offset BKGE5
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	inc [RoomTimer]
	cmp [RoomTimer], 76
	ja EndRoom05Loop
	jmp Room05Loop
EndRoom05Loop:
	mov [RoomTimer], 0
Room06Loop:
	mov ax, [Clock]
Tick06:
	cmp ax, [Clock]
	je Tick06
	call Print0Tower
	mov dx, offset BKGE6
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	inc [RoomTimer]
	cmp [RoomTimer], 76
	jg EndRoom06Loop
	jmp Room06Loop
EndRoom06Loop:
	mov [RoomTimer], 0
Room07Loop:
	mov ax, [Clock]
Tick07:
	cmp ax, [Clock]
	je Tick07
	call Print0Tower
	mov dx, offset BKGE7
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	inc [RoomTimer]
	cmp [RoomTimer], 76
	ja EndRoom07Loop
	jmp Room07Loop
EndRoom07Loop:
	mov [RoomTimer], 0
EndTowerLoop:
	call Print0Tower
	cmp [RoomTimer2],2
	jne EndTowerLoop
	mov dx, offset BKG05
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
Room08Loop:
	mov ax, [Clock]
Tick08:
	cmp ax, [Clock]
	je Tick08
	inc [RoomTimer]
	cmp [RoomTimer], 5
	ja EndRoom08Loop
	jmp Room08Loop
EndRoom08Loop:
	mov [RoomTimer], 0
	mov dx, offset BKG06
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
Room09Loop:
	mov ax, [Clock]
Tick09:
	cmp ax, [Clock]
	je Tick09
	inc [RoomTimer]
	cmp [RoomTimer], 5
	ja EndRoom09Loop
	jmp Room09Loop
EndRoom09Loop:
	mov [RoomTimer], 0
	mov dx, offset BKG07
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
Room010Loop:
	mov ax, [Clock]
Tick010:
	cmp ax, [Clock]
	je Tick010
	inc [RoomTimer]
	cmp [RoomTimer], 5
	ja EndRoom010Loop
	jmp Room010Loop
EndRoom010Loop:
	mov [RoomTimer], 0
	mov dx, offset BKG08
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
Room011Loop:
	mov ax, [Clock]
Tick011:
	cmp ax, [Clock]
	je Tick011
	inc [RoomTimer]
	cmp [RoomTimer], 5
	ja EndRoom011Loop
	jmp Room011Loop
EndRoom011Loop:
	mov [RoomTimer], 0
	mov dx, offset BKG09
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
WaitToStart:
	in al, 60h
	cmp al, 1ch
	je RealStart
	jmp WaitToStart
RealStart:
	mov [SaLastPose], offset SRS
	mov [En1LastPose], offset SBE
StageSelect:
	mov dx, offset BKGSSX3
	cmp [SaLives], 2
	jne SkipChangeSSX2
		mov dx, offset BKGSSX2
	SkipChangeSSX2:
	cmp [SaLives], 1
	jne SkipChangeSSX1
		mov dx, offset BKGSSX1
	SkipChangeSSX1:
	cmp [SaLives], 0
	jne SkipChangeSSX0
		jmp GameOver
	SkipChangeSSX0:
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
StageSelectLoop:
	call ClearKeyboardBuffer
	in al, 60h
	mov dl, [StartStageCheck]
	cmp al, 1h ; Is it the ESC key ?
	jne SSQuit
		jmp SpecESC
SSQuit:
	cmp al, 2h ;Is it the 1 key ?
	je ScoutStage
	jmp SkipScoutStage
ScoutStage:
	and dl, 1b
	cmp dl, 1b
	je SkipScoutStage
		call PreRoomReset
		jmp Start1
SkipScoutStage:
	cmp al, 3h ;Is it the 2 key ?
	je SoldierStage
	jmp SkipSoldierStage
SoldierStage:
	and dl, 10b
	cmp dl, 10b
	je SkipSoldierStage
		call PreRoomReset
		jmp Start2
SkipSoldierStage:
	cmp al, 4h ;Is it the 3 key ?
	je PyroStage
	jmp SkipPyroStage
PyroStage:
	and dl, 100b
	cmp dl, 100b
	je SkipPyroStage
		call PreRoomReset
		jmp Start3
SkipPyroStage:
	cmp al, 5h ;Is it the 4 key ?
	je DemomanStage
	jmp SkipDemomanStage
DemomanStage:
	and dl, 1000b
	cmp dl, 1000b
	je SkipDemomanStage
		call PreRoomReset
		jmp Start4
SkipDemomanStage:
	cmp al, 6h ;Is it the 5 key ?
	je HeavyStage
	jmp SkipHeavyStage
HeavyStage:
	and dl, 10000b
	cmp dl, 10000b
	je SkipHeavyStage
		call PreRoomReset
		jmp Start5
SkipHeavyStage:
	cmp al, 7h ;Is it the 6 key ?
	je EngieStage
	jmp SkipEngieStage
EngieStage:
	and dl, 100000b
	cmp dl, 100000b
	je SkipEngieStage
		call PreRoomReset
		jmp StageSelectLoop
SkipEngieStage:
	cmp al, 9h ;Is it the 8 key ?
	je SniperStage
	jmp SkipSniperStage
SniperStage:
	and dl, 1000000b
	cmp dl, 1000000b
	je SkipSniperStage
		call PreRoomReset
		jmp Start8
SkipSniperStage:
	cmp al, 10 ;Is it the 9 key ?
	je SpyStage
	jmp SkipSpyStage
SpyStage:
	and dl, 10000000b
	cmp dl, 10000000b
	je SkipSpyStage
		call PreRoomReset
		jmp Start9	
SkipSpyStage:
	cmp al, 8h ;Is it the 7 key ?
	je BossStages
	jmp SkipBossStages
BossStages:
	and dl, 11111111b
	cmp dl, 11111111b
	jne SkipBossStages
		call PreRoomReset
		jmp StageSelectLoop	
SkipBossStages:
	jmp StageSelectLoop
	
Start1:	
	mov ax, 40h
	mov es, ax
	mov dx, offset MAP11
	call CopyStageGround
	mov [SaY], 17920
Room11Loop:
	mov ax, [Clock]
Tick11:
	cmp ax, [Clock]
	je Tick11
	mov dx, offset BKG11
	call DefaultRoom
	cmp [SaX], 0
	jng Skip11DStep0
		; mov [ground], 17920
	Skip11DStep0:
	cmp [SaX], 178
	jng Skip11DStep1
		; mov [ground], 21120
		mov [En1JCheck], 179
		mov [En1Y], 21120
	Skip11DStep1:
	cmp [SaX], 188
	jng Skip11DStep2
		; mov [ground], 24320
		mov [En1JCheck], 189
		mov [En1Y], 24320
		mov [SaLeftWall], 189
		mov [x], 179
		mov [y], 81
		mov [color], 10
		mov cx, 9
		Wall11BH2:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall11BH2
	Skip11DStep2:
	cmp [SaX], 198
	jng Skip11DStep3
		; mov [ground], 27520
		mov [En1JCheck], 199
		mov [En1Y], 27520
		mov [SaLeftWall], 199
		mov [x], 189
		mov [y], 91
		mov [color], 10
		mov cx, 10
		Wall11BH3:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall11BH3
	Skip11DStep3:
	cmp [SaX], 208
	jng Skip11DStep4
		; mov [ground], 30720
		mov [En1JCheck], 209
		mov [En1Y], 30720
		mov [SaLeftWall], 209
		mov [x], 199
		mov [y], 101
		mov [color], 10
		mov cx, 11
		Wall11BH4:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall11BH4
	Skip11DStep4:
	cmp [SaX], 218
	jng Skip11DStep5
		; mov [ground], 33920
		mov [En1JCheck], 219
		mov [En1Y], 33920
		mov [SaLeftWall], 219
		mov [x], 209
		mov [y], 111
		mov [color], 10
		mov cx, 12
		Wall11BH5:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall11BH5
	Skip11DStep5:
	cmp [SaX], 228
	jng Skip11DStep6
		; mov [ground], 37120
		mov [En1JCheck], 229
		mov [En1Y], 37120
		mov [SaLeftWall], 229
		mov [x], 219
		mov [y], 121
		mov [color], 10
		mov cx, 13
		Wall11BH6:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall11BH6
	Skip11DStep6:
	cmp [SaX], 238
	jng Skip11DStep7
		; mov [ground], 40320
		mov [En1JCheck], 239
		mov [En1Y], 40320
		mov [SaLeftWall], 239
		mov [x], 229
		mov [y], 131
		mov [color], 10
		mov cx, 14
		Wall11BH7:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall11BH7
	Skip11DStep7:
	cmp [SaX], 248
	jng Skip11DStep8
		; mov [ground], 43520
		mov [En1JCheck], 249
		mov [En1Y], 43520
		mov [SaLeftWall], 249
		mov [x], 239
		mov [y], 141
		mov [color], 10
		mov cx, 15
		Wall11BH8:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall11BH8
	Skip11DStep8:
	cmp [SaX], 258
	jng Skip11DStep9
		; mov [ground], 46720
		mov [En1JCheck], 1
		mov [En1Y], 46720
		mov [SaLeftWall], 259
		mov [x], 249
		mov [y], 151
		mov [color], 10
		mov cx, 16
		Wall11BH9:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall11BH9
	Skip11DStep9:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom11Loop	
	jmp Room11Loop
EndRoom11Loop:
	mov dx, offset MAP12
	call CopyStageGround
	mov [SaX], 5
	mov [RoomTimer], 0
	mov [RoomTimer3], 0
	mov [SaLeftWall], 0
Room12Loop:
	mov ax, [Clock]
Tick12:
	cmp ax, [Clock]
	je Tick12
	mov dx, offset BKG12
	call DefaultRoom
	inc [RoomTimer2]
	cmp [RoomTimer2], 20
	jng Skip12Shoot
		mov [AddBulRight], 0
		sub [AddBulRight], 8
		mov [AddBulX], 290
		mov [AddBulType], 1
		mov [AddBulY], 46720
		call AddHostileBul
		mov [AddBulY], 27520
		call AddHostileBul
		mov [RoomTimer2], 0
	Skip12Shoot:
	inc [RoomTimer]
	jnz Skip12ResetTimer2
		mov dx, offset MAP12
		call CopyStageGround
		mov [RoomTimer3], 0
	Skip12ResetTimer2:
	; cmp [SaX], 0
	; jng Skip12DStep0
		; mov [ground], 46720
	; Skip12DStep0:
	; cmp [SaX], 14
	; jng Skip12DStep1
		; cmp [RoomTimer], 20
		; ja Skip12DStep1
			; mov [ground], 43520
	; Skip12DStep1:
	; cmp [SaX], 24
	; jng Skip12DStep2
		; cmp [RoomTimer], 25
		; ja Skip12DStep2
			
			; mov [ground], 40320
			; inc [RoomTimer2]
	; Skip12DStep2:
	; cmp [SaX], 34
	; jng Skip12DStep3
	; cmp [SaY], 40320
	; ja Skip12Dstep3
		; cmp [RoomTimer], 30
		; ja Skip12DStep3
			; mov [ground], 37120
	; Skip12DStep3:
	; cmp [SaX], 44
	; jng Skip12DStep4
	; cmp [SaY], 37120
	; ja Skip12Dstep4
		; cmp [RoomTimer], 35
		; ja Skip12DStep4
			; mov [ground], 33920
	; Skip12DStep4:
	; cmp [SaX], 54
	; jng Skip12DStep5
	; cmp [SaY], 33920
	; ja Skip12Dstep5
		; cmp [RoomTimer], 40
		; ja Skip12DStep5
			; mov [ground], 30720
	; Skip12DStep5:
	; cmp [SaX], 64
	; jng Skip12DStep6
	; cmp [SaY], 30720
	; ja Skip12Dstep6
		; mov [ground], 27520
	; Skip12DStep6:
	; cmp [SaX], 215
	; jng Skip12Fall
		; mov [ground], 46720
	; Skip12Fall:
	; cmp [SaX], 194
	; jng Skip12DStep7
	; cmp [SaY], 27520
	; ja Skip12Dstep7
		; cmp [RoomTimer], 60
		; ja Skip12DStep7
			; mov [ground], 24320
	; Skip12DStep7:
	; cmp [SaX], 214
	; jng Skip12DStep9
	; cmp [SaY], 24320
	; ja Skip12Dstep9
		; cmp [RoomTimer], 70
		; ja Skip12DStep9
			; mov [ground], 21120
	; Skip12DStep9:
	; cmp [SaX], 234
	; jng Skip12DStep11
	; cmp [SaY], 21120
	; ja Skip12Dstep11
		; cmp [RoomTimer], 80
		; ja Skip12DStep11
			; mov [ground], 17920
	; Skip12DStep11:
	; cmp [SaX], 254
	; jng Skip12Fall2
	; cmp [SaY], 21120
	; ja Skip12Fall2
		; mov [ground], 17920
	; Skip12Fall2:
	
	cmp [RoomTimer], 20
	jna Skip12Erase1		
		mov ax, 170
		mov [x], 35
		mov [y], 161
		mov [color], 13
		call PrintBlock
		cmp [RoomTimer3], 1
		jae Skip12Erase1
			mov bx, 35
			call S12ChangeFloor
	Skip12Erase1:
	cmp [RoomTimer], 25
	jna Skip12Erase2		
		mov [x], 45
		mov [y], 151
		mov [color], 13
		call PrintBlock
		cmp [RoomTimer3], 2
		jae Skip12Erase2
			mov bx, 45
			
			call S12ChangeFloor
	Skip12Erase2:
	cmp [RoomTimer], 30
	jna Skip12Erase3		
		mov [x], 55
		mov [y], 141
		mov [color], 13
		call PrintBlock
		cmp [RoomTimer3], 3
		jae Skip12Erase3
			mov bx, 55
			call S12ChangeFloor
	Skip12Erase3:
	cmp [RoomTimer], 35
	jna Skip12Erase4		
		mov [x], 65
		mov [y], 131
		mov [color], 13
		call PrintBlock
		cmp [RoomTimer3], 4
		jae Skip12Erase4
			mov bx, 65
			call S12ChangeFloor
	Skip12Erase4:
	cmp [RoomTimer], 40
	jna Skip12Erase5		
		mov [x], 75
		mov [y], 121
		mov [color], 13
		call PrintBlock
		cmp [RoomTimer3], 5
		jae Skip12Erase5
			mov bx, 75
			call S12ChangeFloor
	Skip12Erase5:
	cmp [RoomTimer], 60
	jna Skip12Erase7		
		mov [x], 215
		mov [y], 101
		mov [color], 13
		call PrintBlock
		cmp [RoomTimer3], 6
		jae Skip12Erase7
			mov bx, 215
			call S12ChangeFloor
	Skip12Erase7:
	cmp [RoomTimer], 65
	jna Skip12Erase8	
		mov [x], 225
		mov [y], 101
		mov [color], 13
		call PrintBlock
		cmp [RoomTimer3], 7
		jae Skip12Erase8
			mov bx, 225
			call S12ChangeFloor
	Skip12Erase8:
	cmp [RoomTimer], 70
	jna Skip12Erase9		
		mov [x], 235
		mov [y], 91
		mov [color], 13
		call PrintBlock
		cmp [RoomTimer3], 8
		jae Skip12Erase9
			mov bx, 235
			call S12ChangeFloor
	Skip12Erase9:
	cmp [RoomTimer], 75
	jna Skip12Erase10		
		mov [x], 245
		mov [y], 91
		mov [color], 13
		call PrintBlock
		cmp [RoomTimer3], 9
		jae Skip12Erase10
			mov bx, 245
			call S12ChangeFloor
	Skip12Erase10:
	cmp [RoomTimer], 80
	jna Skip12Erase11		
		mov [x], 255
		mov [y], 81
		mov [color], 13
		call PrintBlock
		cmp [RoomTimer3], 10
		jae Skip12Erase11
			mov bx, 255
			call S12ChangeFloor
	Skip12Erase11:
	cmp [RoomTimer], 85
	jna Skip12Erase12		
		mov [x], 265
		mov [y], 81
		mov [color], 13
		call PrintBlock
		cmp [RoomTimer3], 11
		jae Skip12Erase12
			mov bx, 265
			call S12ChangeFloor
	Skip12Erase12:
	call CopyScrBuffer
	cmp [SaY], 21120
	ja Room12Loop2
	cmp [SaX], 297
	jg EndRoom12Loop
	Room12Loop2:
	jmp Room12Loop
EndRoom12Loop:
	mov dx, offset MAP13
	call CopyStageGround
	mov [SaX], 5
	mov [ground], 17920
	mov [ceiling], 15040
	mov [En1Type], 3
	mov [En1HP], 79
	mov [En1LastPose], offset YLS
	mov [En1X], 260
	mov [En1VerVel], 250
	mov [En1JCheck], 40
	mov [En1Y], 17920
	mov [En2Type], 3
	mov [En2HP], 79
	mov [En2LastPose], offset YLS
	mov [En2X], 260
	mov [En2Y], 17920
	mov [En2VerVel], 250
	mov [En2JCheck], 40
Room13Loop:
	mov ax, [Clock]
Tick13:
	cmp ax, [Clock]
	je Tick13
	mov dx, offset BKG13
	call DefaultRoom
	mov [En1HP], 79
	mov [En2HP], 79
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom13Loop	
	jmp Room13Loop
EndRoom13Loop:
	mov dx, offset MAP14
	call CopyStageGround
	mov [SaX], 5
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
	mov [En1Type], 3
	mov [En1HP], 79
	mov [En1LastPose], offset YLS
	mov [En1X], 260
	mov [En1VerVel], 250
	mov [En1JCheck], 40
	mov [En1Y], 17920
	mov [En2Type], 3
	mov [En2HP], 79
	mov [En2LastPose], offset YLS
	mov [En2X], 260
	mov [En2Y], 17920
	mov [En2VerVel], 250
	mov [En2JCheck], 40
Room14Loop:
	mov ax, [Clock]
Tick14:
	cmp ax, [Clock]
	je Tick14
	mov dx, offset BKG14
	call DefaultRoom
	mov [En1HP], 79
	mov [En2HP], 79
	cmp [Sax], 294
	jl Skip14Fall
	cmp [RoomTimer3], 1
	je Skip14Fall
		mov dx, offset MAP142
		call CopyStageGround
		inc [RoomTimer3]
		mov [En1Y], 49920
		mov [En2Y], 49920
	Skip14Fall:
	cmp [SaY], 40320
	jb Skip14Cap
		cmp [SaX], 40
		jg Skip14Cap2
			inc [RoomTimer2]
		Skip14Cap2:
	Skip14Cap:
	; cmp [RoomTimer2], 0
	; je Skip14Erase
		; mov [x], 15
		; mov [y], 148
		; mov [color], 5
		; push [x]
		; push [y]
		; call PrintBlock
		; pop [y]
		; pop [x]
		; add [x], 10
		; call PrintBlock
	; Skip14Erase:
	cmp [RoomTimer2], 0
	jne Skip14IntelPrint
		; mov [RoomTimer4], 0
		mov dx, offset Intel
		mov [x], 15
		mov [y], 42240
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
	Skip14IntelPrint:
	call CopyScrBuffer
	cmp [RoomTimer2], 0
	jne SkipRoom14Loop
		jmp Room14Loop
	SkipRoom14Loop:
	cmp [SaX], 297
	jg EndRoom14Loop	
	jmp Room14Loop
EndRoom14Loop:
	mov dx, offset MAP15
	call CopyStageGround
	mov [SaX], 5
	mov [ceiling], 0
	mov [RoomTimer2], 0
	mov [En1Type], 3
	mov [En1HP], 79
	mov [En1LastPose], offset YLS
	mov [En1X], 40
	mov [En1VerVel], 15
	mov [En1JCheck], 14
	mov [En1Y], 49920
	mov [En2Type], 3
	mov [En2HP], 0
	mov [En2LastPose], offset YLS
	mov [En2X], 260
	mov [En2Y], 17920
	mov [En2VerVel], 250
	mov [En2JCheck], 40
Room15Loop:
	mov ax, [Clock]
Tick15:
	cmp ax, [Clock]
	je Tick15
	mov dx, offset BKG15
	call DefaultRoom
	mov [En1HP], 79
	; cmp [SaX], 0
	; jng Skip15DStep0
		; mov [ground], 49920
	; Skip15DStep0:
	cmp [SaX], 15
	jng Skip15DStep1
		; mov [ground], 46720
		mov [En1VerVel], 25
		mov [En1Y], 46720
	Skip15DStep1:
	cmp [SaX], 25
	jng Skip15DStep2
		; mov [ground], 43520
		mov [En1Y], 43520
		mov [En1VerVel], 35
	Skip15DStep2:
	cmp [SaX], 35
	jng Skip15DStep3
		; mov [ground], 40320
		mov [En1Y], 40320
		mov [En1VerVel], 45
	Skip15DStep3:
	cmp [SaX], 45
	jng Skip15DStep4
		; mov [ground], 37120
		mov [En1Y], 37120
		mov [En1VerVel], 55
		mov [SaLeftWall], 50
		mov [x], 40
		mov [y], 161
		mov [color], 10
		mov cx, 17
		Wall15BH8:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall15BH8
	Skip15DStep4:
	cmp [SaX], 55
	jng Skip15DStep5
		; mov [ground], 33920
		mov [En1Y], 33920
		mov [En1VerVel], 65
		mov [En1JCheck], 35
		mov [SaLeftWall], 60
		mov [x], 50
		mov [y], 151
		mov [color], 10
		mov cx, 16
		Wall15BH7:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall15BH7
	Skip15DStep5:
	cmp [SaX], 65
	jng Skip15DStep6
		; mov [ground], 30720
		mov [En1Y], 30720
		mov [En1VerVel], 75
		mov [SaLeftWall], 70
		mov [x], 60
		mov [y], 141
		mov [color], 10
		mov cx, 15
		Wall15BH6:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall15BH6
	Skip15DStep6:
	cmp [SaX], 75
	jng Skip15DStep7
		; mov [ground], 27520
		mov [En1Y], 27520
		mov [En1VerVel], 85
		mov [SaLeftWall], 80
		mov [x], 70
		mov [y], 131
		mov [color], 10
		mov cx, 14
		Wall15BH5:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall15BH5
	Skip15DStep7:
	cmp [SaX], 85
	jng Skip15DStep8
		; mov [ground], 24320
		mov [En1Y], 24320
		mov [En1VerVel], 95
		mov [SaLeftWall], 90
		mov [x], 80
		mov [y], 121
		mov [color], 10
		mov cx, 13
		Wall15BH4:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall15BH4
	Skip15DStep8:
	cmp [SaX], 95
	jng Skip15DStep9
		; mov [ground], 21120
		mov [En1Y], 21120
		mov [En1VerVel], 105
		mov [SaLeftWall], 100
		mov [x], 90
		mov [y], 111
		mov [color], 10
		mov cx, 12
		Wall15BH3:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall15BH3
	Skip15DStep9:
	cmp [SaX], 105
	jng Skip15DStep10
		; mov [ground], 17920
		mov [En1Y], 17920
		mov [En1VerVel], 115
		mov [SaLeftWall], 110
		mov [x], 100
		mov [y], 101
		mov [color], 10
		mov cx, 11
		Wall15BH2:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall15BH2
	Skip15DStep10:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom15Loop	
	jmp Room15Loop
EndRoom15Loop:
	mov dx, offset MAP16
	call CopyStageGround
	mov [SaLeftWall], 0
	mov [SaX], 5
	mov [SaX], 5
	mov [ceiling], 0
	mov [RoomTimer2], 0
	mov [En1Type], 3
	mov [En1HP], 79
	mov [En1LastPose], offset YLS
	mov [En1X], 260
	mov [En1VerVel], 290
	mov [En1JCheck], 80
	mov [En1Y], 17920
Room16Loop:
	mov ax, [Clock]
Tick16:
	cmp ax, [Clock]
	je Tick16
	mov dx, offset BKG16
	call DefaultRoom
	mov [En1HP], 79
	cmp [SaX], 0
	jng Skip16DStep0
		; mov [ground], 17920
	Skip16DStep0:
	cmp [SaX], 89
	jng Skip16DStep1
		; mov [ground], 21120
		mov [En1JCheck], 90
		mov [En1Y], 21120
	Skip16DStep1:
	cmp [SaX], 99
	jng Skip16DStep2
		; mov [ground], 24320
		mov [En1JCheck], 100
		mov [En1Y], 24320
		mov [SaLeftWall], 100
		mov [x], 90
		mov [y], 81
		mov [color], 10
		mov cx, 9
		Wall16BH2:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall16BH2
	Skip16DStep2:
	cmp [SaX], 109
	jng Skip16DStep3
		; mov [ground], 27520
		mov [En1JCheck], 110
		mov [En1Y], 27520
		mov [SaLeftWall], 110
		mov [x], 100
		mov [y], 91
		mov [color], 10
		mov cx, 10
		Wall16BH3:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall16BH3
	Skip16DStep3:
	cmp [SaX], 119
	jng Skip16DStep4
		; mov [ground], 30720
		mov [En1JCheck], 120
		mov [En1Y], 30720
		mov [SaLeftWall], 120
		mov [x], 110
		mov [y], 101
		mov [color], 10
		mov cx, 11
		Wall16BH4:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall16BH4
	Skip16DStep4:
	cmp [SaX], 129
	jng Skip16DStep5
		; mov [ground], 33920
		mov [En1JCheck], 130
		mov [En1Y], 33920
		mov [SaLeftWall], 130
		mov [x], 120
		mov [y], 111
		mov [color], 10
		mov cx, 12
		Wall16BH5:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall16BH5
	Skip16DStep5:
	cmp [SaX], 139
	jng Skip16DStep6
		; mov [ground], 37120
		mov [En1JCheck], 140
		mov [En1Y], 37120
		mov [SaLeftWall], 140
		mov [x], 130
		mov [y], 121
		mov [color], 10
		mov cx, 13
		Wall16BH6:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall16BH6
	Skip16DStep6:
	cmp [SaX], 149
	jng Skip16DStep7
		; mov [ground], 40320
		mov [En1JCheck], 150
		mov [En1Y], 40320
		mov [SaLeftWall], 150
		mov [x], 140
		mov [y], 131
		mov [color], 10
		mov cx, 14
		Wall16BH7:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall16BH7
	Skip16DStep7:
	cmp [SaX], 159
	jng Skip16DStep8
		; mov [ground], 43520
		mov [En1JCheck], 160
		mov [En1Y], 43520
		mov [SaLeftWall], 160
		mov [x], 150
		mov [y], 141
		mov [color], 10
		mov cx, 15
		Wall16BH8:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall16BH8
	Skip16DStep8:
	cmp [SaX], 169
	jng Skip16DStep9
		; mov [ground], 46720
		mov [En1JCheck], 170
		mov [En1Y], 46720
		mov [SaLeftWall], 170
		mov [x], 160
		mov [y], 151
		mov [color], 10
		mov cx, 16
		Wall16BH9:
			push cx
			push [x]
			push [y]
			call PrintBlock
			pop [y]
			pop [x]
			sub [y], 10
			pop cx
			loop Wall16BH9
	Skip16DStep9:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom16Loop	
	jmp Room16Loop
EndRoom16Loop:
	mov dx, offset MAP1B
	call CopyStageGround
	mov [SaX], 5
	mov [SaLeftWall], 0
	mov [En1HP], 0
	mov [DisBlockX], 290
	mov [DisBlockY], 46720
	mov [DisBlockHP], 28
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
	mov [RoomTimer], 0
	mov [RoomTimer4], 0
	mov [En1LastPose], offset ScLS
	mov [En1VerVel], 0
	mov [En1JCheck], 0
Room1BLoop:
	mov ax, [Clock]
Tick1B:
	cmp ax, [Clock]
	je Tick1B
	mov dx, offset BKG1B
	call DefaultRoom
	push ax
	push dx
	push cx
	push bx
	xor bx, bx
	mov cx, 20
	Friendly1BBulletsArr:
		mov ax, [FBulRight + bx]
		cmp ax, 0
		jne Skip1BSkipFBul
			jmp Skip1BFBul
	Skip1BSkipFBul:
		mov ax, [FBulX + bx]
		cmp ax, 0
		jnl Skip1BSkipFBul1
			mov [FBulRight + bx], 0
			mov [FBulType + bx], 0
			jmp Skip1BFBul
	Skip1BSkipFBul1:
		cmp ax, 298
		jng Skip1BSkipFBul2
			mov [FBulType + bx], 0
			mov [FBulRight + bx], 0
			mov [FBulY + bx], 0
			jmp Skip1BFBul
	Skip1BSkipFBul2:
		mov ax, [FBulX + bx] ; Useless
		mov [x], ax
		mov ax, [FBulY + bx]
		mov [y], ax
		mov [PicX], 21
		mov [PicY], 24
			mov ax, [FBulX + bx]
			sub ax, 21 ; En1 Width dependent
			cmp ax, [DisBlockX] ; What Direction ?
			jng Skip1BSkipBulHitEn1
				jmp Skip1BBulHitEn1
		Skip1BSkipBulHitEn1:
			add ax, 26 ; En1 Width dependent
			cmp ax, [DisBlockX]
			jna Skip1BBulHitEn1
		Bul1BHitEn1:
				mov ax, [FBulY + bx]
				add ax, 4800 ; En1 Height dependent
				cmp ax, [DisBlockY]
				ja Skip1BSkipBulHitEn12
					
					jmp Skip1BBulHitEn1
			Skip1BSkipBulHitEn12:
				sub ax, 9600 ; En1 Height dependent
				cmp ax, [DisBlockY]
				jb Skip1BSkipBulHitEn13
					jmp Skip1BBulHitEn1 
				Skip1BSkipBulHitEn13:
				mov [FBulType + bx], 0
				mov [FBulY + bx], 0
				sub [DisBlockHP], 1
				Skip1BDecRT3:
	Skip1BBulHitEn1:
	Skip1BFBul:
	; moves on to the next bullet if there is one
		inc bx
		inc bx
		dec cx
		jz Finish1BFBul
		jmp Friendly1BBulletsArr
	Finish1BFBul:
	pop bx
	pop cx
	pop dx
	pop ax
	cmp [DisBlockHP], 0
	jg SkipSkip1BSol
		jmp Skip1BSol
	SkipSkip1BSol:
		cmp [RoomTimer], 1
		je Skip1BStartJump
		cmp [DisBlockX], 290
		je Start1BJump
		cmp [DisBlockX], 10
		je Start1BJump
		jmp Skip1BStartJump
			Start1BJump:
			cmp [DisBlockY], 46720
			jb Skip1BFirstJump
				mov [En1VerVel], 3520
				inc [En1JCheck]
				mov [RoomTimer], 1
			Skip1BFirstJump:
			
			mov [RoomTimer3], 0
		Skip1BStartJump:
		cmp [DisBlockY], 25920
		ja Skip1BUpdateRT3
			mov [RoomTimer3], 1
		Skip1BUpdateRT3:
		cmp [RoomTimer3], 1
		je SkipSkipJump1BLeft
			jmp SkipJump1BLeft
		SkipSkipJump1BLeft:
		mov bx, offset ScLS
		cmp [En1LastPose], bx
		je Jump1BLeft
		Jump1BRight:
			cmp [DisBlockY], 25920
			jb Skip1BJumpRAgain
				mov [En1VerVel], 2560
				inc [En1JCheck]
			Skip1BJumpRAgain:
			add [DisBlockX], 5
			cmp [DisBlockX], 290
			jne Skip1BStopRjump
				mov [RoomTimer3], 0
				mov [RoomTimer], 0
				mov [DisBlockY], 29120
				mov [En1VerVel], 0
				mov [En1LastPose], offset ScLS
			Skip1BStopRjump:
			jmp SkipJump1BLeft
		Jump1BLeft:
			cmp [DisBlockY], 25920
			jb Skip1BJumpLAgain
				mov [En1VerVel], 2560
				inc [En1JCheck]
			Skip1BJumpLAgain:
			sub [DisBlockX], 5
			cmp [DisBlockX], 10
			jne SkipJump1BLeft
				mov [RoomTimer3], 0
				mov [RoomTimer], 0
				mov [DisBlockY], 29120
				mov [En1VerVel], 0
				mov [En1LastPose], offset ScRS
		SkipJump1BLeft:
		cmp [DisBlock1Y], 46720
		jbe Skip1BNewRocket                     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			mov ax, [DisBlockY]
			mov [DisBlock1Y], ax
			mov ax, [DisBlockX]
			mov [DisBlock1X], ax
		Skip1BNewRocket:
			add [DisBlock1Y], 3200
			mov ax, [DisBlock1Y]
			mov [y], ax
			mov ax, [DisBlock1X]
			mov [x], ax
			mov dx, offset BBall          
			call OpenFile
			call ReadHeader
			call ReadPalette
			call CopyBitmap
			call CloseFile
			;cmp [DisBlock1Y], 24320 ;
			;jnb Explode24Bomb
			;cmp [DisBlock1Y], 29120 ;
			;jae Skip24Bomb
			;		cmp [SaX], 104
			;		jl Skip1BHit
			;		cmp [SaX], 195
			;		jg Skip1BHit
			;			sub [HP], 3
			Skip1BHit:
			;mov cx, 5
			; Sniper8BShootLoop:
				; push cx
				; mov [AddBulRight], 0
				; sub [AddBulRight], 10
				; mov [AddBulType], 1
				; mov ax, [DisBlockX]
				; mov [AddBulX], ax
				; mov ax, [DisBlockY]
				; mov [AddBulY], ax
				; call AddHostileBul
				; pop cx
				; loop Sniper8BShootLoop
				; mov [RoomTimer2], 0
		Skip1BRocket:
		mov ax, [DisBlockX]
		mov [x], ax
		mov ax, [DisBlockY]
		mov [y], ax
		mov ax, [En1VerVel]
		mov [VerVel], ax
		mov ah, [En1JCheck]
		mov [JCheck], ah
		; call Gravity
		; call BasicReset
		call NatMov
		mov ax, [x]
		mov [DisBlockX], ax
		mov ax, [y]
		mov [DisBlockY], ax
		mov ax, [VerVel]
		mov [En1VerVel], ax
		mov ah, [JCheck]
		mov [En1JCheck], ah
		mov dx, [En1LastPose]          ;Scout Boss
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile 
		call BossHealthBar
	Skip1BSol:
	push ax
	push dx
	push cx
	push bx
		mov ax, [DisBlock1X]
		mov [x], ax
		mov ax, [DisBlock1Y]
		mov [y], ax
		mov [PicX], 21
		mov [PicY], 24
			mov ax, [DisBlock1X]
			sub ax, 21 ; En1 Width dependent
			cmp ax, [SaX] ; What Direction ?
			jng Skip1BSkipBalHitEn1
				jmp Skip1BBalHitEn1
		Skip1BSkipBalHitEn1:
			add ax, 31 ; En1 Width dependent
			cmp ax, [SaX]
			jna Skip1BBalHitEn1
		Bal1BHitEn1:
				mov ax, [DisBlock1Y]
				add ax, 4800 ; En1 Height dependent
				cmp ax, [SaY]
				ja Skip1BSkipBalHitEn12
					
					jmp Skip1BBalHitEn1
			Skip1BSkipBalHitEn12:
				sub ax, 9600 ; En1 Height dependent
				cmp ax, [SaY]
				jb Skip1BSkipBalHitEn13
					jmp Skip1BBalHitEn1 
				Skip1BSkipBalHitEn13:
				sub [HP], 1
				Skip1BDecRT32:
	Skip1BBalHitEn1:
	pop bx
	pop cx
	pop dx
	pop ax
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom1BLoop	
	jmp Room1BLoop
EndRoom1BLoop:
	add [StartStageCheck], 1b
	mov dx, offset Be1B
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	mov [RoomTimer], 0
Be1BLoop:
	mov ax, [Clock]
TickBe1B:
	cmp ax, [Clock]
	je TickBe1B
	inc [RoomTimer]
	cmp [RoomTimer], 180
	ja EndBe1BLoop
	jmp Be1BLoop
EndBe1BLoop:
	jmp StageSelect
Start2:	
	mov ax, 40h
	mov es, ax
	mov dx, offset MAP21
	call CopyStageGround
	mov [ground], 24320
	mov [En2Type], 4
	mov [En2HP], 7
	mov [BulEn2Timer], 1
	mov [En2LastPose], offset Bombo
	mov [En2X], 250
	mov [En2Y], 24320
	mov [En2VerVel], 0
	mov [En2JCheck], 0
Room21Loop:
	mov ax, [Clock]
Tick21:
	cmp ax, [Clock]
	je Tick21
	mov dx, offset BKG21
	call DefaultRoom
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom21Loop	
	jmp Room21Loop
EndRoom21Loop:
	mov dx, offset MAP22
	call CopyStageGround
	mov [SaX], 5
	mov [En1Type], 2
	mov [En1HP], 7
	mov [En1LastPose], offset SebL
	mov [En1X], 290
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 21120
	mov [En2Type], 1
	mov [En2HP], 7
	mov [En2LastPose], offset SBLR1
	mov [En2X], 200
	mov [En2Y], 24320
	mov [En2VerVel], 0
	mov [En2JCheck], 0
Room22Loop:
	mov ax, [Clock]
Tick22:
	cmp ax, [Clock]
	je Tick22
	mov dx, offset BKG22
	call DefaultRoom
	; mov [ground], 21120
	; cmp [SaX], 201
	; jg Skip22DStep1
		; mov [ground], 24320
		; inc [SaJCheck] ; Change Grav
	; Skip22DStep1:	
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom22Loop	
	jmp Room22Loop
EndRoom22Loop:
	mov dx, offset MAP23
	call CopyStageGround
	mov [SkipInjector], 1
	mov [DisBlockX], 80
	mov [DisBlockY], 49920
	mov [SaX], 5
	mov [SaX], 5
	mov [En1Type], 2
	mov [En1HP], 7
	mov [En1LastPose], offset SebL
	mov [En1X], 290
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 27520
	mov [En2Type], 1
	mov [En2HP], 7
	mov [En2LastPose], offset SBLR1
	mov [En2X], 200
	mov [En2Y], 24320
	mov [En2VerVel], 0
	mov [En2JCheck], 0
Room23Loop:
	mov ax, [Clock]
Tick23:
	cmp ax, [Clock]
	je Tick23
	mov dx, offset BKG23
	call DefaultRoom
	inc [RoomTimer]
	cmp [RoomTimer], 30
	jb SkipNext23Block
		add [DisBlockX], 20
		sub [DisBlockY], 6400
		mov [RoomTimer], 0
		inc [RoomTimer2]
		cmp [RoomTimer2], 5
		jb SkipReset23Block
			mov [DisBlockX], 80
			mov [DisBlockY], 49920
			mov [RoomTimer2], 0
		SkipReset23Block:
	SkipNext23Block:
	mov ax, [DisBlockX]
	mov [x], ax
	mov ax, [DisBlockY]
	mov [y], ax
	mov dx, offset DisBlock           ;Disappearing block
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	
	mov [ground], 21120
	cmp [SaX], 10
	jng Skip23DStep1
		mov [ground], 49920
	Skip23DStep1:
	mov ax, [DisBlockY]
	sub ax, 4480
	cmp [SaY], ax
	ja Skip23DStep2
	mov ax, [DisBlockX]
	sub ax, 24
	cmp [SaX], ax
	jng Skip23DStep2
		mov ax, [DisBlockY]
		sub ax, 7680
		mov [ground], ax
	Skip23DStep2:
	mov ax, [DisBlockX]
	cmp [SaX], ax
	add ax, 24
	cmp [SaX], ax
	jng Skip23DStep3
		mov [ground], 49920
		inc [SaJCheck] ; Change Grav
	Skip23DStep3:
	cmp [SaY], 27520
	ja Skip23DStep4
	cmp [SaX], 217
	jng Skip23DStep4
		mov [ground], 24320
	Skip23DStep4:
	mov [SaLeftWall], 0
	cmp [SaY], 21120
	jna Skip23LeftWall
		mov [SaLeftWall], 11
	Skip23LeftWall:
	call CopyScrBuffer
	cmp [SaY], 27520
	ja Room23Loop2
	cmp [SaX], 297
	jnb EndRoom23Loop
	Room23Loop2:
	jmp Room23Loop
EndRoom23Loop:
	mov dx, offset MAP24
	call CopyStageGround
	mov [SkipInjector], 0
	mov [SaX], 5
	mov [SaLeftWall], 0
	mov [RoomTimer2], 154
	mov [RoomTimer], 0
	mov [DisBlockX], 100
	mov [DisBlockY], 0
Room24Loop:
	mov ax, [Clock]
Tick24:
	cmp ax, [Clock]
	je Tick24
	mov dx, offset BKG24
	call DefaultRoom
	; cmp [SaX], 193
	; jg Skip24SaRightWall2
		; mov [SaRightWall], 193
	; Skip24SaRightWall2:
	; cmp [SaX], 24
	; jg Skip24SaRightWall1
		; mov [SaRightWall], 24
	; Skip24SaRightWall1:
	; cmp [SaY], 19200
	; ja Skip24SaRightWall4
		; mov [SaRightWall], 298
	; Skip24SaRightWall4:
	
	; mov [SaLeftWall], 0
	; cmp [SaX], 105
	; jng Skip24SaLeftWall2
		; mov [SaLeftWall], 106
	; Skip24SaLeftWall2:
	; cmp [SaY], 19200
	; ja Skip24SaLeftWall5
		; mov [SaLeftWall], 0
	; Skip24SaLeftWall5:
	; mov [ground], 24320
	; cmp [SaX], 24
	; jng Skip24SaGround1
		; mov [ground], 18240
	; Skip24SaGround1:
	cmp [SaX], 105
	jng Skip24SaGround2
		; mov [ground], 24320
		cmp [RoomTimer], 10
		jb Skip24SaGround2
			inc [RoomTimer2]
			mov [RoomTimer], 0
	Skip24SaGround2:
	cmp [SaX], 194
	jng Skip24SaGround3
		; mov [ground], 18240
		cmp [RoomTimer2], 154
		jbe Skip24SaGround3
		cmp [RoomTimer2], 165
		jae Skip24SaGround3
		dec [RoomTimer2]
	Skip24SaGround3:
	; cmp [SaX], 275
	; jng Skip24SaGround4
		; mov [ground], 27520
	; Skip24SaGround4:
	; cmp [SaX], 285
	; jng Skip24SaGround5
		; mov [ground], 30720
	; Skip24SaGround5:
	; cmp [SaX], 295
	; jng Skip24SaGround6
		; mov [ground], 33920
	; Skip24SaGround6:
	inc [RoomTimer]
	cmp [RoomTimer], 10
	jna Skip24RTReset
		mov [RoomTimer], 10
	Skip24RTReset:
	cmp [DisBlockX], 30
	jng Skip24BombReset
		mov [DisBlockY], 0
		mov [DisBlockX], 0
	Skip24BombReset:
		add [DisBlockY], 1600
		mov ax, [DisBlockY]
		mov [y], ax
		cmp [DisBlockY], 24320
		jnb Explode24Bomb
			mov [x], 150
			mov dx, offset BombV          
			call OpenFile
			call ReadHeader
			call ReadPalette
			call CopyBitmap
			call CloseFile
			jmp Skip24Bomb
		Explode24Bomb:
			cmp [DisBlockY], 29120
			jae Skip24Bomb
			mov ax, 105
			mov cx, 6
			Bomb24Explosions:
				push cx
				push ax
				mov [x], ax
				mov dx, offset SBE   
				call OpenFile
				call ReadHeader
				call ReadPalette
				call CopyBitmap
				call CloseFile
				pop ax
				add ax, 15
				pop cx
				loop Bomb24Explosions
				cmp [SaX], 104
				jl Skip24Bomb
				cmp [SaX], 195
				jg Skip24Bomb
					sub [HP], 3
	Skip24Bomb:
	inc [DisBlockX]
	cmp [RoomTimer2], 165
	jna Skip24CapReset
		mov [RoomTimer2], 165
	Skip24CapReset:
	xor cx, cx
	mov cl, [RoomTimer2]
	mov [color], 12
	Capture24Point:
		cmp cl, 154
		jna Skip24CapturePoint
		mov [x], cx
		mov [y], 103
		call CapturePoint
		dec cl
		jmp Capture24Point
	Skip24CapturePoint:
	call CopyScrBuffer
	cmp [RoomTimer2], 165
	jb Room24Loop2
	cmp [SaX], 297
	jg EndRoom24Loop
	Room24Loop2:
	jmp Room24Loop
EndRoom24Loop:
	mov dx, offset MAP25
	call CopyStageGround
	mov [SkipInjector], 1
	mov [SaLeftWall], 0
	mov [SaX], 5
	mov [DisBlockX], 119
	mov [DisBlockY], 40320
	mov [DisBlockHP], 0
	mov [RoomTimer2], 0
	mov [RoomTimer3], 10
	mov [RoomTimer], 0
	mov [RoomTimer4], 174
Room25Loop:
	mov ax, [Clock]
Tick25:
	cmp ax, [Clock]
	je Tick25
	mov dx, offset BKG25
	call DefaultRoom
	mov [SaRightWall], 298
	cmp [SaY], 40320
	jna Skip25RightWall1
		mov [SaRightWall], 98
	Skip25RightWall1:
	cmp [SaY], 27520
	jna Skip25RightWall2
		mov [SaRightWall], 118
	Skip25RightWall2:
	cmp [SaY], 6400
	jna Skip25RightWall3
		mov [SaRightWall], 134
	Skip25RightWall3:
	cmp [SaX], 160
	jna Skip25RightWall4
		mov [SaRightWall], 267
	Skip25RightWall4:
	cmp [SaX], 220
	jl Skip25SpecRightWall
		mov [SaRightWall], 298
		cmp [SaY], 9920
		jna Skip25RightWall
			mov [SaRightWall], 267
		Skip25RightWall:
		cmp [SaX], 270
		jna Skip25RightWall5
			mov [SaRightWall], 298
		Skip25RightWall5:
	Skip25SpecRightWall:
	mov [ground], 33920
	cmp [SaX], 10
	jng Skip25DStep0
		mov [ground], 37120
	Skip25DStep0:
	cmp [SaX], 20
	jng Skip25DStep1
		mov [ground], 40320
	Skip25DStep1:
	cmp [SaX], 30
	jng Skip25DStep2
		mov [ground], 43520
	Skip25DStep2:
	cmp [SaX], 40
	jng Skip25DStep3
		mov [ground], 46720
	Skip25DStep3:
	cmp [SaX], 50
	jng Skip25DStep4
		mov [ground], 49920
	Skip25DStep4:
	cmp [SaX], 99
	jng Skip25DStep5
		mov [ground], 40320
	Skip25DStep5:
	cmp [SaX], 119
	jng Skip25DStep6
		mov [ground], 27520
	Skip25DStep6:
	cmp [SaX], 135
	jng Skip25DStep7
		mov [ground], 3200
	Skip25DStep7:
	cmp [SaX], 160
	jng Skip25DStep8
		mov [ground], 14720
		cmp [Sax], 200
		jg Skip25DStep8
			inc [RoomTimer4]
	Skip25DStep8:
	cmp [SaX], 200
	jng Skip25DStep9
		mov [ground], 16320
	Skip25DStep9:
	cmp [SaX], 210
	jng Skip25DStep10
		mov [ground], 49920
	Skip25DStep10:
	cmp [SaX], 270
	jng Skip25DStep11
		mov [ground], 21120
	Skip25DStep11:
	inc [RoomTimer]
	cmp [RoomTimer], 15
	jb SkipNext25Block
		add [DisBlockX], 20
		sub [DisBlockY], 12800
		mov [DisBlockHP], 1
		mov [RoomTimer], 0
		inc [RoomTimer2]
		cmp [RoomTimer2], 2
		jb SkipReset25Block
			mov [DisBlockX], 119
			mov [DisBlockY], 40320
			mov [RoomTimer2], 0
		SkipReset25Block:
	SkipNext25Block:
	cmp [DisBlockHP], 0
	jle Skip25PrintDisBlock
		mov ax, [DisBlockX]
		mov [x], ax
		mov ax, [DisBlockY]
		mov [y], ax
		mov dx, offset DisBlock2           ;Disappearing block
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
	Skip25PrintDisBlock:
	mov ax, [DisBlockX]
	add ax, 120
	mov [x], ax
	mov ax, [DisBlockY]
	sub ax, 8000
	mov [y], ax
	mov dx, offset DisBlock           ;Disappearing block
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	mov ax, [DisBlockY]
	sub ax, 8000
	sub ax, 4480
	cmp [SaY], ax
	ja Skip25DisStep1
	mov ax, [DisBlockX]
	add ax, 120
	sub ax, 24
	cmp [SaX], ax
	jng Skip25DisStep1
		mov ax, [DisBlockY]
		sub ax, 8000
		sub ax, 7680
		mov [ground], ax
	Skip25DisStep1:
	mov ax, [DisBlockX]
	add ax, 120
	add ax, 24
	cmp [SaX], ax
	jng Skip25DisStep2
		mov [ground], 49920
	Skip25DisStep2:
	push ax
	push dx
	push cx
	push bx
	xor bx, bx
	mov cx, 20
	Friendly25BulletsArr:
		mov ax, [FBulRight + bx]
		cmp ax, 0
		jne Skip25SkipFBul
			jmp Skip25FBul
	Skip25SkipFBul:
		mov ax, [FBulX + bx]
		cmp ax, 0
		jnl Skip25SkipFBul1
			mov [FBulRight + bx], 0
			mov [FBulType + bx], 0
			jmp Skip25FBul
	Skip25SkipFBul1:
		cmp ax, 299
		jng Skip25SkipFBul2
			mov [FBulRight + bx], 0
			mov [FBulType + bx], 0
			jmp Skip25FBul
	Skip25SkipFBul2:
		mov ax, [FBulX + bx] ; Useless
		mov [x], ax
		mov ax, [FBulY + bx]
		mov [y], ax
		mov [PicX], 21
		mov [PicY], 24
			mov ax, [FBulX + bx]
			sub ax, 21 ; En1 Width dependent
			cmp ax, [DisBlockX] ; What Direction ?
			jng Skip25SkipBulHitEn1
				jmp Skip25BulHitEn1
		Skip25SkipBulHitEn1:
			add ax, 26 ; En1 Width dependent
			cmp ax, [DisBlockX]
			jna Skip25BulHitEn1
		Bul25HitEn1:
				mov ax, [FBulY + bx]
				add ax, 4800 ; En1 Height dependent
				cmp ax, [DisBlockY]
				ja Skip25SkipBulHitEn12
					
					jmp Skip25BulHitEn1
			Skip25SkipBulHitEn12:
				sub ax, 9600 ; En1 Height dependent
				cmp ax, [DisBlockY]
				jb Skip25SkipBulHitEn13
					jmp Skip25BulHitEn1 
				Skip25SkipBulHitEn13:
				mov [FBulRight + bx], 0
				mov [FBulType + bx], 0
				sub [DisBlockHP], 1
				cmp [DisBlockHP], 0
				jl Skip25DecRT3
					dec [RoomTimer3]
				Skip25DecRT3:
	Skip25BulHitEn1:
	Skip25FBul:
	; moves on to the next bullet if there is one
		inc bx
		inc bx
		dec cx
		jz Finish25FBul
		jmp Friendly25BulletsArr
	Finish25FBul:
	pop bx
	pop cx
	pop dx
	pop ax
	push cx
	push dx
	push ax
	push bx
	mov [color], 13
	mov [y], 171
	mov cx, 10
Print25HealthBar:
		push cx
		cmp cl, [RoomTimer3]
		jne Skip25BlackBar
			jmp Skip25Elev
		Skip25BlackBar:
		mov [x], 100
		push [y]
		call PrintBlock
		pop [y]
		sub [y], 15
		cmp [SaX], 80
		jl Skip25ElevG
		cmp [SaX], 110
		jg Skip25ElevG
			mov ax, [y]
			sub ax, 10
			; di = cx*320, point to the correct screen line
			mov di,ax
			shl ax,6
			shl di,8
			add di,ax
			mov [ground], di
		Skip25ElevG:
		pop cx
		loop Print25HealthBar
	pop bx
	pop ax
	pop dx
	pop cx
	Skip25Elev:
	cmp [RoomTimer4], 184
	jna Skip25CapReset
		mov [RoomTimer4], 184
	Skip25CapReset:
	xor cx, cx
	mov cl, [RoomTimer4]
	mov [color], 12
	Capture25Point:
		cmp cl, 174
		jna Skip25CapturePoint
		mov [x], cx
		mov [y], 73
		call CapturePoint
		dec cl
		jmp Capture25Point
	Skip25CapturePoint:
	call CopyScrBuffer
	cmp [RoomTimer4], 184
	jb Room25Loop2
	cmp [SaX], 297
	jg EndRoom25Loop
	Room25Loop2:
	jmp Room25Loop
EndRoom25Loop:
	mov dx, offset MAP26
	call CopyStageGround
	mov [SkipInjector], 0
	mov [SaX], 5
	mov [DisBlockY], 33920
	mov [RoomTimer], 0
Room26Loop:
	mov ax, [Clock]
Tick26:
	cmp ax, [Clock]
	je Tick26
	mov dx, offset BKG26
	call DefaultRoom
	; cmp [SaX], 0
	; jng Skip26DStep0
		; mov [ground], 21120
	; Skip26DStep0:
	; cmp [SaX], 20
	; jng Skip26DStep1
		; mov [ground], 24320
	; Skip26DStep1:
	; cmp [SaX], 210
	; jng Skip26DStep2
		; mov [ground], 27520
	; Skip26DStep2:
	; cmp [SaX], 220
	; jng Skip26DStep3
		; mov [ground], 30720
	; Skip26DStep3:
	; cmp [SaX], 230
	; jng Skip26DStep4
		; mov [ground], 33920
	; Skip26DStep4:
	; cmp [SaX], 240
	; jng Skip26DStep5
		; mov [ground], 37120
	; Skip26DStep5:
	; cmp [SaX], 250
	; jng Skip26DStep6
		; mov [ground], 40320
	; Skip26DStep6:
	; cmp [SaX], 260
	; jng Skip26DStep7
		; mov [ground], 43520
	; Skip26DStep7:
	;cmp [RoomTimer], 6
	cmp [RoomTimer], 15
	jl Skip26AddHBul
		mov [AddBulRight], 8
		mov [AddBulType], 1
		mov [AddBulX], 0
		mov ax, [DisBlockY]
		mov [AddBulY], ax
		call AddHostileBul
	Skip26AddHBul:
	add [DisBlockY], 3200
	cmp [DisBlockY], 46720
	jb Skip26RTReset
		mov [DisBlockY], 30080
	Skip26RTReset:
	inc [RoomTimer]
	cmp [RoomTimer], 30
	jb Skip26RTReset1
		mov [RoomTimer], 0
	Skip26RTReset1:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom26Loop	
	jmp Room26Loop
EndRoom26Loop:
	mov dx, offset MAP2B
	call CopyStageGround
	mov [SaLeftWall], 0
	mov [SaX], 5
	mov [DisBlockX], 293
	mov [DisBlockY], 24320
	mov [DisBlockHP], 28
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
	mov [RoomTimer], 0
	mov [RoomTimer4], 0
	call CleanBullets
Room2BLoop:
	mov ax, [Clock]
Tick2B:
	cmp ax, [Clock]
	je Tick2B
	mov dx, offset BKG2B
	call DefaultRoom
	cmp [SaX], 260
	jng Skip2BCap
		add [DisBlockX], 2 
		inc [RoomTimer]
	Skip2BCap:
	cmp [DisBlockX], 305
	jna Skip2BCapReset
		mov [DisBlockX], 305
	Skip2BCapReset:
	xor cx, cx
	mov cx, [DisBlockX]
	mov [color], 12
	Capture2BPoint:
		cmp cx, 293
		jna Skip2BCapturePoint
		mov [x], cx
		mov [y], 163
		call CapturePoint
		dec cx
		jmp Capture2BPoint
	Skip2BCapturePoint:
	push ax
	push dx
	push cx
	push bx
	xor bx, bx
	mov cx, 20
	Friendly2BBulletsArr:
		mov ax, [FBulRight + bx]
		cmp ax, 0
		jne Skip2BSkipFBul
			jmp Skip2BFBul
	Skip2BSkipFBul:
		mov ax, [FBulX + bx]
		cmp ax, 0
		jnl Skip2BSkipFBul1
			mov [FBulRight + bx], 0
			mov [FBulType + bx], 0
			jmp Skip2BFBul
	Skip2BSkipFBul1:
		cmp ax, 299
		jng Skip2BSkipFBul2
			mov [FBulRight + bx], 0
			mov [FBulType + bx], 0
			jmp Skip2BFBul
	Skip2BSkipFBul2:
		mov ax, [FBulX + bx] ; Useless
		mov [x], ax
		mov ax, [FBulY + bx]
		mov [y], ax
		mov [PicX], 21
		mov [PicY], 24
			mov ax, [FBulX + bx]
			sub ax, 21 ; En1 Width dependent
			cmp ax, [DisBlockX] ; What Direction ?
			jng Skip2BSkipBulHitEn1
				jmp Skip2BBulHitEn1
		Skip2BSkipBulHitEn1:
			add ax, 26 ; En1 Width dependent
			cmp ax, [DisBlockX]
			jna Skip2BBulHitEn1
		Bul2BHitEn1:
				mov ax, [FBulY + bx]
				add ax, 4800 ; En1 Height dependent
				cmp ax, [DisBlockY]
				ja Skip2BSkipBulHitEn12
					
					jmp Skip2BBulHitEn1
			Skip2BSkipBulHitEn12:
				sub ax, 9600 ; En1 Height dependent
				cmp ax, [DisBlockY]
				jb Skip2BSkipBulHitEn13
					jmp Skip2BBulHitEn1 
				Skip2BSkipBulHitEn13:
				mov [FBulRight + bx], 0
				mov [FBulType + bx], 0
				mov [FBulY + bx], 0
				sub [DisBlockHP], 1
				Skip2BDecRT3:
	Skip2BBulHitEn1:
	Skip2BFBul:
	; moves on to the next bullet if there is one
		inc bx
		inc bx
		dec cx
		jz Finish2BFBul
		jmp Friendly2BBulletsArr
	Finish2BFBul:
	pop bx
	pop cx
	pop dx
	pop ax
	cmp [DisBlockHP], 0
	jle Skip2BSol
	cmp [RoomTimer], 1
	jl Skip2BSol
		add [DisBlockY], 1920
		cmp [DisBlockY], 43520
		jna Skip2BSolYReset
			mov [DisBlockY], 43520
			dec [DisBlockX]
			inc [RoomTimer2]
			cmp [RoomTimer2], 20
			jl Skip2BRocket
				mov [AddBulRight], 0
				sub [AddBulRight], 6
				mov [AddBulType], 2
				mov [AddBulX], 298
				mov [AddBulY], 43520
				call AddHostileBul
				mov [RoomTimer2], 0
			Skip2BRocket:
		Skip2BSolYReset:
		mov [x], 285
		mov ax, [DisBlockY]
		mov [y], ax
		mov dx, offset SoLS          ;Soldier Boss
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile 
		call BossHealthBar
	Skip2BSol:
	
	dec [DisBlockX]
	call CopyScrBuffer
	cmp [DisBlockX], 293
	jnb Skip2BCapReset1
		mov [DisBlockX], 293
	Skip2BCapReset1:
	cmp [DisBlockX], 303
	jg EndRoom2BLoop	
	jmp Room2BLoop
EndRoom2BLoop:
	add [StartStageCheck], 10b
	mov dx, offset Be2B
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	mov [RoomTimer], 0
Be2BLoop:
	mov ax, [Clock]
TickBe2B:
	cmp ax, [Clock]
	je TickBe2B
	inc [RoomTimer]
	cmp [RoomTimer], 180
	ja EndBe2BLoop
	jmp Be2BLoop
EndBe2BLoop:
	jmp StageSelect
Start3:	
	mov ax, 40h
	mov es, ax
	mov dx, offset MAP31
	call CopyStageGround
	; mov [ground], 33920
Room31Loop:
	mov ax, [Clock]
Tick31:
	cmp ax, [Clock]
	je Tick31
	mov dx, offset BKG31
	call DefaultRoom
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom31Loop
	jmp Room31Loop
EndRoom31Loop:
	mov dx, offset MAP32
	call CopyStageGround
	mov [SaX], 5
Room32Loop:
	mov ax, [Clock]
Tick32:
	cmp ax, [Clock]
	je Tick32
	mov dx, offset BKG32
	call DefaultRoom
	; mov [ground], 33920
	; cmp [SaX], 50
	; jng Skip32DStep1
		; mov [ground], 37120
	; Skip32DStep1:
	; cmp [SaX], 210
	; jng Skip32DStep4
		; mov [ground], 33920
	; Skip32DStep4:
	cmp [SaY], 32320
	jna Skip32BurnStep3
	cmp [SaX], 65
	jng Skip32BurnStep1
	cmp [SaX], 95
	jnl Skip32BurnStep1
		mov [SaFire], 1
	Skip32BurnStep1:
	cmp [SaX], 115
	jng Skip32BurnStep2
	cmp [SaX], 145
	jnl Skip32BurnStep2
		mov [SaFire], 1
	Skip32BurnStep2:
	cmp [SaX], 165
	jng Skip32BurnStep3
	cmp [SaX], 195
	jnl Skip32BurnStep3
		mov [SaFire], 1
	Skip32BurnStep3:
	mov dx, offset DisBlock3
	cmp [RoomTimer], 4
	jbe Skip32FBDir
		mov dx, offset DisBlock4
			cmp [RoomTimer], 8
			jbe Skip32FBDir
			mov [RoomTimer], 0
	Skip32FBDir:
	inc [RoomTimer]
	mov [x], 80
	mov [y], 38720
	push cx
	mov cx, 3
	Loop25FBs:
		push cx
		push dx
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
		add [x], 50
		pop dx
		pop cx
	loop Loop25FBs
	pop cx
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom32Loop	
	jmp Room32Loop
EndRoom32Loop:
	mov dx, offset MAP33
	call CopyStageGround
	mov [SaX], 5
	mov [RoomTimer2], 214
	mov [RoomTimer], 0
	mov [RoomTimer3], 0
Room33Loop:
	mov ax, [Clock]
Tick33:
	cmp ax, [Clock]
	je Tick33
	mov dx, offset BKG33
	call DefaultRoom
	; mov [SaRightWall], 179
	; cmp [SaY], 40320
	; ja Skip33RightWall
		; mov [SaRightWall], 260
	; Skip33RightWall:
	; cmp [SaX], 185
	; jb Skip33RightWall1
		; mov [SaRightWall], 260
	; Skip33RightWall1:
	; cmp [SaY], 37120
	; ja Skip33RightWall2
		; mov [SaRightWall], 298
	; Skip33RightWall2:
	; mov [ground], 33920
	; cmp [SaX], 151
	; jng Skip33DStep1
		; mov [ground], 37120
	; Skip33DStep1:
	cmp [SaX], 161
	jng Skip33DStep2
		; mov [ground], 46720
		cmp [SaY], 44160
		jna Skip33DStep2
			mov [SaFire], 0
	Skip33DStep2:
	cmp [SaX], 180
	jng Skip33DStep3
		mov [ground], 40320
		cmp [RoomTimer3], 5
		jb Skip33DStep3
			inc [RoomTimer2]
			mov [RoomTimer3], 0
	Skip33DStep3:
	cmp [SaX], 240
	jng Skip33DStep4
		; mov [ground], 46720
		dec [RoomTimer3]
		cmp [SaY], 44160
		jna Skip33DStep4
			mov [SaFire], 0
	Skip33DStep4:
	; cmp [SaX], 265
	; jng Skip33DStep5
		; mov [ground], 33920
	; Skip33DStep5:
	cmp [SaX], 65
	jng Skip33BurnStep1
	cmp [SaX], 95
	jnl Skip33BurnStep1
		mov [SaFire], 1
	Skip33BurnStep1:
	mov dx, offset DisBlock3
	cmp [RoomTimer], 4
	jbe Skip33FBDir
		mov dx, offset DisBlock4
			cmp [RoomTimer], 8
			jbe Skip33FBDir
			mov [RoomTimer], 0
	Skip33FBDir:
	inc [RoomTimer]
	inc [RoomTimer3]
	mov [x], 80
	mov [y], 35840
	push cx
	mov cx, 6
	Loop33FBs:
		push cx
		push dx
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
		sub [y], 6400
		pop dx
		pop cx
	loop Loop33FBs
	pop cx
	cmp [RoomTimer2], 225
	jna Skip33CapReset
		mov [RoomTimer2], 225
	Skip33CapReset:
	xor cx, cx
	mov cl, [RoomTimer2]
	mov [color], 12
	Capture33Point:
		cmp cl, 214
		jna Skip33CapturePoint
		mov [x], cx
		mov [y], 152
		call CapturePoint
		dec cl
		jmp Capture33Point
	Skip33CapturePoint:
	call CopyScrBuffer
	cmp [RoomTimer2], 225
	jb Room33Loop2
	cmp [SaX], 297
	jg EndRoom33Loop	
	Room33Loop2:
	jmp Room33Loop
EndRoom33Loop:
	mov dx, offset MAP34
	call CopyStageGround
	mov [SaX], 5
	mov [SaFire], 1
Room34Loop:
	mov ax, [Clock]
Tick34:
	cmp ax, [Clock]
	je Tick34
	mov dx, offset BKG34
	call DefaultRoom
	; mov [SaRightWall], 15
	; cmp [SaY], 28160
	; ja Skip34RightWall
		; mov [SaRightWall], 194
	; Skip34RightWall:
	; cmp [SaX], 100
	; jb Skip34RightWall1
		; cmp [SaY], 9280
		; jb Skip34RightWall1
			; mov [SaRightWall], 260
	; Skip34RightWall1:
	; cmp [SaX], 220
	; jb Skip34RightWall2
		; mov [SaRightWall], 298
	; Skip34RightWall2:
	; mov [ground], 33920
	; cmp [SaX], 16
	; jng Skip34DStep1
		; mov [ground], 28160
	; Skip34DStep1:
	; cmp [SaX], 28
	; jng Skip34DStep2
		; mov [ground], 24960
	; Skip34DStep2:
	; cmp [SaX], 42
	; jng Skip34DStep3
		; mov [ground], 23680
	; Skip34DStep3:
	; cmp [SaX], 83
	; jng Skip34DStep4
		; mov [ground], 21120
	; Skip34DStep4:
	; cmp [SaX], 133
	; jng Skip34DStep5
		; mov [ground], 17920
	; Skip34DStep5:
	; cmp [SaX], 143
	; jng Skip34DStep6
		; mov [ground], 14720
	; Skip34DStep6:
	; cmp [SaX], 153
	; jng Skip34DStep7
		; mov [ground], 11520
	; Skip34DStep7:
	cmp [SaFire], 0
	jne Skip34Reignite
		inc [SaFire]
	Skip34Reignite:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom34Loop	
	jmp Room34Loop
EndRoom34Loop:
	mov dx, offset MAP35
	call CopyStageGround
	mov [SaX], 5
	mov [SaLeftWall], 0
	mov [SaRightWall], 298
	mov [RoomTimer2], 0
	mov [RoomTimer], 0
	mov [RoomTimer3], 0
	mov [DisBlockX], 180
Room35Loop:
	mov ax, [Clock]
Tick35:
	cmp ax, [Clock]
	je Tick35
	mov dx, offset BKG35
	call DefaultRoom
	; mov [ground], 11520
	; cmp [SaX], 40
	; jng Skip35DStep1
		; mov [ground], 37120
	; Skip35DStep1:
	; cmp [SaX], 199
	; jng Skip35DStep2
		; mov [ground], 33920
	; Skip35DStep2:
	; mov [SaLeftWall], 0
	; cmp [SaY], 14720
	; jna Skip35LeftWall
		; mov [SaLeftWall], 41
	Skip35LeftWall:
	cmp [SaY], 23040
	jna Skip35BurnStep3
	cmp [SaY], 34240
	ja Skip35BurnStep3
	cmp [SaX], 65
	jng Skip35BurnStep1
	cmp [SaX], 95
	jnl Skip35BurnStep1
		mov [SaFire], 1
	Skip35BurnStep1:
	cmp [SaX], 115
	jng Skip35BurnStep2
	cmp [SaX], 145
	jnl Skip35BurnStep2
		mov [SaFire], 1
	Skip35BurnStep2:
	cmp [SaX], 165
	jng Skip35BurnStep3
	cmp [SaX], 195
	jnl Skip35BurnStep3
		mov [SaFire], 1
	Skip35BurnStep3:
	mov dx, offset DisBlock3
	cmp [RoomTimer], 4
	jbe Skip35FBDir
		mov dx, offset DisBlock4
			cmp [RoomTimer], 8
			jbe Skip35FBDir
				mov [RoomTimer], 0
	Skip35FBDir:
	inc [RoomTimer]
	inc [RoomTimer3]
	sub [DisBlockX], 10
	cmp [DisBlockX], 0
	jg Skip35ResetFireBalls
		mov [SaVerVel], 1920
		inc [SaJCheck]
		mov [DisBlockX], 180
	Skip35ResetFireBalls:
	mov [x], 80
	mov [y], 29440
	push cx
	mov cx, 3
	Loop35FBs:
		push cx
		push dx
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
		add [x], 50
		pop dx
		pop cx
	loop Loop35FBs
	pop cx
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom35Loop	
	jmp Room35Loop
EndRoom35Loop:
	mov dx, offset MAP3B
	call CopyStageGround
	mov [SaX], 5
	mov [SaLeftWall], 0
	mov [RoomTimer], 175
	mov [RoomTimer3], 0
	mov [RoomTimer2], 15
	mov [DisBlockX], 164
	mov [DisBlockY], 33920
	mov [DisBlockHP], 28
Room3BLoop:
	mov ax, [Clock]
Tick3B:
	cmp ax, [Clock]
	je Tick3B
	mov dx, offset BKG3B
	call DefaultRoom
	push ax
	push dx
	push cx
	push bx
	xor bx, bx
	mov cx, 20
	Friendly3BBulletsArr:
		mov ax, [FBulType + bx]
		cmp ax, 0
		jne Skip3BSkipFBul
			jmp Skip3BFBul
	Skip3BSkipFBul:
		mov ax, [FBulX + bx]
		cmp ax, 0
		jnl Skip3BSkipFBul1
			mov [FBulRight + bx], 0
			jmp Skip3BFBul
	Skip3BSkipFBul1:
		cmp ax, 299
		jng Skip3BSkipFBul2
			mov [FBulRight + bx], 0
			jmp Skip3BFBul
	Skip3BSkipFBul2:
		mov ax, [FBulX + bx] ; Useless
		mov [x], ax
		mov ax, [FBulY + bx]
		mov [y], ax
		mov [PicX], 21
		mov [PicY], 24
			mov ax, [FBulX + bx]
			sub ax, 21 ; En1 Width dependent
			cmp ax, [DisBlockX] ; What Direction ?
			jng Skip3BSkipBulHitEn1
				jmp Skip3BBulHitEn1
		Skip3BSkipBulHitEn1:
			add ax, 26 ; En1 Width dependent
			cmp ax, [DisBlockX]
			jna Skip3BBulHitEn1
		Bul3BHitEn1:
				mov ax, [FBulY + bx]
				add ax, 4800 ; En1 Height dependent
				cmp ax, [DisBlockY]
				ja Skip3BSkipBulHitEn12
					
					jmp Skip3BBulHitEn1
			Skip3BSkipBulHitEn12:
				sub ax, 9600 ; En1 Height dependent
				cmp ax, [DisBlockY]
				jb Skip3BSkipBulHitEn13
					jmp Skip3BBulHitEn1 
				Skip3BSkipBulHitEn13:
				cmp [SaX], 120
					jng ReflectBul3B
					mov [FBulType + bx], 0
					mov [FBulY + bx], 0
					mov [FBulRight + bx], 0
					sub [DisBlockHP], 1
				ReflectBul3B:
					mov ax, [FBulRight + bx]
					not ax
					inc ax
					mov [AddBulRight], ax
					mov ax, [FBulType + bx]
					mov [AddBulType], ax
					mov ax, [FBulY + bx]
					mov [AddBulY], ax
					mov ax, [FBulX + bx]
					mov [AddBulX], ax
					call AddHostileBul
					mov [FBulType + bx], 0
					mov [FBulRight + bx], 0
					mov [FBulY + bx], 0
				Skip3BDecRT3:
	Skip3BBulHitEn1:
	Skip3BFBul:
	; moves on to the next bullet if there is one
		inc bx
		inc bx
		dec cx
		jz Finish3BFBul
		jmp Friendly3BBulletsArr
	Finish3BFBul:
	pop bx
	pop cx
	pop dx
	pop ax
	sub [RoomTimer2], 1
	cmp [RoomTimer2], 0
	jg Skip3BResetFireBalls
		cmp [SaX], 190
		jg Skip3BPushUp
		cmp [SaX], 120
		jng Skip3BPushUp
			mov [SaVerVel], 2880
			inc [SaJCheck]
		Skip3BPushUp:
		mov [RoomTimer2], 30
		mov [color], 11
		mov [x], 140
		mov [y], 33920
		call PrintBlock
	Skip3BResetFireBalls:
	cmp [SaX], 136
	jng Skip3BCap
	cmp [SaX], 206
	jg Skip3BCap
		cmp [RoomTimer3], 10
		jb Skip3BCap
			inc [RoomTimer]
			mov [RoomTimer3], 0
	Skip3BCap:
	inc [RoomTimer3]
	cmp [DisBlockHP], 0
	jle Skip3BSol
		mov [RoomTimer], 175
		;inc [RoomTimer2]
		;cmp [RoomTimer2], 20
		;jl Skip3BRocket
		;	mov [AddBulRight], 0
		;	sub [AddBulRight], 6
		;	mov [AddBulType], 2
		;	mov [AddBulX], 298
		;	mov [AddBulY], 43520
		;	call AddHostileBul
		;	mov [RoomTimer2], 0
		;Skip3BRocket:
		mov [x], 164
		mov [y], 33920
		mov dx, offset PyLS          ;Pyro Boss
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile 
		call BossHealthBar
	Skip3BSol:
	cmp [RoomTimer], 186
	jna Skip3BCapReset
		mov [RoomTimer], 186
	Skip3BCapReset:
	xor cx, cx
	mov cl, [RoomTimer]
	mov [color], 12
	Capture3BPoint:
		cmp cl, 175
		jna Skip3BCapturePoint
		mov [x], cx
		mov [y], 133
		call CapturePoint
		dec cl
		jmp Capture3BPoint
	Skip3BCapturePoint:
	cmp [SaY], 10880
	jna Skip3BBurnStep1
	cmp [SaY], 21760
	ja Skip3BBurnStep1
	cmp [SaX], 120
	jng Skip3BBurnStep1
	cmp [SaX], 185
	jnl Skip3BBurnStep1
		mov [SaFire], 1
	Skip3BBurnStep1:
	mov dx, offset DisBlock3
	cmp [DisBlock1X], 4
	jbe Skip3BFBDir
		mov dx, offset DisBlock4
			cmp [DisBlock1X], 8
			jbe Skip3BFBDir
				mov [DisBlock1X], 0
	Skip3BFBDir:
	inc [DisBlock1X]
	mov [x], 135
	mov [y], 17280
	push cx
	mov cx, 3
	Loop3BFBs:
		push cx
		push dx
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
		add [x], 20
		pop dx
		pop cx
	loop Loop3BFBs
	pop cx
	call CopyScrBuffer
	cmp [RoomTimer], 186
	jnb EndRoom3BLoop	
	jmp Room3BLoop
EndRoom3BLoop:
	add [StartStageCheck], 100b
	mov dx, offset Be3B
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	mov [RoomTimer], 0
Be3BLoop:
	mov ax, [Clock]
TickBe3B:
	cmp ax, [Clock]
	je TickBe3B
	inc [RoomTimer]
	cmp [RoomTimer], 180
	ja EndBe3BLoop
	jmp Be3BLoop
EndBe3BLoop:
	jmp StageSelect
Start4:	
	mov ax, 40h
	mov es, ax
	mov dx, offset MAP41
	call CopyStageGround
	mov [ground], 24320
	mov [ceiling], 16000
	mov [AddBulRight], 0
	mov [AddBulType], 4
	mov [AddBulX], 150
	mov [AddBulY], 28800
	call AddHostileBul
	mov [AddBulX], 152
	call AddHostileBul
	mov [AddBulX], 154
	call AddHostileBul
	mov [AddBulX], 200
	mov [AddBulY], 40960
	call AddHostileBul
	mov [AddBulX], 208
	call AddHostileBul
	mov [AddBulX], 204
	call AddHostileBul
Room41Loop:
	mov ax, [Clock]
Tick41:
	cmp ax, [Clock]
	je Tick41
	mov dx, offset BKG41
	call DefaultRoom
	; mov [ground], 24320
	; cmp [SaX], 156
	; jna Skip41DStep
		; mov [ground], 37120
	; Skip41DStep:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom41Loop	
	jmp Room41Loop
EndRoom41Loop:
	mov dx, offset MAP42
	call CopyStageGround
	mov [SaX], 5
	call CleanBullets
	mov [ceiling], 35200
	mov [RoomTimer3], 0
	mov [RoomTimer4], 0
	mov [RoomTimer2], 0
Room42Loop:
	mov ax, [Clock]
Tick42:
	cmp ax, [Clock]
	je Tick42
	mov dx, offset BKG42
	call DefaultRoom
	; mov [ground], 37120
	; cmp [SaX], 30
	; jna Skip42DStep
		; mov [ground], 40320
	; Skip42DStep:
	; cmp [SaX], 134
	; jna Skip42DStep1
		; mov [ground], 37120
	; Skip42DStep1:
	; cmp [SaX], 144
	; jna Skip42DStep2
		; mov [ground], 33920
	; Skip42DStep2:
	mov [ceiling], 35200
	cmp [SaX], 130
	jna Skip42Ceiling
		mov [ceiling], 25600
	Skip42Ceiling:
	cmp [RoomTimer3], 1
	je Skip42IntelTake
	cmp [SaX], 80
	jng Skip42IntelTake
		cmp [SaX], 120
		ja Skip42IntelTake
		cmp [RoomTimer4], 120
		ja Skip42IntelTake
			mov [RoomTimer3], 1
			mov [SaFire], 10
			sub [HP], 4
			mov dx, offset SBE
			mov [x], 100
			mov [y], 37120
			call OpenFile
			call ReadHeader
			call ReadPalette
			call CopyBitmap
			call CloseFile
	Skip42IntelTake:
	cmp [RoomTimer3], 1
	je Skip42IntelPrint
		inc [RoomTimer4]
		cmp [RoomTimer4], 120
		ja Skip42IntelPrint
		SkipSkip42IntelPrint:
			mov dx, offset Intel
			mov [x], 100
			mov [y], 37120
			call OpenFile
			call ReadHeader
			call ReadPalette
			call CopyBitmap
			call CloseFile
	Skip42IntelPrint:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom42Loop	
	jmp Room42Loop
EndRoom42Loop:
	mov dx, offset MAP43
	call CopyStageGround
	mov [SaX], 5
	call CleanBullets
	mov [RoomTimer2], 153
	mov [RoomTimer], 0
	mov [RoomTimer3], 0
	mov [ceiling], 0
	mov [AddBulRight], 0
	mov [AddBulType], 4
	mov [AddBulX], 174
	mov [AddBulY], 16640
	call AddHostileBul
	mov [AddBulX], 176
	call AddHostileBul
	mov [AddBulX], 178
	call AddHostileBul
	mov [AddBulX], 285
	mov [AddBulY], 24960
	call AddHostileBul
	mov [AddBulX], 287
	call AddHostileBul
	mov [AddBulX], 290
	call AddHostileBul
Room43Loop:
	mov ax, [Clock]
Tick43:
	cmp ax, [Clock]
	je Tick43
	mov dx, offset BKG43
	call DefaultRoom
	mov [SaRightWall], 119
	cmp [SaY], 12800
	ja Skip43RightWall
		mov [SaRightWall], 298
	Skip43RightWall:
	cmp [SaX], 140
	jb Skip43RightWall1
		mov [SaRightWall], 298
	Skip43RightWall1:
	cmp [SaY], 37120
	ja Skip43RightWall2
		mov [SaRightWall], 298
	Skip43RightWall2:
	; mov [ground], 33920
	; cmp [SaX], 50
	; jng Skip43DStep01
		; mov [ground], 30720
	; Skip43DStep01:
	; cmp [SaX], 60
	; jng Skip43DStep02
		; mov [ground], 27520
	; Skip43DStep02:
	; cmp [SaX], 70
	; jng Skip43DStep03
		; mov [ground], 24320
	; Skip43DStep03:
	; cmp [SaX], 80
	; jng Skip43DStep04
		; mov [ground], 21120
	; Skip43DStep04:
	Skip43DStep2:
	cmp [SaX], 120
	jng Skip43DStep3
		; mov [ground], 12800
		cmp [RoomTimer3], 5
		jb Skip43DStep3
			inc [RoomTimer2]
			mov [RoomTimer3], 0
	Skip43DStep3:
	cmp [SaX], 180
	jng Skip43DStep4
		; mov [ground], 21120
		dec [RoomTimer3]
	Skip43DStep4:
	cmp [SaX], 146
	ja Skip43BlockRightWall
		cmp [SaY], 12480
		ja Skip43BlockRightWall
			cmp [SaY], 2880
			jb Skip43BlockRightWall
				mov [SaRightWall], 145
	Skip43BlockRightWall:
	mov [ceiling], 0
	cmp [SaX], 176
	ja Skip43BlockCeiling
		cmp [SaX], 145
		jb Skip43BlockCeiling
			cmp [SaY], 10000
			jb Skip43BlockCeiling
				mov [ceiling], 12480
	Skip43BlockCeiling:
	inc [RoomTimer3]
	cmp [RoomTimer2], 164
	jna Skip43CapReset
		mov [RoomTimer2], 164
	Skip43CapReset:
	xor cx, cx
	mov cl, [RoomTimer2]
	mov [color], 12
	Capture43Point:
		cmp cl, 153
		jna Skip43CapturePoint
		mov [x], cx
		mov [y], 67
		call CapturePoint
		dec cl
		jmp Capture43Point
	Skip43CapturePoint:
	call CopyScrBuffer
	cmp [RoomTimer2], 164
	jb Room43Loop2
	cmp [SaX], 297
	jg EndRoom43Loop	
	Room43Loop2:
	jmp Room43Loop
EndRoom43Loop:
	mov dx, offset MAP44
	call CopyStageGround
	mov [SaX], 5
	call CleanBullets
	mov [DisBlockX], 119
	mov [DisBlockY], 40320
	mov [DisBlockHP], 0
	mov [RoomTimer2], 0
	mov [RoomTimer3], 10
	mov [RoomTimer], 0
	mov [RoomTimer4], 204
	mov [AddBulRight], 0
	mov [AddBulType], 4
	mov [AddBulX], 237
	mov [AddBulY], 17920
	call AddHostileBul
	mov [AddBulY], 18560
	call AddHostileBul
	mov [AddBulY], 19200
	call AddHostileBul
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
Room44Loop:
	mov ax, [Clock]
Tick44:
	cmp ax, [Clock]
	je Tick44
	mov dx, offset BKG44
	call DefaultRoom
	; mov [ground], 21120
	mov [ceiling], 0
	; cmp [SaX], 30
	; jng Skip44DStep0
		; mov [ground], 24320
	; Skip44DStep0:
	; cmp [SaX], 40
	; jng Skip44DStep1
		; mov [ground], 27520
	; Skip44DStep1:
	; cmp [SaX], 50
	; jng Skip44DStep2
		; mov [ground], 30720
	; Skip44DStep2:
	cmp [SaX], 168
	jng Skip44DStep4
		mov [ceiling], 25600
		cmp [SaY], 20000
		ja Skip44DStep4Change
			mov [ceiling], 0
			cmp [RoomTimer2],0
				jne Skip44DStep4Change
				push cx
				mov cx, 46
				S44DStep4ChangeLoop:
				mov bx, cx
				mov [StageGround + bx], 70
				loop S44DStep4ChangeLoop
				inc [RoomTimer2]
				pop cx
		Skip44DStep4Change:
		cmp [Sax], 229
		jg Skip44DStep4
			inc [RoomTimer4]
			cmp [RoomTimer], 1
			je Skip44DStep4
				mov [AddBulRight], 0
				mov [AddBulType], 3
				mov [AddBulX], 186
				mov [AddBulY], 28800
				call AddHostileBul
				call AddHostileBul
				call AddHostileBul
				call AddHostileBul
				call AddHostileBul
				call AddHostileBul
				inc [RoomTimer]
	Skip44DStep4:
	cmp [SaX], 238
	jng Skip44DStep5
		mov [ceiling], 0
		cmp [RoomTimer2], 0
		je Skip44DStep5
			push cx
			mov cx, 46
			S44DStep45ChangeLoop:
			mov bx, cx
			mov [StageGround + bx], 120
			loop S44DStep45ChangeLoop
			dec [RoomTimer2]
			pop cx
		; mov [ground], 30720
	Skip44DStep5:
	cmp [RoomTimer4], 214
	jna Skip44CapReset
		mov [RoomTimer4], 214
	Skip44CapReset:
	xor cx, cx
	mov cl, [RoomTimer4]
	mov [color], 12
	Capture44Point:
		cmp cl, 204
		jna Skip44CapturePoint
		mov [x], cx
		mov [y], 117
		call CapturePoint
		dec cl
		jmp Capture44Point
	Skip44CapturePoint:
	call CopyScrBuffer
	cmp [RoomTimer4], 214
	jb Room44Loop2
	cmp [SaX], 297
	jg EndRoom44Loop
	Room44Loop2:
	jmp Room44Loop
EndRoom44Loop:
	mov dx, offset MAP45
	call CopyStageGround
	mov [SaX], 5
	call CleanBullets
	mov [AddBulRight], 0
	mov [AddBulType], 4
	mov [AddBulX], 243
	mov [AddBulY], 14720
	call AddHostileBul
	call AddHostileBul
	call AddHostileBul
	mov [AddBulY], 15360
	call AddHostileBul
	mov [AddBulY], 16000
	call AddHostileBul
	call AddHostileBul
	mov [ceiling], 12800
	mov [RoomTimer], 0
Room45Loop:
	mov ax, [Clock]
Tick45:
	cmp ax, [Clock]
	je Tick45
	mov dx, offset BKG45
	call DefaultRoom
	; mov [ground], 30720
	; cmp [SaX], 80
	; jna Skip45DStep
		; mov [ground], 27520
	; Skip45DStep:
	; cmp [SaX], 90
	; jna Skip45DStep1
		; mov [ground], 24320
	; Skip45DStep1:
	; cmp [SaX], 100
	; jna Skip45DStep2
		; mov [ground], 21120
	; Skip45DStep2:
	mov [SaRightWall], 298
	cmp [SaY], 21120
	jnb Skip45RightWall
		cmp [SaX], 245
		jae Skip45RightWall
			mov [SaRightWall], 220
	Skip45RightWall:
	mov [ceiling], 12800
	cmp [SaX], 243
	jnl Skip45Ceiling
	cmp [SaX], 222
	jng Skip45Ceiling
		mov [ceiling], 21120
	Skip45Ceiling:
	cmp [RoomTimer], 0
	jne Skip45Det
	push cx
	push bx
	mov cx, 20
	xor bx, bx
	FBul45Det:
		cmp [FBulX + bx], 222
		jng Skip45RemoveSticks
			cmp [FBulY + bx], 21120
			jne Skip45RemoveSticks
				pop bx
				pop cx
				dec [HBulType + 0]
				dec [HBulType + 6]
				dec [HBulType + 2]
				dec [HBulType + 8]
				dec [HBulType + 4]
				dec [HBulType + 10]
				inc [RoomTimer]
		Skip45RemoveSticks:
		add bx, 2
		loop FBul45Det
	pop bx
	pop cx
	cmp [RoomTimer], 0
	jne Skip45Det
	cmp [SaX], 222
	jng Skip45Det
		Det45:
		add [HBulY + 0], 3200
		add [HBulY + 6], 3200
		add [HBulY + 2], 3200
		add [HBulY + 8], 3200
		add [HBulY + 4], 3200
		add [HBulY + 10], 3200
		inc [RoomTimer]
	Skip45Det:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom45Loop	
	jmp Room45Loop
EndRoom45Loop:
	mov dx, offset MAP4B
	call CopyStageGround
	mov [SaX], 5
	mov [RoomTimer], 0
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
	mov [RoomTimer4], 0
	mov [En1X], 290
	mov [En1Y], 21120
	mov [DisBlockX], 263
	mov [En1Type], 24
	mov [En1HP], 0
	;mov [En1LastPose], offset DeLS
	mov [EnLeftWall], 0
	mov [ceiling], 0
	
Room4BLoop:
	mov ax, [Clock]
Tick4B:
	cmp ax, [Clock]
	je Tick4B
	mov dx, offset BKG4B
	call DefaultRoom
	
	; mov [ground], 21120
	cmp [SaX], 230
	jng Skip4BCap
		add [DisBlockX], 2
	Skip4BCap:
	cmp [DisBlockX], 275
	jna Skip4BCapReset
		mov [DisBlockX], 275
	Skip4BCapReset:
	xor cx, cx
	mov cx, [DisBlockX]
	mov [color], 12
	Capture4BPoint:
		cmp cx, 263
		jna Skip4BCapturePoint
		mov [x], cx
		mov [y], 143
		call CapturePoint
		dec cx
		jmp Capture4BPoint
	Skip4BCapturePoint:
	dec [DisBlockX]
	cmp [DisBlockX], 263
	jnb Skip4BCapReset1
		mov [DisBlockX], 263
	Skip4BCapReset1:
	call CopyScrBuffer
	cmp [DisBlockX], 273
	jg EndRoom4BLoop	
	jmp Room4BLoop
EndRoom4BLoop:
	add [StartStageCheck], 1000b
	jmp StageSelect
Start5:	
	mov ax, 40h
	mov es, ax
	mov dx, offset MAP51
	call CopyStageGround
	mov [ground], 33600
	mov [En2Type], 4
	mov [En2HP], 7
	mov [BulEn2Timer], 1
	mov [En2LastPose], offset Bombo
	mov [En2X], 250
	mov [En2Y], 24320
	mov [En2VerVel], 0
	mov [En2JCheck], 0
Room51Loop:
	mov ax, [Clock]
Tick51:
	cmp ax, [Clock]
	je Tick51
	mov dx, offset BKG51
	call DefaultRoom
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom51Loop	
	jmp Room51Loop
EndRoom51Loop:
	mov [SaX], 5
	mov [En1Type], 2
	mov [En1HP], 7
	mov [En1LastPose], offset SebL
	mov [En1X], 290
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 21120
	mov [En2Type], 1
	mov [En2HP], 7
	mov [En2LastPose], offset SBLR1
	mov [En2X], 200
	mov [En2Y], 24320
	mov [En2VerVel], 0
	mov [En2JCheck], 0
	mov [PLX], 10
	mov [PLY], 33600
Room52Loop:
	mov ax, [Clock]
Tick52:
	cmp ax, [Clock]
	je Tick52
	mov dx, offset BKG52
	call DefaultRoom
	
	call PushLoad
	call CopyScrBuffer
	cmp [PLX], 297
	jng Room52Loop2
	cmp [SaX], 297
	jg EndRoom52Loop
	Room52Loop2:
	jmp Room52Loop
EndRoom52Loop:
	mov [DisBlockX], 80
	mov [DisBlockY], 49920
	mov [SaX], 5
	mov [SaX], 5
	mov [En1Type], 2
	mov [En1HP], 7
	mov [En1LastPose], offset SebL
	mov [En1X], 290
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 27520
	mov [En2Type], 1
	mov [En2HP], 7
	mov [En2LastPose], offset SBLR1
	mov [En2X], 200
	mov [En2Y], 24320
	mov [En2VerVel], 0
	mov [En2JCheck], 0
	mov [PLX], 0
Room53Loop:
	mov ax, [Clock]
Tick53:
	cmp ax, [Clock]
	je Tick53
	mov dx, offset BKG53
	call DefaultRoom
	
	call PushLoad
	call CopyScrBuffer
	cmp [PLX], 297
	jng Room53Loop2
	cmp [SaX], 297
	jnb EndRoom53Loop
	Room53Loop2:
	jmp Room53Loop
EndRoom53Loop:
	mov [SaX], 5
	mov [RoomTimer2], 154
	mov [RoomTimer], 0
	mov [DisBlockX], 100
	mov [DisBlockY], 0
	mov [PLX], 0
Room54Loop:
	mov ax, [Clock]
Tick54:
	cmp ax, [Clock]
	je Tick54
	mov dx, offset BKG54
	call DefaultRoom
	
	call PushLoad
	call CopyScrBuffer
	cmp [PLX], 297
	jng Room54Loop2
	cmp [SaX], 297
	jg EndRoom54Loop
	Room54Loop2:
	jmp Room54Loop
EndRoom54Loop:
	mov dx, offset MAP55
	call CopyStageGround
	mov [SaLeftWall], 0
	mov [SaX], 5
	mov [DisBlockX], 119
	mov [DisBlockY], 40320
	mov [DisBlockHP], 0
	mov [RoomTimer2], 0
	mov [RoomTimer3], 10
	mov [RoomTimer], 0
	mov [RoomTimer4], 174
	mov [PLX], 0
Room55Loop:
	mov ax, [Clock]
Tick55:
	cmp ax, [Clock]
	je Tick55
	mov dx, offset BKG55
	call DefaultRoom
	
	; mov [ground], 33600
	; cmp [SaX], 218
	; jna Skip55DStep
		; mov [ground], 36800
	; Skip55DStep:
	; cmp [SaX], 228
	; jna Skip55DStep1
		; mov [ground], 40000
	; Skip55DStep1:
	; cmp [SaX], 238
	; jna Skip55DStep2
		; mov [ground], 43200
	; Skip55DStep2:
	
	cmp [PLX], 218
	jna Skip55PLStep
		mov [PLY], 36800
	Skip55PLStep:
	cmp [PLX], 228
	jna Skip55PLStep1
		mov [PLY], 40000
	Skip55PLStep1:
	cmp [PLX], 238
	jna Skip55PLStep2
		mov [PLY], 43200
	Skip55PLStep2:
	
	call PushLoad
	call CopyScrBuffer
	cmp [PLX], 297
	jng Room55Loop2
	cmp [SaX], 297
	jg EndRoom55Loop
	Room55Loop2:
	jmp Room55Loop
EndRoom55Loop:
	mov dx, offset MAP56
	call CopyStageGround
	mov [SaX], 5
	mov [DisBlockY], 33920
	mov [RoomTimer], 0
	mov [PLX], 0
Room56Loop:
	mov ax, [Clock]
Tick56:
	cmp ax, [Clock]
	je Tick56
	mov dx, offset BKG56
	call DefaultRoom
	
	; mov [ground], 43200
	; cmp [SaX], 198
	; jna Skip56DStep
		; mov [ground], 40000
	; Skip56DStep:
	; cmp [SaX], 208
	; jna Skip56DStep1
		; mov [ground], 36800
	; Skip56DStep1:
	; cmp [SaX], 218
	; jna Skip56DStep2
		; mov [ground], 33600
	; Skip56DStep2:
	; cmp [SaX], 228
	; jna Skip56DStep3
		; mov [ground], 30400
	; Skip56DStep3:
	
	cmp [PLX], 198
	jna Skip56PLStep
		mov [PLY], 40000
	Skip56PLStep:
	cmp [PLX], 208
	jna Skip56PLStep1
		mov [PLY], 36800
	Skip56PLStep1:
	cmp [PLX], 218
	jna Skip56PLStep2
		mov [PLY], 33600
	Skip56PLStep2:
	cmp [PLX], 228
	jna Skip56PLStep3
		mov [PLY], 30400
	Skip56PLStep3:
	call PushLoad
	call CopyScrBuffer
	cmp [PLX], 297
	jng Room56Loop2
	cmp [SaX], 297
	jg EndRoom56Loop
	Room56Loop2:
	jmp Room56Loop
EndRoom56Loop:
	mov dx, offset MAP57
	call CopyStageGround
	mov [SaX], 5
	mov [DisBlockY], 33920
	mov [RoomTimer], 0
	mov [PLX], 0
Room57Loop:
	mov ax, [Clock]
Tick57:
	cmp ax, [Clock]
	je Tick57
	mov dx, offset BKG57
	call DefaultRoom
	
	call PushLoad
	call CopyScrBuffer
	cmp [PLX], 297
	jng Room57Loop2
	cmp [SaX], 297
	jg EndRoom57Loop
	Room57Loop2:
	jmp Room57Loop
EndRoom57Loop:
	mov dx, offset MAP5B
	call CopyStageGround
	mov [SaLeftWall], 0
	mov [SaX], 5
	mov [DisBlockX], 293
	mov [DisBlockY], 24320
	mov [DisBlockHP], 28
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
	mov [RoomTimer], 0
	mov [RoomTimer4], 0
	mov [PLX], 0
	call CleanBullets
Room5BLoop:
	mov ax, [Clock]
Tick5B:
	cmp ax, [Clock]
	je Tick5B
	mov dx, offset BKG5B
	call DefaultRoom
	
	; mov [ground], 30400
	; cmp [SaX], 49
	; jna Skip5BDStep
		; mov [ground], 33600
	; Skip5BDStep:
	; cmp [SaX], 59
	; jna Skip5BDStep1
		; mov [ground], 36800
	; Skip5BDStep1:
	; cmp [SaX], 69
	; jna Skip5BDStep2
		; mov [ground], 40000
	; Skip5BDStep2:
	; cmp [SaX], 79
	; jna Skip5BDStep3
		; mov [ground], 43200
	; Skip5BDStep3:
	; cmp [SaX], 89
	; jna Skip5BDStep4
		; mov [ground], 46400
	; Skip5BDStep4:
	
	cmp [PLX], 49
	jna Skip5BPLStep
		mov [PLY], 33600
	Skip5BPLStep:
	cmp [PLX], 59
	jna Skip5BPLStep1
		mov [PLY], 36800
	Skip5BPLStep1:
	cmp [PLX], 69
	jna Skip5BPLStep2
		mov [PLY], 40000
	Skip5BPLStep2:
	cmp [PLX], 79
	jna Skip5BPLStep3
		mov [PLY], 43200
	Skip5BPLStep3:
	cmp [PLX], 89
	jna Skip5BPLStep4
		mov [PLY], 46400
	Skip5BPLStep4:
	call PushLoad
	call CopyScrBuffer
	cmp [PLX], 297
	jng Room5BLoop2
	cmp [SaX], 297
	jg EndRoom5BLoop
	Room5BLoop2:
	jmp Room5BLoop
EndRoom5BLoop:
	add [StartStageCheck], 10000b
	jmp StageSelect
Start6:	
	mov ax, 40h
	mov es, ax
	
	
EndRoom6BLoop:
	add [StartStageCheck], 100000b
	jmp StageSelect
Start7:	
	mov ax, 40h
	mov es, ax
Start8:	
	mov ax, 40h
	mov es, ax
	mov dx, offset MAP81
	call CopyStageGround
	mov [En1Type], 1
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1HP], 7
	mov [En1LastPose], offset SBLR1
	mov [En1X], 180
	mov [En1Y], 40320
Room81Loop:
	mov ax, [Clock]
Tick81:
	cmp ax, [Clock]
	je Tick81
	mov dx, offset BKG81
	call DefaultRoom
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom81Loop	
	jmp Room81Loop
EndRoom81Loop:
	mov dx, offset MAP82
	call CopyStageGround
	mov [SaX], 5
	mov [En1Type], 2
	mov [En1HP], 7
	mov [En1LastPose], offset SebL
	mov [En1X], 280
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 40320
	mov [En2Type], 2
	mov [En2HP], 7
	mov [En2LastPose], offset SebR
	mov [En2X], 140
	mov [En2Y], 49920
	mov [En2VerVel], 0
	mov [En2JCheck], 0
	
Room82Loop:
	mov ax, [Clock]
Tick82:
	cmp ax, [Clock]
	je Tick82
	mov dx, offset BKG82
	call DefaultRoom
	; cmp [SaY], 40320
	; jna Skip82RightWall
		; mov [SaRightWall], 272
		; jmp SkipSkip82RightWall
	; Skip82RightWall:
	; mov [SaRightWall], 298
	; SkipSkip82RightWall:
	; cmp [SaX], 0
	; jng Skip82DStep0
		; mov [ground], 40320
		; inc [SaJCheck] ; Change Grav
	; Skip82DStep0:
	; cmp [SaX], 117
	; jng Skip82DStep1
		; mov [ground], 43520
		; inc [SaJCheck] ; Change Grav
	; Skip82DStep1:
	; cmp [SaX], 127
	; jng Skip82DStep2
		; mov [ground], 46720
		; inc [SaJCheck] ; Change Grav
	; Skip82DStep2:
	; cmp [SaX], 137
	; jng Skip82DStep3
		; mov [ground], 49920
		; inc [SaJCheck] ; Change Grav
	; Skip82DStep3:
	; cmp [SaX], 272
	; jng Skip82DStep4
		; mov [ground], 40320
		; inc [SaJCheck] ; Change Grav
	; Skip82DStep4:	
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom82Loop	
	jmp Room82Loop
EndRoom82Loop:
	mov dx, offset MAP83
	call CopyStageGround
	mov [SaX], 5
	mov [En1Type], 2
	mov [En1HP], 7
	mov [En1LastPose], offset SebL
	mov [En1X], 98
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 40320
Room83Loop:
	mov ax, [Clock]
Tick83:
	cmp ax, [Clock]
	je Tick83
	mov dx, offset BKG83
	call DefaultRoom
	; cmp [SaX], 117
	; jng Skip83DStep1
		; mov [ground], 56000
		; inc [SaJCheck] ; Change Grav
	; Skip83DStep1:
	; mov [SaLeftWall], 0
	; cmp [Say], 40320
	; jna Skip83LeftWall
		; mov [SaLeftWall], 117
	; Skip83LeftWall:
	call CopyScrBuffer
	cmp [SaY], 56000
	jnb EndRoom83Loop	
	jmp Room83Loop
EndRoom83Loop:
	mov dx, offset MAP84
	call CopyStageGround
	mov [Say], 1600
	mov [SaLeftWall], 0
	mov [ground], 49920
	mov [En1Type], 2
	mov [En1HP], 7
	mov [En1LastPose], offset SebL
	mov [En1X], 298
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 43520
	mov [En2Type], 3
	mov [En2HP], 7
	mov [En2LastPose], offset YLS
	mov [En2X], 250
	mov [En2Y], 49920
	mov [En2VerVel], 260
	mov [En2JCheck], 180
Room84Loop:
	mov ax, [Clock]
Tick84:
	cmp ax, [Clock]
	je Tick84
	mov dx, offset BKG84
	call DefaultRoom
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom84Loop	
	jmp Room84Loop
EndRoom84Loop:
	mov dx, offset MAP85
	call CopyStageGround
	mov [SaX], 5
	mov [En1Type], 2
	mov [En1HP], 7
	mov [En1LastPose], offset SebL
	mov [En1X], 298
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 30720
	mov [En2Type], 3
	mov [En2HP], 7
	mov [En2LastPose], offset YRS
	mov [En2X], 60
	mov [En2Y], 49920
	mov [En2VerVel], 130
	mov [En2JCheck], 50
Room85Loop:
	mov ax, [Clock]
Tick85:
	cmp ax, [Clock]
	je Tick85
	mov dx, offset BKG85
	call DefaultRoom
	; mov [SaRightWall], 298
	; mov [SaLeftWall], 0
	; mov [ground], 49920
	; cmp [SaX], 30
	; jl Skip85Fall
	; cmp [SaX], 39
	; jg Skip85Fall
		; mov [ground], 56000
		; inc [JCheck]
		; cmp [SaY], 49920
		; jna Skip85RightWall
			; mov [SaRightWall], 39
			; mov [SaLeftWall], 30
		; Skip85RightWall:
	; Skip85Fall:
	cmp [SaY], 56000
	jne Skip85FallDam
		dec [HP]
	Skip85FallDam:
	mov [ceiling], 0
	call CopyScrBuffer
	cmp [Sax], 28
	jg Skip85Ceiling
		mov [ceiling], 48000
	Skip85Ceiling:
	cmp [SaX], 297
	jng Skip85CheckHeight
		cmp [SaY], 30720
		ja Normal85End
		jmp EndRoom88Loop
		Normal85End:
		jmp EndRoom85Loop	
	Skip85CheckHeight:
	jmp Room85Loop
EndRoom85Loop:
	mov dx, offset MAP84
	call CopyStageGround
	mov [SaX], 5
	mov [ceiling], 47680
	mov [SaX], 5
	mov [En1Type], 3
	mov [En1HP], 7
	mov [En1LastPose], offset YLS
	mov [En1X], 270
	mov [En1VerVel], 280
	mov [En1JCheck], 50
	mov [En1Y], 49920
	mov [En2Type], 3
	mov [En2HP], 7
	mov [En2LastPose], offset YRS
	mov [En2X], 60
	mov [En2Y], 49920
	mov [En2VerVel], 280
	mov [En2JCheck], 50
Room86Loop:
	mov ax, [Clock]
Tick86:
	cmp ax, [Clock]
	je Tick86
	mov dx, offset BKG86
	call DefaultRoom
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom86Loop	
	jmp Room86Loop
EndRoom86Loop:
	mov dx, offset MAP87
	call CopyStageGround
	mov [SaX], 5
	mov [En1Type], 1
	mov [En1HP], 5
	mov [En1LastPose], offset SBLR1
	mov [En1X], 120
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 49920
	mov [En2Type], 2
	mov [En2HP], 7
	mov [En2LastPose], offset SebL
	mov [En2X], 290
	mov [En2Y], 40320
	mov [En2VerVel], 0
	mov [En2JCheck], 0
Room87Loop:
	mov ax, [Clock]
Tick87:
	cmp ax, [Clock]
	je Tick87
	mov dx, offset BKG87
	call DefaultRoom
	mov [ceiling], 0
	cmp [SaX], 119
	jg Skip87Ceiling
		mov [ceiling], 47680
	Skip87Ceiling:
	; cmp [SaX], 0
	; jng Skip87DStep0
		; mov [ground], 49920
		; inc [SaJCheck] ; Change Grav
	; Skip87DStep0:
	; cmp [SaX], 240
	; jng Skip87DStep1
		; mov [ground], 46720
		; inc [SaJCheck] ; Change Grav
	; Skip87DStep1:
	; cmp [SaX], 250
	; jng Skip87DStep2
		; mov [ground], 43520
		; inc [SaJCheck] ; Change Grav
	; Skip87DStep2:
	; cmp [SaX], 260
	; jng Skip87DStep3
		; mov [ground], 40320
		; inc [SaJCheck] ; Change Grav
	; Skip87DStep3:
	mov [SaLeftWall], 0
	cmp [SaY],47680
	jnb Skip87LeftWall
		mov [SaLeftWall], 122
	Skip87LeftWall:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom87Loop	
	jmp Room87Loop
EndRoom87Loop:
	mov dx, offset MAP88
	call CopyStageGround
	mov [SaLeftWall], 0
	mov [SaX], 5
	mov [En1Type], 3
	mov [En1HP], 7
	mov [En1LastPose], offset YLS
	mov [En1X], 170
	mov [En1VerVel], 175
	mov [En1JCheck], 130
	mov [En1Y], 40320
	mov [En2Type], 2
	mov [En2HP], 7
	mov [En2LastPose], offset SebL
	mov [En2X], 270
	mov [En2Y], 43520
	mov [En2VerVel], 0
	mov [En2JCheck], 0
Room88Loop:
	mov ax, [Clock]
Tick88:
	cmp ax, [Clock]
	je Tick88
	mov dx, offset BKG88
	call DefaultRoom
	; cmp [SaX], 177
	; jg Skip88SaRightWall2
		; mov [SaRightWall], 178
	; Skip88SaRightWall2:
	; cmp [SaX], 83
	; jg Skip88SaRightWall1
		; mov [SaRightWall], 83
	; Skip88SaRightWall1:
	; cmp [SaY], 35200
	; ja Skip88SaRightWall4
		; mov [SaRightWall], 178
	; Skip88SaRightWall4:
	; cmp [SaY], 31360
	; ja Skip88SaRightWall5
		; mov [SaRightWall], 298
	; Skip88SaRightWall5:
	; cmp [SaX], 199 
	; jng Skip88SaRightWall3
		; mov [SaRightWall], 298
	; Skip88SaRightWall3:
	
	; cmp [SaX], 125
	; jng Skip88SaLeftWall2
		; mov [SaLeftWall], 125
	; Skip88SaLeftWall2:
	; cmp [SaY], 35200
	; ja Skip88SaLeftWall5
		; mov [SaLeftWall], 0
	; Skip88SaLeftWall5:
	; cmp [SaX], 82 
	; jnl Skip88SaLeftWall3
		; mov [SaLeftWall], 0
	; Skip88SaLeftWall3:
	; mov [ground], 40320
	; cmp [SaX], 83
	; jng Skip88SaGround1
		; mov [ground], 35200
	; Skip88SaGround1:
	; cmp [SaX], 124
	; jng Skip88SaGround2
		; mov [ground], 40320
	; Skip88SaGround2:
	; cmp [SaX], 179
	; jng Skip88SaGround2b
		; mov [ground], 31360
	; Skip88SaGround2b:
	; cmp [SaX], 208
	; jng Skip88SaGround3
		; mov [ground], 35200
	; Skip88SaGround3:
	; cmp [SaX], 219
	; jng Skip88SaGround4
		; mov [ground], 40320
	; Skip88SaGround4:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom88Loop	
	jmp Room88Loop
EndRoom88Loop:
	mov dx, offset MAP89
	call CopyStageGround
	mov [SaLeftWall], 0
	mov [SaX], 5
	mov [En1Type], 3
	mov [En1HP], 7
	mov [En1LastPose], offset YLS
	mov [En1X], 170
	mov [En1VerVel], 190
	mov [En1JCheck], 60
	mov [En1Y], 49920
	mov [En2Type], 2
	mov [En2HP], 7
	mov [En2LastPose], offset SebL
	mov [En2X], 213
	mov [En2Y], 43520
	mov [En2VerVel], 0
	mov [En2JCheck], 0
Room89Loop:
	mov ax, [Clock]
Tick89:
	cmp ax, [Clock]
	je Tick89
	mov dx, offset BKG89
	call DefaultRoom
	; mov [ground], 40320
	; mov [SaLeftWall], 0
	; cmp [SaX], 57
	; jng Skip89DStep0
		; mov [SaLeftWall], 58
		; mov [ground], 49920
		; inc [SaJCheck] ; Change Grav
	; Skip89DStep0:
	; cmp [SaX], 191
	; jng Skip89DStep1
		; mov [ground], 46720
		; inc [SaJCheck] ; Change Grav
	; Skip89DStep1:
	; cmp [SaX], 201
	; jng Skip89DStep2
		; mov [ground], 43520
		; inc [SaJCheck] ; Change Grav
	; Skip89DStep2:
	; cmp [SaX], 211
	; jng Skip89DStep3
		; mov [ground], 40320
		; inc [SaJCheck] ; Change Grav/
	; Skip89DStep3:
	; cmp [SaY], 40320
	; jnb Skip89LeftWall
		; mov [SaLeftWall], 0
	; Skip89LeftWall:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom89Loop	
	jmp Room89Loop
EndRoom89Loop:
	mov dx, offset MAP81
	call CopyStageGround
	mov [SaX], 5
	mov [En1Type], 1
	mov [En1HP], 5
	mov [En1LastPose], offset SBLR1
	mov [En1X], 150
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 40320
	mov [En2Type], 1
	mov [En2HP], 6
	mov [En2LastPose], offset SBLR1
	mov [En2X], 290
	mov [En2Y], 40320
	mov [En2VerVel], 0
	mov [En2JCheck], 0
	mov [RoomTimer3], 0
Room810Loop:
	mov [SaLeftWall], 0
	mov ax, [Clock]
Tick810:
	cmp ax, [Clock]
	je Tick810
	mov dx, offset BKG810
	call DefaultRoom
	cmp [SaX], 118
	jl Skip810IntelTake
		mov [RoomTimer3], 1
	Skip810IntelTake:
	cmp [RoomTimer3], 1
	je Skip810IntelPrint
		mov [RoomTimer4], 0
		mov dx, offset Intel
		mov [x], 139
		mov [y], 32640
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
	Skip810IntelPrint:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom810Loop	
	jmp Room810Loop
EndRoom810Loop:
	mov dx, offset MAP81
	call CopyStageGround
	mov [SaX], 5
	mov [En1Type], 1
	mov [En1HP], 5
	mov [En1LastPose], offset SBLR1
	mov [En1X], 195
	mov [En1VerVel], 0
	mov [En1JCheck], 1
	mov [En1Y], 27520
	mov [En2Type], 1
	mov [En2HP], 0
	mov [En2LastPose], offset SBLR1
	mov [En2X], 290
	mov [En2Y], 40320
	mov [En2VerVel], 0
	mov [En2JCheck], 0
Room811Loop:
	mov ax, [Clock]
Tick811:
	cmp ax, [Clock]
	je Tick811
	mov dx, offset BKG811
	call DefaultRoom
	cmp [En1HP], 0
	jg Skip811Spawn
	jg Skip811IncRT
		inc [RoomTimer]
	Skip811IncRT:
	cmp [En1HP], 0
	jg Skip811Spawn
	cmp [RoomTimer], 20
	jng Skip811Spawn
		mov [En1Type], 1
		mov [En1HP], 5
		mov [En1LastPose], offset SBLR1
		mov [En1X], 195
		mov [En1VerVel], 0
		mov [En1JCheck], 1
		mov [En1Y], 27520
		mov [RoomTimer], 0
	Skip811Spawn:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom811Loop	
	jmp Room811Loop
EndRoom811Loop:
	mov dx, offset MAP81
	call CopyStageGround
	mov [SaX], 5
	mov [En1Type], 2
	mov [En1HP], 10
	mov [En1LastPose], offset SebL
	mov [En1X], 260
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 40320
	mov [En2Type], 2
	mov [En2HP], 10
	mov [En2LastPose], offset SebL
	mov [En2X], 290
	mov [En2Y], 40320
	mov [En2VerVel], 0
	mov [En2JCheck], 0
	mov [En3Type], 2
	mov [En3HP], 10
	mov [En3LastPose], offset SebL
	mov [En3X], 230
	mov [En3Y], 40320
	mov [En3VerVel], 0
	mov [En3JCheck], 0
Room812Loop:
	mov ax, [Clock]
Tick812:
	cmp ax, [Clock]
	je Tick812
	mov dx, offset BKG812
	call DefaultRoom
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom812Loop	
	jmp Room812Loop
EndRoom812Loop:
	mov dx, offset MAP8B
	call CopyStageGround
	mov [SaX], 5
	mov [SaLeftWall], 0
	mov [DisBlockX], 293
	mov [DisBlockY], 40320
	mov [DisBlockHP], 28
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
	mov [RoomTimer], 0
	mov [RoomTimer4], 0
	mov [En2HP], 0
	mov [En1HP], 0
Room8BLoop:
	mov ax, [Clock]
Tick8B:
	cmp ax, [Clock]
	je Tick8B
	mov dx, offset BKG8B
	call DefaultRoom
	; mov [SaRightWall], 212
	; cmp [SaX], 103
	; jg Skip8BRightWall
	; cmp [SaY], 33280
	; jna Skip8BRightWall
		; mov [SaRightWall], 82
	; Skip8BRightWall:
	; cmp [DisBlockHP], 0
	; jg Skip8BFRightWall
		; mov [SaRightWall], 300
	; Skip8BFRightWall:
	; mov [ground], 40320
	cmp [SaX], 82
	jng Skip8BDStep1
		; mov [ground], 33280
		mov [DisBlockY], 37760
		mov [DisBlockX], 270
	Skip8BDStep1:
	cmp [SaX], 102
	jng Skip8BDStep2
		; mov [ground], 30720
		mov [DisBlockY], 30080
		mov [DisBlockX], 240
	Skip8BDStep2:
		cmp [SaX], 162
	jng Skip8BDStep3
		; mov [ground], 36800
		mov [DisBlockY], 36800
		mov [DisBlockX], 200
	Skip8BDStep3:
	push ax
	push dx
	push cx
	push bx
	xor bx, bx
	mov cx, 20
	Friendly8BBulletsArr:
		mov ax, [FBulType + bx]
		cmp ax, 0
		jne Skip8BSkipFBul
			jmp Skip8BFBul
	Skip8BSkipFBul:
		mov ax, [FBulX + bx]
		cmp ax, 0
		jnl Skip8BSkipFBul1
			mov [FBulType + bx], 0
			jmp Skip8BFBul
	Skip8BSkipFBul1:
		cmp ax, 220
		jng Skip8BSkipFBul2
			mov [FBulType + bx], 0
			jmp Skip8BFBul
	Skip8BSkipFBul2:
		mov ax, [FBulX + bx] ; Useless
		mov [x], ax
		mov ax, [FBulY + bx]
		mov [y], ax
		mov [PicX], 21
		mov [PicY], 24
			mov ax, [FBulX + bx]
			sub ax, 21 ; En1 Width dependent
			cmp ax, [DisBlockX] ; What Direction ?
			jng Skip8BSkipBulHitEn1
				jmp Skip8BBulHitEn1
		Skip8BSkipBulHitEn1:
			add ax, 26 ; En1 Width dependent
			cmp ax, [DisBlockX]
			jna Skip8BBulHitEn1
		Bul8BHitEn1:
				mov ax, [FBulY + bx]
				add ax, 4800 ; En1 Height dependent
				cmp ax, [DisBlockY]
				ja Skip8BSkipBulHitEn12
					
					jmp Skip8BBulHitEn1
			Skip8BSkipBulHitEn12:
				sub ax, 9600 ; En1 Height dependent
				cmp ax, [DisBlockY]
				jb Skip8BSkipBulHitEn13
					jmp Skip8BBulHitEn1 
				Skip8BSkipBulHitEn13:
				mov [FBulType + bx], 0
				mov [FBulY + bx], 0
				sub [DisBlockHP], 1
				Skip8BDecRT3:
	Skip8BBulHitEn1:
	Skip8BFBul:
	; moves on to the next bullet if there is one
		inc bx
		inc bx
		dec cx
		jz Finish8BFBul
		jmp Friendly8BBulletsArr
	Finish8BFBul:
	pop bx
	pop cx
	pop dx
	pop ax
	cmp [DisBlockHP], 0
	jle Skip8BSol
		inc [RoomTimer2]
		cmp [RoomTimer2], 30
		jl Skip8BRocket
			mov cx, 5
			Sniper8BShootLoop:
				push cx
				mov [AddBulRight], 0
				sub [AddBulRight], 10
				mov [AddBulType], 1
				mov ax, [DisBlockX]
				mov [AddBulX], ax
				mov ax, [DisBlockY]
				mov [AddBulY], ax
				call AddHostileBul
				pop cx
				loop Sniper8BShootLoop
				mov [RoomTimer2], 0
		Skip8BRocket:
		mov ax, [DisBlockX]
		mov [x], ax
		mov ax, [DisBlockY]
		mov [y], ax
		mov dx, offset SnLS          ;Sniper Boss
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile 
		call BossHealthBar
	Skip8BSol:
	call CopyScrBuffer
	cmp [SaX], 220
	jg EndRoom8BLoop
	jmp Room8BLoop
EndRoom8BLoop:
	add [StartStageCheck], 1000000b
	mov dx, offset Be8B
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	mov [RoomTimer], 0
Be8BLoop:
	mov ax, [Clock]
TickBe8B:
	cmp ax, [Clock]
	je TickBe8B
	inc [RoomTimer]
	cmp [RoomTimer], 180
	ja EndBe8BLoop
	jmp Be8BLoop
EndBe8BLoop:
	jmp StageSelect
Start9:
	mov ax, 40h
	mov es, ax
	mov dx, offset MAP91
	call CopyStageGround
	mov [SaY], 33920
Room91Loop:
	mov ax, [Clock]
Tick91:
	cmp ax, [Clock]
	je Tick91
	mov dx, offset BKG91
	call DefaultRoom
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom91Loop	
	jmp Room91Loop
EndRoom91Loop:
	mov dx, offset MAP92
	call CopyStageGround
	mov [SkipInjector], 1
	mov [SaX], 5
	mov [RoomTimer], 0
Room92Loop:
	mov ax, [Clock]
Tick92:
	cmp ax, [Clock]
	je Tick92
	mov dx, offset BKG92
	call DefaultRoom
	; mov [ground], 33920
	; cmp [SaX], 90
	; jng Skip92DStep1
		; mov [ground], 30720
	; Skip92DStep1:	
	; cmp [SaX], 20
	; jng Skip92DStep2
	cmp [SaY], 21120
	ja Skip92Dstep2
		mov bx, 41
		mov cx, 28
		S92DstepLoop2:
			mov [StageGround + bx], 90
			inc bx
		loop S92DstepLoop2
		mov [RoomTimer], 1
	Skip92DStep2:
	cmp [RoomTimer], 0
	je Skip92DStep
	cmp [SaY], 21120
	jna Skip92Dstep
		mov bx, 41
		mov cx, 28
		S92DstepLoop:
			mov [StageGround + bx], 130
			inc bx
		loop S92DstepLoop
		mov [RoomTimer], 0
	Skip92DStep:
	; cmp [SaX], 68
	; jng Skip92Fall
		; mov [ground], 33920
	; Skip92Fall:
	; cmp [SaX], 90
	; jng Skip92DStep4
		; mov [ground], 30720
	; Skip92DStep4:	
	; cmp [SaX], 240
	; jng Skip92DStep3
		; mov [ground], 27520
	; Skip92DStep3:	
	; mov [SaRightWall], 298
	; cmp [SaX], 100
	; jg Skip92RightWall
	; cmp [SaY], 14720
	; jbe Skip92RightWall
		; mov [SaRightWall], 99 
	; Skip92RightWall:
	cmp [SaY], 32320
	jna Skip92BurnStep2
	cmp [SaX], 10
	jng Skip92BurnStep1
	cmp [SaX], 37
	jnl Skip92BurnStep1
		dec [HP]
		dec [HP]
	Skip92BurnStep1:
	cmp [SaX], 63
	jng Skip92BurnStep2
	cmp [SaX], 77
	jnl Skip92BurnStep2
		dec [HP]
		dec [HP]
	Skip92BurnStep2:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom92Loop	
	jmp Room92Loop
EndRoom92Loop:
	mov dx, offset MAP93
	call CopyStageGround
	mov [SaX], 5
	mov [En1Type], 2
	mov [En1HP], 10
	mov [En1LastPose], offset SebL
	mov [En1X], 110
	mov [En1VerVel], 0
	mov [En1JCheck], 0
	mov [En1Y], 21120
	mov [En2Type], 2
	mov [En2HP], 10
	mov [En2LastPose], offset SebL
	mov [En2X], 148
	mov [En2Y], 17920
	mov [En2VerVel], 0
	mov [En2JCheck], 0
Room93Loop:
	mov ax, [Clock]
Tick93:
	cmp ax, [Clock]
	je Tick93
	mov dx, offset BKG93
	call DefaultRoom
	mov [ground], 27520
	cmp [SaX], 80
	jng Skip93Fall1
		mov [ground], 54400
	Skip93Fall1:
	cmp [SaX], 90
	jng Skip93DStep1
	cmp [SaY], 21120
	ja Skip93DStep1
		mov [ground], 21120
	Skip93DStep1:	
	cmp [SaX], 125
	jng Skip93Fall2
		mov [ground], 54400
	Skip93Fall2:
	cmp [SaX], 128
	jng Skip93DStep2
	cmp [SaY], 17920
	ja Skip93DStep2
		mov [ground], 17920
	Skip93DStep2:
	cmp [SaX], 149
	jng Skip93Fall3
		mov [ground], 54400
	Skip93Fall3:
	cmp [SaX], 226
	jng Skip93Fall4
		mov [ground], 43520
	Skip93Fall4:
	cmp [SaX], 256
	jng Skip93Fall5
		mov [ground], 54080
	Skip93Fall5:
	cmp [SaX], 264
	jng Skip93Fall6
		mov [ground], 56000
	Skip93Fall6:
	mov [SaRightWall], 225
	cmp [SaY], 43520
	ja Skip93RightWall
		mov [SaRightWall], 298 
	Skip93RightWall:
	cmp [SaX], 226
	jng Skip93RightWall2
		mov [SaRightWall], 298 
	Skip93RightWall2:
	cmp [SaY], 54080
	jna Skip93BurnStep1
	cmp [SaX], 10
	jng Skip93BurnStep1
	cmp [SaX], 247
	jnl Skip93BurnStep1
		dec [HP]
		dec [HP]
	Skip93BurnStep1:
	call CopyScrBuffer
	cmp [SaY], 56000
	je EndRoom93Loop	
	jmp Room93Loop
EndRoom93Loop:
	mov [ground], 1920
	mov [SaY], 0
	mov [DisBlockX], 259
	mov [DisBlockY], 80
	mov [DisBlockHP], 1
	mov [RoomTimer], 0
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
	mov [En2HP], 0
	mov [En1HP], 0
Room94Loop:
	mov ax, [Clock]
Tick94:
	cmp ax, [Clock]
	je Tick94
	mov dx, offset BKG94
	call DefaultRoom
	inc [RoomTimer]
	cmp [RoomTimer], 5
	jng Skip94MoveBlock
		sub [DisBlockX], 12
		mov [RoomTimer], 0
	Skip94MoveBlock:
	cmp [DisBlockX], 31
	jg Skip94ResetBlock
		mov [DisBlockX], 259
	Skip94ResetBlock:
	mov ax, [DisBlockX]
	mov [x], ax
	mov [y], 31
	mov [color], 2
	call PrintBlock
	cmp [SaY], 13500
	jnb Skip94RT3
		mov [RoomTimer3], 1
	Skip94RT3:
	cmp [RoomTimer3], 1
	jne Skip94RT2
	cmp [SaY], 14720
	jna Skip94RT2
		inc [RoomTimer2]
		dec [RoomTimer3]
	Skip94RT2:
	cmp [RoomTimer2], 1
	jne Skip94PushDown
		inc [DisBlockY]
		dec [RoomTimer2]
		cmp [DisBlockY], 90
		jb Skip94ResetBlockPush
			mov [DisBlockY], 90
		Skip94ResetBlockPush:
	Skip94PushDown:
	mov ax, [DisBlockY]
	mov [y], ax
	mov [x], 11
	mov [color], 7
	call PrintBlock
	cmp [SaX], 21
	jng SkipGoTo94TopPart
	cmp [SaY], 11520
	ja SkipGoTo94TopPart
		jmp GoTo94TopPart
	SkipGoTo94TopPart:
	jmp Skip94TopPart
	GoTo94TopPart:
		mov [ground], 1920
		cmp [SaX], 249
		jnl Skip94TopFall
			mov [ground], 8960
		Skip94TopFall:
		cmp [SaY], 8960
		jne Skip94TopTopSpike
			dec [HP]
		Skip94TopTopSpike:
		mov ax, [DisBlockX]
		sub ax, 20
		cmp [SaX], ax
		jng Skip94TStep
			add ax, 30
			cmp [SaX], ax
			jnl Skip94TStep
				mov [ground], 1920
		Skip94TStep:
		jmp Skip94BottomPart
	Skip94TopPart:
	;94 Bottom Part:
		mov [SaRightWall], 17
		cmp [SaY], 19200
		jb Skip94BRightWall
			mov [SaRightWall], 300
		Skip94BRightWall:
		mov [ground], 14400
		mov [ceiling], 0
		cmp [SaX], 11
		jng Skip94BStep
			mov [ground], 17600
			mov cx, [DisBlockY]
			sub cx, 80
			cmp cx, 0
			je Skip94BStep
			Block94PushLoop:
				add [ground], 320
			loop Block94PushLoop
		Skip94BStep:
		cmp [SaX], 21
		jng Skip94BStep2
			mov [ground], 20800
			mov [ceiling], 19200
		Skip94BStep2:
		cmp [SaX], 31
		jng Skip94BStep3
			mov [ground], 24320
		Skip94BStep3:
		cmp [SaX], 59
		jng Skip94BHurtB1
			cmp [SaX], 82
			jnl Skip94BHurtB1
				cmp [SaY], 22520
				jb Skip94BHurtB1
					dec [HP]
					dec [HP]
		Skip94BHurtB1:
		cmp [SaX], 125
		jng Skip94BHurtB2
			cmp [SaX], 148
			jnl Skip94BHurtB2
				cmp [SaY], 22520
				jb Skip94BHurtB2
					dec [HP]
					dec [HP]
		Skip94BHurtB2:
		cmp [SaX], 225
		jng Skip94BHurtB3
			cmp [SaX], 248
			jnl Skip94BHurtB3
				cmp [SaY], 22520
				jb Skip94BHurtB3
					dec [HP]
					dec [HP]
		Skip94BHurtB3:
		cmp [SaX], 94
		jng Skip94BHurtT1
			cmp [SaX], 117
			jnl Skip94BHurtT1
				cmp [SaY], 22520
				ja Skip94BHurtT1
					dec [HP]
					dec [HP]
		Skip94BHurtT1:
		cmp [SaX], 152
		jng Skip94BHurtT2
			cmp [SaX], 175
			jnl Skip94BHurtT2
				cmp [SaY], 22520
				ja Skip94BHurtT2
					dec [HP]
					dec [HP]
		Skip94BHurtT2:
		cmp [SaX], 177
		jng Skip94BHurtT3
			cmp [SaX], 204
			jnl Skip94BHurtT3
				cmp [SCheck], 0
				jne Skip94BHurtT3
					dec [HP]
		Skip94BHurtT3:
		
		cmp [SaX], 297
		jg EndRoom94Loop
	Skip94BottomPart:
	call CopyScrBuffer
	jmp Room94Loop
EndRoom94Loop:
	mov [SkipInjector], 0
	mov [SaX], 5
	mov [RoomTimer], 0
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
	mov [RoomTimer4], 0
	mov [DisBlockX], 263
	mov [DisBlockY], 24320
	mov dx, offset MAP95
	call CopyStageGround
Room95Loop:
	mov ax, [Clock]
Tick95:
	cmp ax, [Clock]
	je Tick95
	mov dx, offset BKG95
	call DefaultRoom
	; mov [ground], 24320
	; cmp [SaX], 40
	; jng Skip95DStep1
		; mov [ground], 27520
	; Skip95DStep1:
	; cmp [SaX], 50
	; jng Skip95DStep2
		; mov [ground], 30720
	; Skip95DStep2:
	; cmp [SaX], 60
	; jng Skip95DStep3
		; mov [ground], 33920
	; Skip95DStep3:
	; cmp [SaX], 70
	; jng Skip95DStep4
		; mov [ground], 37120
	; Skip95DStep4:
	; cmp [SaX], 80
	; jng Skip95DStep5
		; mov [ground], 40320
	; Skip95DStep5:
	; cmp [SaX], 90
	; jng Skip95DStep6
		; mov [ground], 43520
	; Skip95DStep6:
	; cmp [SaX], 100
	; jng Skip95DStep7
		; mov [ground], 46720
	; Skip95DStep7:
	; cmp [SaX], 198
	; jng Skip95UStep0
		; mov [ground], 43520
	; Skip95UStep0:
	; cmp [SaX], 208
	; jng Skip95UStep1
		; mov [ground], 40320
	; Skip95UStep1:
	; cmp [SaX], 218
	; jng Skip95UStep2
		; mov [ground], 37120
	; Skip95UStep2:
	; cmp [SaX], 228
	; jng Skip95UStep3
		; mov [ground], 33920
	; Skip95UStep3:
	; cmp [SaX], 238
	; jng Skip95UStep4
		; mov [ground], 30720
	; Skip95UStep4:
	; cmp [SaX], 248
	; jng Skip95UStep5
		; mov [ground], 27520
	; Skip95UStep5:
	; cmp [SaX], 258
	; jng Skip95UStep6
		; mov [ground], 24320
	; Skip95UStep6:
	
	cmp [SaX], 220
	jng Skip95IntelTake
		mov [RoomTimer3], 1
	Skip95IntelTake:
	cmp [RoomTimer3], 1
	je Skip95IntelPrint
		mov [RoomTimer4], 0
		mov dx, offset Intel
		mov [x], 240
		mov [y], 29440
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
	Skip95IntelPrint:
	;37, 25280
	;103, 46400
	;197, 46400
	;263, 25280
	cmp [RoomTimer2], 0
	jne Skip95SawMoves0
		dec [DisBlockX]
		add [DisBlockY], 320
		cmp [DisBlockX], 197
		jne Skip95SawMoves0
			inc [RoomTimer2]
	Skip95SawMoves0:
	cmp [RoomTimer2], 1
	jne Skip95SawMoves1
		dec [DisBlockX]
		cmp [DisBlockX], 103
		jne Skip95SawMoves1
			inc [RoomTimer2]
	Skip95SawMoves1:
	cmp [RoomTimer2], 2
	jne Skip95SawMoves2
		dec [DisBlockX]
		sub [DisBlockY], 320
		cmp [DisBlockX], 37
		jne Skip95SawMoves2
			inc [RoomTimer2]
	Skip95SawMoves2:
	cmp [RoomTimer2], 3
	jne Skip95SawMoves3
		inc [DisBlockX]
		add [DisBlockY], 320
		cmp [DisBlockX], 103
		jne Skip95SawMoves3
			inc [RoomTimer2]
	Skip95SawMoves3:
	cmp [RoomTimer2], 4
	jne Skip95SawMoves4
		inc [DisBlockX]
		cmp [DisBlockX], 197
		jne Skip95SawMoves4
			inc [RoomTimer2]
	Skip95SawMoves4:
	cmp [RoomTimer2], 5
	jne Skip95SawMoves5
		inc [DisBlockX]
		sub [DisBlockY], 320
		cmp [DisBlockX], 263
		jne Skip95SawMoves5
			mov [RoomTimer2], 0
	Skip95SawMoves5:
	inc [RoomTimer]
	mov dx, offset Saw1
	cmp [RoomTimer], 3
	jbe Skip95SawRot
		mov dx, offset Saw2
			cmp [RoomTimer], 6
			jbe Skip95SawRot
			mov [RoomTimer], 0
	Skip95SawRot:
	mov ax, [DisBlockX]
	mov [x], ax
	mov bx, [DisBlockY]
	mov [y], bx
	push ax
	push bx
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	pop bx
	pop ax
	sub ax, 21
	cmp [SaX], ax
	jng Skip95BHurtB2
		add ax, 38
		cmp [SaX], ax
		jnl Skip95BHurtB2
			sub bx, 1920
			cmp [SaY], bx
			jb Skip95BHurtB2
				dec [HP]
				dec [HP]
				dec [HP]
				dec [HP]
	Skip95BHurtB2:
	call CopyScrBuffer
	cmp [RoomTimer3], 1
	jne Skip95EndRoom95Loop
	cmp [SaX], 297
	jg EndRoom95Loop
	Skip95EndRoom95Loop:
	jmp Room95Loop
EndRoom95Loop:
	mov [SaX], 5
	mov [ceiling], 0
	mov [RoomTimer], 0
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
	mov [DisBlockX], 300
Room96Loop:
	mov dx, offset MAP96
	call CopyStageGround
	mov ax, [Clock]
Tick96:
	cmp ax, [Clock]
	je Tick96
	mov dx, offset BKG96
	call DefaultRoom
	; mov [ground], 24320
	; cmp [SaX], 250
	; jng Skip96DStep1
		; mov [ground], 21120
	; Skip96DStep1:
	inc [RoomTimer3]
	; 260, 70
	cmp [RoomTimer2], 0
	jne Skip96SawMoves0
		cmp [RoomTimer3], 4 ;;;;;;;;;;;;;;;;;
		jne Skip96SawMoves0
			sub [DisBlockX], 10
			mov [RoomTimer3], 0
			cmp [DisBlockX], 70
			jne Skip96SawMoves0
				inc [RoomTimer2]
	Skip96SawMoves0:
	cmp [RoomTimer2], 1
	jne Skip96SawMoves1
		cmp [RoomTimer3], 4 ;;;;;;;;;;;;;;;;;
		jne Skip96SawMoves1
			add [DisBlockX], 10
			mov [RoomTimer3], 0
			cmp [DisBlockX], 310
			jne Skip96SawMoves1
				dec [RoomTimer2]
	Skip96SawMoves1:
	inc [RoomTimer]
	mov dx, offset FiWa1
	cmp [RoomTimer], 4
	jbe Skip96SawRot
		mov dx, offset FiWa2
			cmp [RoomTimer], 8
			jbe Skip96SawRot
			mov [RoomTimer], 0
	Skip96SawRot:
	mov ax, [DisBlockX]
	mov [x], ax
	mov [y], 24320
	push ax
	push cx
	mov cx, 2
	Fire96WallLoop1:
		push cx
		push [y]
		mov cx, 2
		Fire96WallLoop2:
			push [x]
			push [y]
			push dx
			push cx
			cmp [x], 70
			jl Skip96OneFireWall
			cmp [x], 260
			jg Skip96OneFireWall
			call OpenFile
			call ReadHeader
			call ReadPalette
			call CopyBitmap
			call CloseFile
			Skip96OneFireWall:
			pop cx
			pop dx
			pop [y]
			pop [x]
			sub [y], 6400
			loop Fire96WallLoop2
		pop [y]
		pop cx
		sub [x], 50
		loop Fire96WallLoop1
	pop cx
	pop ax
	push ax
	cmp ax, 70
	jl Skip96BHurtB1
	cmp ax, 260
	jg Skip96BHurtB1
	sub ax, 21
	cmp [SaX], ax
	jng Skip96BHurtB1
		add ax, 31
		cmp [SaX], ax
		jnl Skip96BHurtB1
			cmp [SaY], 11520
			jb Skip96BHurtB1
				dec [HP]
				dec [HP]
				mov [SaFire], 1
	Skip96BHurtB1:
	pop ax
	sub ax, 50
	cmp ax, 70
	jl Skip96BHurtB2
	cmp ax, 260
	jg Skip96BHurtB2
	sub ax, 21
	cmp [SaX], ax
	jng Skip96BHurtB2
		add ax, 31
		cmp [SaX], ax
		jnl Skip96BHurtB2
			cmp [SaY], 11520
			jb Skip96BHurtB2
				dec [HP]
				dec [HP]
				mov [SaFire], 1
	Skip96BHurtB2:
	call CopyScrBuffer
	cmp [SaX], 297
	jg EndRoom96Loop	
	jmp Room96Loop
EndRoom96Loop:
	mov dx, offset MAP9B
	call CopyStageGround
	mov [SaX], 5
	mov [RoomTimer], 0
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
	mov [RoomTimer4], 0
	mov [En1X], 290
	mov [En1Y], 21120
	mov [DisBlock1X], 40
	mov [En1Type], 29
	mov [En1HP], 28
	mov [En1LastPose], offset SpLS
	mov [EnLeftWall], 0
Room9BLoop:
	mov ax, [Clock]
Tick9B:
	cmp ax, [Clock]
	je Tick9B
	mov dx, offset BKG9B
	call DefaultRoom
	mov al, [En1HP]
	mov [DisBlockHP], al
	
	;40, 130
	;200, 290
	cmp [RoomTimer2], 0
	jne Skip9BSawMoves0
		inc [DisBlock1X]
		cmp [DisBlock1X], 120
		jne Skip9BSawMoves0
			inc [RoomTimer2]
	Skip9BSawMoves0:
	cmp [RoomTimer2], 1
	jne Skip9BSawMoves1
		dec [DisBlock1X]
		cmp [DisBlock1X], 32
		jne Skip9BSawMoves1
			dec [RoomTimer2]
	Skip9BSawMoves1:
	inc [RoomTimer]
	mov dx, offset Saw1
	cmp [RoomTimer], 3
	jbe Skip9BSawRot
		mov dx, offset Saw2
			cmp [RoomTimer], 6
			jbe Skip9BSawRot
			mov [RoomTimer], 0
	Skip9BSawRot:
	mov ax, [DisBlock1X]
	mov [x], ax
	mov [y], 23040
	push bx
	push dx
	push ax
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	pop ax
	pop dx
	push ax
	sub ax, 32
	mov [x], 280
	sub [x], ax
	mov [y], 23040
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBitmap
	call CloseFile
	pop ax
	pop bx
	sub ax, 21
	cmp [SaX], ax
	jng Skip9BBHurtB2
		add ax, 38
		cmp [SaX], ax
		jnl Skip9BBHurtB2
			cmp [SaY], 17280
			jb Skip9BBHurtB2
				dec [HP]
				dec [HP]
				dec [HP]
				dec [HP]
	Skip9BBHurtB2:
	
	cmp [EnLeftWall], 3
	jne Skip9BSmokeScreen
		mov [color], 13
		mov [x], 0
		mov [y], 0
		mov cx, 32
		Spy9BDisguiseLoop1:
			push cx
			push [x]
			push [y]
			mov cx, 20
			Spy9BDisguiseLoop2:
				push cx
				push [x]
				push [y]
				call PrintBlock
				pop [y]
				pop [x]
				pop cx
				add [y], 10
				loop Spy9BDisguiseLoop2
			pop [y]
			pop [x]
			pop cx
			add [x], 10
			loop Spy9BDisguiseLoop1
	Skip9BSmokeScreen:
	call CopyScrBuffer
	cmp [DisBlockHP], 0
	jne Skip9BEndRoom95Loop
	cmp [SaX], 297
	jg EndRoom9BLoop
	Skip9BEndRoom95Loop:
	jmp Room9BLoop
EndRoom9BLoop:
	add [StartStageCheck], 10000000b
	mov dx, offset Be9B
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
	mov [RoomTimer], 0
Be9BLoop:
	mov ax, [Clock]
TickBe9B:
	cmp ax, [Clock]
	je TickBe9B
	inc [RoomTimer]
	cmp [RoomTimer], 180
	ja EndBe9BLoop
	jmp Be9BLoop
EndBe9BLoop:
	jmp StageSelect
StartBoss:
	mov ax, 40h
	mov es, ax
GameOver:
	mov [RoomTimer], 0
	mov dx, offset GOS
	cmp [StartStageCheck], 11111111b
	jne SkipGOS2
		mov dx, offset GOS2
	SkipGOS2:
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyBKGBitmap
	call CloseFile
	call CopyScrBuffer
RoomGOLoop:
	mov ax, [Clock]
TickGO:
	cmp ax, [Clock]
	je TickGO
	inc [RoomTimer]
	cmp [RoomTimer], 180
	ja EndRoomGOLoop
	jmp RoomGOLoop
EndRoomGOLoop:
SpecESC:
; Return to text mode
	mov ah, 0
	mov al, 2
	int 10h
	mov dx, offset msg
	mov ah, 9
	int 21h
; --------------------------
	
exit:
	mov ax, 4c00h
	int 21h
END start






			