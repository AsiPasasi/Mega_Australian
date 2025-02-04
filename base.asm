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
	RocketAmmo db 10
	FlameAmmo db 56
	SaLastPose dw 0
	SaMode db 0
	SaRightWall dw 298
	SaLeftWall dw 0
	SaFire db 0
	SaLives db 3
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
	;-----------
; Enemy1's variables
	En1X dw 290
	En1Y dw 40320
	En1VerVel dw 0
	En1JCheck db 0
	En1HP db 0
	En1LastPose dw 0
	En1Type db 0
	;-----------
; Enemy2's variables
	En2X dw 150
	En2Y dw 40320
	En2VerVel dw 0
	En2JCheck db 0
	En2HP db 0
	En2LastPose dw 0
	En2Type db 0
	;-----------
; Enemy3's variables
	En3X dw 290
	En3Y dw 56000
	En3VerVel dw 0
	En3JCheck db 0
	En3HP db 0
	En3LastPose dw 0
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
	SBE db 'SBE.bmp',0
	SoLS db 'SoRS.bmp',0
	PyRS db 'PyRS.bmp',0
	PyLS db 'PyLS.bmp',0
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
	;BKG11 db 'BKG1-1.bmp',0
	BKG12 db 'BKG1-2.bmp',0
	BKG13 db 'BKG1-3.bmp',0
	BKG14 db 'BKG1-4.bmp',0
	BKG15 db 'BKG1-5.bmp',0
	BKG16 db 'BKG1-6.bmp',0
	BKG1B db 'BKG1-B.bmp',0
	BKG21 db 'BKG2-1.bmp',0
	BKG22 db 'BKG2-2.bmp',0
	BKG23 db 'BKG2-3.bmp',0
	BKG24 db 'BKG2-4.bmp',0
	BKG25 db 'BKG2-5.bmp',0
	BKG26 db 'BKG2-6.bmp',0
	BKG2B db 'BKG2-B.bmp',0
	BKG31 db 'BKG3-1.bmp',0
	BKG32 db 'BKG3-2.bmp',0
	BKG33 db 'BKG3-3.bmp',0
	BKG34 db 'BKG3-4.bmp',0
	BKG35 db 'BKG3-5.bmp',0
	;BKG36 db 'BKG3-6.bmp',0
	BKG3B db 'BKG3-B.bmp',0
	BKG41 db 'BKG4-1.bmp',0
	BKG42 db 'BKG4-2.bmp',0
	BKG43 db 'BKG4-3.bmp',0
	BKG44 db 'BKG4-4.bmp',0
	BKG45 db 'BKG4-5.bmp',0
	;BKG46 db 'BKG4-6.bmp',0
	BKG4B db 'BKG4-B.bmp',0
	BKG51 db 'BKG5-1.bmp',0
	BKG52 db 'BKG5-2.bmp',0
	BKG53 db 'BKG5-3.bmp',0
	BKG54 db 'BKG5-4.bmp',0
	BKG55 db 'BKG5-5.bmp',0
	BKG56 db 'BKG5-6.bmp',0
	BKG57 db 'BKG5-7.bmp',0
	BKG5B db 'BKG5-B.bmp',0
	;BKG61 db 'BKG6-1.bmp',0
	BKG62 db 'BKG6-2.bmp',0
	BKG63 db 'BKG6-3.bmp',0
	BKG64 db 'BKG6-4.bmp',0
	BKG65 db 'BKG6-5.bmp',0
	;BKG66 db 'BKG6-6.bmp',0
	BKG6B db 'BKG6-B.bmp',0
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
	BKG91 db 'BKG9-1.bmp',0
	BKG92 db 'BKG9-2.bmp',0
	BKG93 db 'BKG9-3.bmp',0
	BKG94 db 'BKG9-4.bmp',0
	BKG95 db 'BKG9-5.bmp',0
	BKG96 db 'BKG9-6.bmp',0
	BKG9B db 'BKG9-B.bmp',0
	GOS db 'GOS.bmp',0
	GOS2 db 'GOS2.bmp',0
	BulH db 'BulH.bmp',0
	RktR db 'RktR.bmp',0
	RktL db 'RktL.bmp',0
	DisBlock db 'DisBlock.bmp',0
	DisBlock2 db 'DisBlk2.bmp',0
	DisBlock3 db 'DisBlk3.bmp',0
	DisBlock4 db 'DisBlk4.bmp',0
	Fire db 'Fire.bmp',0
	BombV db 'BombV.bmp',0
	filehandle dw ?
	Header db 54 dup (0)
	Palette db 256*4 dup (0)
	ScrLine db 320 dup (0)
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
	Screen db 320*200 dup (0)
; ------------------------------------------------

CODESEG
proc BasicReset
; get's through the used variables a character's stats and according to them decides if it needs to be moved (i.e. if the character is in a wall or hits the ceiling/floor)
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
	mov ax, [ground]
	cmp [y], ax
	ja ResetDown
	mov bx, [ceiling]
	cmp [y], bx
	jb ResetUp
	jmp SkipResetY
	ResetDown:
		mov [y], ax
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
				mov bh,0h
				mov cx, [HPX]
				mov dx, [HPY]
				mov al, [color]
				mov ah,0ch
				inc [HPX]
				int 10h
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

proc Gravity
	; changes a character's vertical position according to gravity (works similarly to basic reset)
	push bx
	push ax
	mov ax, [y]
	cmp ax, [ground]
	jae SkipAboveGround
		inc [JCheck]
SkipAboveGround:
	cmp [JCheck], 0
	je SkipGravity
Deccelerate:
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
	mov cx, 10
	PrBlLine:
		push cx
		push [x]
		mov cx, 10
		PrBlLineLoop:
			push cx
			mov bh,0h
			mov cx,[x]
			mov dx,[y]
			mov al,[color]
			mov ah,0ch
			int 10h
			inc [x]
			pop cx
			loop PrBlLineLoop
		inc [y]
		pop [x]
		pop cx
		loop PrBlLine
	ret
endp

proc CapturePoint
	push cx
	mov cx, 3
	Cap1StageL:
		push cx
		mov bh,0h
		mov cx,[x]
		mov dx,[y]
		mov al,[color]
		mov ah,0ch
		int 10h
		pop cx
		dec [y]
		loop Cap1StageL
	sub [y], 24
	mov cx, 10
		Cap1StageH:
		push cx
		mov bh,0h
		mov cx,[x]
		mov dx,[y]
		mov al,[color]
		mov ah,0ch
		int 10h
		pop cx
		dec [y]
		loop Cap1StageH
	SkipCap:
	pop cx
	ret
endp

proc PreRoomReset
	mov [SaX], 5
	mov [SaLeftWall], 0
	mov [SaRightWall], 300
	mov [HP], 28
	mov [SaFire], 0
	mov [RocketAmmo], 10
	mov [FlameAmmo], 56
	
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
				mov [Screen + di], ah
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
				mov [Screen + di], ah
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

proc CopySCRBitmap
; BMP graphics are saved upside-down.
; Read the graphic line by line (24 lines in VGA format),
; displaying the lines from bottom to top.
	push ax
	push cx
	push di
	push si
	push es
	mov ax, 0A000h
	mov es, ax
	mov cx, 200
SCRPrintBMPLoop:
		push cx
		; di = cx*320, point to the correct screen line
		mov di,cx
		shl cx,6
		shl di,8
		add di,cx
	; Read one line
		; Copy one line into video memory
		mov cx, 320
		mov si,offset ScrLine 
		push ax

	SCRLineLoop:
			mov ah, [Screen + si]
			mov [es:di], ah
			inc si
			inc di
		loop SCRLineLoop;
		pop ax
		pop cx
		loop SCRPrintBMPLoop
	pop es
	pop si
	pop di
	pop cx
	pop ax
	ret
endp CopySCRBitmap

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
	;Returns all of the updated stats to the general enemy var which would later go to the specific enemy var
	mov ax, [EnX]
	mov [x], ax
	mov ax, [EnY]
	mov [y], ax
	mov ax, [EnVerVel]
	mov [VerVel], ax
	mov ah, [EnJCheck]
	mov [JCheck], ah
	call BasicReset
	call Gravity
	mov ax, [x]
	mov [EnX], ax
	mov ax, [y]
	mov [EnY], ax
	mov ax, [VerVel]
	mov [EnVerVel], ax
	mov ah, [JCheck]
	mov [EnJCheck], ah
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
		cmp [SeLastPose], bx
		je SkipHSeBulDirChange
	LeftHSeShoot:
			sub [AddBulRight], 16
	SkipHSeBulDirChange:
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
	SkipHSentry:
	pop dx
	pop es
	pop si
	pop di
	pop cx
	pop bx
	pop ax
	ret
endp HSentry

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
		cmp ax, 299
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
			jle SkipBulHitEn1
			mov ax, [FBulX + bx]
			sub ax, 21 ; En1 Width dependent
			cmp ax, [En1x] ; What Direction ?
			jng SkipSkipBulHitEn1
				jmp SkipBulHitEn1
		SkipSkipBulHitEn1:
			add ax, 26 ; En1 Width dependent
			cmp ax, [En1x]
			jna SkipBulHitEn1
		BulHitEn1:
				mov ax, [FBulY + bx]
				add ax, 4800 ; En1 Height dependent
				cmp ax, [En1Y]
				ja SkipSkipBulHitEn12
					
					jmp SkipBulHitEn1
			SkipSkipBulHitEn12:
				sub ax, 9600 ; En1 Height dependent
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
					mov [FBulType + bx], 3
					cmp [En1HP], 0
					jg SkipBulHitEn1
					mov [FBulType + bx], 0
					jmp SkipBulHitEn3
	SkipBulHitEn1:
			cmp [En2HP], 0
			jle SkipBulHitEn2
			mov ax, [FBulX + bx]
			sub ax, 21
			cmp ax, [En2X] ; What Direction ?
			jng SkipSkipBulHitEn2
				jmp SkipBulHitEn2
		SkipSkipBulHitEn2:
			add ax, 26
			cmp ax, [En2X]
			jna SkipBulHitEn2
		BulHitEn2:
				mov ax, [FBulY + bx]
				add ax, 4800
				cmp ax, [En2Y]
				ja SkipSkipBulHitEn22
					
					jmp SkipBulHitEn2
			SkipSkipBulHitEn22:
				sub ax, 5760
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
					mov [FBulType + bx], 3
					cmp [En2HP], 0
					jg SkipBulHitEn2
					mov [FBulType + bx], 0
					jmp SkipBulHitEn3
	SkipBulHitEn2:
			cmp [En3HP], 0
			jle SkipBulHitEn3
			mov ax, [FBulX + bx]
			sub ax, 21
			cmp ax, [En3X] ; What Direction ?
			jng SkipSkipBulHitEn3
				jmp SkipBulHitEn3
		SkipSkipBulHitEn3:
			add ax, 26
			cmp ax, [En3X]
			jna SkipBulHitEn3
		BulHitEn3:
				mov ax, [FBulY + bx]
				add ax, 4800
				cmp ax, [En3Y]
				ja SkipSkipBulHitEn32
					
					jmp SkipBulHitEn3
			SkipSkipBulHitEn32:
				sub ax, 5760
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
					mov [FBulType + bx], 3
					cmp [En3HP], 0
					jg SkipBulHitEn3
					mov [FBulType + bx], 0
	SkipBulHitEn3:
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
		SkipFbulChangeEx:
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
		cmp [HBulType + bx], 4
		jl SkipSkipHurtSa
			jmp SkipBulHitSa
		SkipSkipHurtSa:
		mov ax, [HBulX + bx]
		cmp ax, 0
		jnl SkipSkipHBul1
			mov [HBulRight + bx], 0
			mov [HBulType + bx], 0
			jmp SkipHBul
	SkipSkipHBul1:
		cmp ax, 299
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
				SkipFbulExSa:
				mov [HBulRight + bx], 0
				cmp [HBulType + bx], 2
				je SkipSkipRktHurtSa
				mov [HBulType + bx], 0
				jmp SkipBulHitSa
				SkipSkipRktHurtSa:
					mov [HBulType + bx], 3
					cmp [HP], 0
					jg SkipBulHitSa
					mov [HBulType + bx], 0
					jmp SkipBulHitSa
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
		cmp [HBulType + bx], 3
		jne SkipHbulChangeEx
			mov dx, offset SBE
		SkipHbulChangeEx:
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
	jle SkipEnemy1
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
		cmp [En1Type], 1
		jne SkipEn11
			call SentryBuster
		SkipEn11:
		cmp [En1Type], 2
		jne SkipEn12
			call HSentry
		SkipEn12:
		mov ax, [EnX]
		mov [En1X], ax
		mov ax, [EnY]
		mov [En1Y], ax
		mov ax, [EnVerVel]
		mov [En1VerVel], ax
		mov ah, [EnJCheck]
		mov [En1JCheck], ah
		mov ah, [EnHP]
		mov [En1HP], ah
		mov ax, [EnLastPose]
		mov [En1LastPose], ax
		mov dx, [En1LastPose]
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
SkipEnemy1:
	;checks  if Enemy2 is alive and updates his stats (in a tick) accordingly
	cmp [En2HP], 0
	jle SkipEnemy2
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
		cmp [En2Type], 1
		jne SkipEn21
			call SentryBuster
		SkipEn21:
		cmp [En2Type], 2
		jne SkipEn22
			call HSentry
		SkipEn22:
		mov ax, [EnX]
		mov [En2X], ax
		mov ax, [EnY]
		mov [En2Y], ax
		mov ax, [EnVerVel]
		mov [En2VerVel], ax
		mov ah, [EnJCheck]
		mov [En2JCheck], ah
		mov ah, [EnHP]
		mov [En2HP], ah
		mov ax, [EnLastPose]
		mov [En2LastPose], ax
		mov dx, [En2LastPose]
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
SkipEnemy2:
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
	call Gravity
	call BasicReset
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
		cmp [SaMode], 2
		jne SkipSaChangeToRkt
			inc [AddBulType]
			cmp [RocketAmmo], 0
			jle SkipShoot 
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
			sub [AddBulRight], 16
			cmp [SaMode], 2
			jne SkipSaChangeDirRkt
				add [AddBulRight], 4
			SkipSaChangeDirRkt:
	SkipBulDirChange:
		call AddFriendlyBul
SkipShoot:
	cmp [BulSaTimer], 0
	je SkipUpdateBulSaTimer
		inc [BulSaTimer] 
		cmp [BulSaTimer], 5
		jl SkipResetBulSaTimer
			cmp [SaMode], 2
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
	call Gravity
	call BasicReset
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
	inc [RoomTimer]
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
	inc [RoomTimer]
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
	inc [RoomTimer]
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
		jmp StageSelectLoop
SkipDemomanStage:
	cmp al, 6h ;Is it the 5 key ?
	je HeavyStage
	jmp SkipHeavyStage
HeavyStage:
	and dl, 10000b
	cmp dl, 10000b
	je SkipHeavyStage
		call PreRoomReset
		jmp StageSelectLoop
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
	cmp al, 10h ;Is it the 9 key ?
	je SpyStage
	jmp SkipSpyStage
SpyStage:
	and dl, 10000000b
	cmp dl, 10000000b
	je SkipSpyStage
		call PreRoomReset
		jmp StageSelectLoop	
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
	mov [ground], 46720
;Room11Loop:
;	mov ax, [Clock]
;Tick11:
;	cmp ax, [Clock]
;	je Tick11
;	mov dx, offset BKG11
;	call DefaultRoom
;	
;	cmp [SaX], 297
;	jg EndRoom11Loop	
;	jmp Room11Loop
;EndRoom11Loop:
;	mov [SaX], 5
	mov [RoomTimer], 0
Room12Loop:
	mov ax, [Clock]
Tick12:
	cmp ax, [Clock]
	je Tick12
	mov dx, offset BKG12
	call DefaultRoom
	inc [RoomTimer]
	cmp [SaX], 0
	jng Skip12DStep0
		mov [ground], 46720
	Skip12DStep0:
	cmp [SaX], 14
	jng Skip12DStep1
		cmp [RoomTimer], 20
		ja S12Erase1
		mov [ground], 43520
		jmp Skip12DStep1
		S12Erase1:
		mov [x], 35
		mov [y], 161
		mov [color], 13
		call PrintBlock
	Skip12DStep1:
	cmp [SaX], 24
	jng Skip12DStep2
		cmp [RoomTimer], 25
		ja S12Erase2
		mov [ground], 40320
		jmp Skip12DStep2
		S12Erase2:
		mov [x], 45
		mov [y], 151
		mov [color], 13
		call PrintBlock
	Skip12DStep2:
	cmp [SaX], 34
	jng Skip12DStep3
	cmp [SaY], 40320
	ja Skip12Dstep3
		cmp [RoomTimer], 30
		ja S12Erase3
		mov [ground], 37120
		jmp Skip12DStep3
		S12Erase3:
		mov [x], 55
		mov [y], 141
		mov [color], 13
		call PrintBlock
	Skip12DStep3:
	cmp [SaX], 44
	jng Skip12DStep4
	cmp [SaY], 37120
	ja Skip12Dstep4
		cmp [RoomTimer], 35
		ja S12Erase4
		mov [ground], 33920
		jmp Skip12DStep4
		S12Erase4:
		mov [x], 65
		mov [y], 131
		mov [color], 13
		call PrintBlock
	Skip12DStep4:
	cmp [SaX], 54
	jng Skip12DStep5
	cmp [SaY], 33920
	ja Skip12Dstep5
		cmp [RoomTimer], 40
		ja S12Erase5
		mov [ground], 30720
		jmp Skip12DStep5
		S12Erase5:
		mov [x], 75
		mov [y], 121
		mov [color], 13
		call PrintBlock
	Skip12DStep5:
	cmp [SaX], 64
	jng Skip12DStep6
	cmp [SaY], 30720
	ja Skip12Dstep6
		mov [ground], 27520
	Skip12DStep6:
	cmp [SaX], 215
	jng Skip12Fall
		mov [ground], 46720
	Skip12Fall:
	cmp [SaX], 194
	jng Skip12DStep7
	cmp [SaY], 27520
	ja Skip12Dstep7
		cmp [RoomTimer], 60
		ja S12Erase7
		mov [ground], 24320
		jmp Skip12DStep7
		S12Erase7:
		mov [x], 215
		mov [y], 101
		mov [color], 13
		call PrintBlock
	Skip12DStep7:
	cmp [SaX], 204
	jng Skip12DStep8
	cmp [SaY], 27520
	ja Skip12Dstep8
		cmp [RoomTimer], 65
		ja S12Erase8
		jmp Skip12DStep8
		S12Erase8:
		mov [x], 225
		mov [y], 101
		mov [color], 13
		call PrintBlock 
	Skip12DStep8:
	cmp [SaX], 214
	jng Skip12DStep9
	cmp [SaY], 24320
	ja Skip12Dstep9
		cmp [RoomTimer], 70
		ja S12Erase9
		mov [ground], 21120
		jmp Skip12DStep9
		S12Erase9:
		mov [x], 235
		mov [y], 91
		mov [color], 13
		call PrintBlock
	Skip12DStep9:
	cmp [SaX], 224
	jng Skip12DStep10
	cmp [SaY], 24320
	ja Skip12Dstep10
		cmp [RoomTimer], 75
		ja S12Erase10
		jmp Skip12DStep10
		S12Erase10:
		mov [x], 245
		mov [y], 91
		mov [color], 13
		call PrintBlock 
	Skip12DStep10:
	cmp [SaX], 234
	jng Skip12DStep11
	cmp [SaY], 21120
	ja Skip12Dstep11
		cmp [RoomTimer], 80
		ja S12Erase11
		mov [ground], 17920
		jmp Skip12DStep11
		S12Erase11:
		mov [x], 255
		mov [y], 81
		mov [color], 13
		call PrintBlock
	Skip12DStep11:
	cmp [SaX], 244
	jng Skip12DStep12
	cmp [SaY], 21120
	ja Skip12Dstep12
		cmp [RoomTimer], 85
		ja S12Erase12
		jmp Skip12DStep12
		S12Erase12:
		mov [x], 265
		mov [y], 81
		mov [color], 13
		call PrintBlock
	Skip12DStep12:
	cmp [SaX], 254
	jng Skip12Fall2
	cmp [SaY], 21120
	ja Skip12Fall2
		mov [ground], 17920
	Skip12Fall2:
	cmp [SaY], 21120
	ja Room12Loop2
	cmp [SaX], 297
	jg EndRoom12Loop
	Room12Loop2:
	jmp Room12Loop
EndRoom12Loop:
	mov [SaX], 5
	mov [ground], 17920
	mov [ceiling], 15040
Room13Loop:
	mov ax, [Clock]
Tick13:
	cmp ax, [Clock]
	je Tick13
	mov dx, offset BKG13
	call DefaultRoom
	cmp [SaX], 297
	jg EndRoom13Loop	
	jmp Room13Loop
EndRoom13Loop:
	mov [SaX], 5
	mov [RoomTimer2], 0
Room14Loop:
	mov ax, [Clock]
Tick14:
	cmp ax, [Clock]
	je Tick14
	mov dx, offset BKG14
	call DefaultRoom
	cmp [Sax], 294
	jl Skip14Fall 
		mov [ground], 49920
	Skip14Fall:
	cmp [SaY], 40320
	jb Skip14Cap
		cmp [SaX], 40
		jg Skip14Cap2
			inc [RoomTimer2]
		Skip14Cap2:
	Skip14Cap:
	cmp [RoomTimer2], 0
	je Skip14Erase
		mov [x], 15
		mov [y], 148
		mov [color], 5
		push [x]
		push [y]
		call PrintBlock
		pop [y]
		pop [x]
		add [x], 10
		call PrintBlock
	Skip14Erase:
	cmp [RoomTimer2], 0
	je Room14Loop
	cmp [SaX], 297
	jg EndRoom14Loop	
	jmp Room14Loop
EndRoom14Loop:
	mov [SaX], 5
	mov [ceiling], 0
Room15Loop:
	mov ax, [Clock]
Tick15:
	cmp ax, [Clock]
	je Tick15
	mov dx, offset BKG15
	call DefaultRoom
	cmp [SaX], 0
	jng Skip15DStep0
		mov [ground], 49920
		
		inc [SaJCheck] ; Change Grav
	Skip15DStep0:
	cmp [SaX], 15
	jng Skip15DStep1
		mov [ground], 46720
		inc [SaJCheck] ; Change Grav
	Skip15DStep1:
	cmp [SaX], 25
	jng Skip15DStep2
		mov [ground], 43520
		inc [SaJCheck] ; Change Grav
	Skip15DStep2:
	cmp [SaX], 35
	jng Skip15DStep3
		mov [ground], 40320
		inc [SaJCheck] ; Change Grav
	Skip15DStep3:
	cmp [SaX], 45
	jng Skip15DStep4
		mov [ground], 37120
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
		mov [ground], 33920
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
		mov [ground], 30720
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
		mov [ground], 27520
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
		mov [ground], 24320
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
		mov [ground], 21120
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
		mov [ground], 17920
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
	cmp [SaX], 297
	jg EndRoom15Loop	
	jmp Room15Loop
EndRoom15Loop:
	mov [SaLeftWall], 0
	mov [SaX], 5
Room16Loop:
	mov ax, [Clock]
Tick16:
	cmp ax, [Clock]
	je Tick16
	mov dx, offset BKG16
	call DefaultRoom
	cmp [SaX], 0
	jng Skip16DStep0
		mov [ground], 17920
		inc [SaJCheck] ; Change Grav
	Skip16DStep0:
	cmp [SaX], 89
	jng Skip16DStep1
		mov [ground], 21120
		inc [SaJCheck] ; Change Grav
	Skip16DStep1:
	cmp [SaX], 99
	jng Skip16DStep2
		mov [ground], 24320
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
		mov [ground], 27520
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
		mov [ground], 30720
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
		mov [ground], 33920
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
		mov [ground], 37120
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
		mov [ground], 40320
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
		mov [ground], 43520
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
		mov [ground], 46720
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
	cmp [SaX], 297
	jg EndRoom16Loop	
	jmp Room16Loop
EndRoom16Loop:
	mov [SaX], 5
	mov [SaLeftWall], 0
Room1BLoop:
	mov ax, [Clock]
Tick1B:
	cmp ax, [Clock]
	je Tick1B
	mov dx, offset BKG1B
	call DefaultRoom
	cmp [SaX], 297
	jg EndRoom1BLoop	
	jmp Room1BLoop
EndRoom1BLoop:
	add [StartStageCheck], 1b
	jmp StageSelect
Start2:	
	mov ax, 40h
	mov es, ax
	mov [ground], 24320
Room21Loop:
	mov ax, [Clock]
Tick21:
	cmp ax, [Clock]
	je Tick21
	mov dx, offset BKG21
	call DefaultRoom
	
	cmp [SaX], 297
	jg EndRoom21Loop	
	jmp Room21Loop
EndRoom21Loop:
	mov [SaX], 5
Room22Loop:
	mov ax, [Clock]
Tick22:
	cmp ax, [Clock]
	je Tick22
	mov dx, offset BKG22
	call DefaultRoom
	mov [ground], 21120
	cmp [SaX], 201
	jg Skip22DStep1
		mov [ground], 24320
		inc [SaJCheck] ; Change Grav
	Skip22DStep1:	
	cmp [SaX], 297
	jg EndRoom22Loop	
	jmp Room22Loop
EndRoom22Loop:
	mov [DisBlockX], 80
	mov [DisBlockY], 49920
	mov [SaX], 5
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
	cmp [SaY], 27520
	ja Room23Loop2
	cmp [SaX], 297
	jnb EndRoom23Loop
	Room23Loop2:
	jmp Room23Loop
EndRoom23Loop:
	mov [SaX], 5
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
	cmp [SaX], 193
	jg Skip24SaRightWall2
		mov [SaRightWall], 193
	Skip24SaRightWall2:
	cmp [SaX], 24
	jg Skip24SaRightWall1
		mov [SaRightWall], 24
	Skip24SaRightWall1:
	cmp [SaY], 19200
	ja Skip24SaRightWall4
		mov [SaRightWall], 298
	Skip24SaRightWall4:
	
	mov [SaLeftWall], 0
	cmp [SaX], 105
	jng Skip24SaLeftWall2
		mov [SaLeftWall], 106
	Skip24SaLeftWall2:
	cmp [SaY], 19200
	ja Skip24SaLeftWall5
		mov [SaLeftWall], 0
	Skip24SaLeftWall5:
	mov [ground], 24320
	cmp [SaX], 24
	jng Skip24SaGround1
		mov [ground], 18240
	Skip24SaGround1:
	cmp [SaX], 105
	jng Skip24SaGround2
		mov [ground], 24320
		cmp [RoomTimer], 10
		jb Skip24SaGround2
			inc [RoomTimer2]
			mov [RoomTimer], 0
	Skip24SaGround2:
	cmp [SaX], 194
	jng Skip24SaGround3
		mov [ground], 18240
		cmp [RoomTimer2], 154
		jbe Skip24SaGround3
		cmp [RoomTimer2], 165
		jae Skip24SaGround3
		dec [RoomTimer2]
	Skip24SaGround3:
	cmp [SaX], 275
	jng Skip24SaGround4
		mov [ground], 27520
	Skip24SaGround4:
	cmp [SaX], 285
	jng Skip24SaGround5
		mov [ground], 30720
	Skip24SaGround5:
	cmp [SaX], 295
	jng Skip24SaGround6
		mov [ground], 33920
	Skip24SaGround6:
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
	
	cmp [RoomTimer2], 165
	jb Room24Loop2
	cmp [SaX], 297
	jg EndRoom24Loop
	Room24Loop2:
	jmp Room24Loop
EndRoom24Loop:
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
			jmp Skip25FBul
	Skip25SkipFBul1:
		cmp ax, 299
		jng Skip25SkipFBul2
			mov [FBulRight + bx], 0
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
	
	cmp [RoomTimer4], 184
	jb Room25Loop2
	cmp [SaX], 297
	jg EndRoom25Loop
	Room25Loop2:
	jmp Room25Loop
EndRoom25Loop:
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
	cmp [SaX], 0
	jng Skip26DStep0
		mov [ground], 21120
	Skip26DStep0:
	cmp [SaX], 20
	jng Skip26DStep1
		mov [ground], 24320
	Skip26DStep1:
	cmp [SaX], 210
	jng Skip26DStep2
		mov [ground], 27520
	Skip26DStep2:
	cmp [SaX], 220
	jng Skip26DStep3
		mov [ground], 30720
	Skip26DStep3:
	cmp [SaX], 230
	jng Skip26DStep4
		mov [ground], 33920
	Skip26DStep4:
	cmp [SaX], 240
	jng Skip26DStep5
		mov [ground], 37120
	Skip26DStep5:
	cmp [SaX], 250
	jng Skip26DStep6
		mov [ground], 40320
	Skip26DStep6:
	cmp [SaX], 260
	jng Skip26DStep7
		mov [ground], 43520
	Skip26DStep7:
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
	cmp [SaX], 297
	jg EndRoom26Loop	
	jmp Room26Loop
EndRoom26Loop:

	mov [SaLeftWall], 0
	mov [SaX], 5
	mov [DisBlockX], 293
	mov [DisBlockY], 24320
	mov [DisBlockHP], 28
	mov [RoomTimer2], 0
	mov [RoomTimer3], 0
	mov [RoomTimer], 0
	mov [RoomTimer4], 0
	
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
			jmp Skip2BFBul
	Skip2BSkipFBul1:
		cmp ax, 299
		jng Skip2BSkipFBul2
			mov [FBulRight + bx], 0
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
	cmp [DisBlockX], 293
	jnb Skip2BCapReset1
		mov [DisBlockX], 293
	Skip2BCapReset1:
	cmp [DisBlockX], 303
	jg EndRoom2BLoop	
	jmp Room2BLoop
EndRoom2BLoop:
	add [StartStageCheck], 10b
	jmp StageSelect
Start3:	
	mov ax, 40h
	mov es, ax
	mov [ground], 33920
Room31Loop:
	mov ax, [Clock]
Tick31:
	cmp ax, [Clock]
	je Tick31
	mov dx, offset BKG31
	call DefaultRoom
	call CopySCRBitmap
	cmp [SaX], 297
	jg EndRoom31Loop	
	jmp Room31Loop
EndRoom31Loop:
	mov [SaX], 5
Room32Loop:
	mov ax, [Clock]
Tick32:
	cmp ax, [Clock]
	je Tick32
	mov dx, offset BKG32
	call DefaultRoom
	mov [ground], 33920
	cmp [SaX], 50
	jng Skip32DStep1
		mov [ground], 37120
	Skip32DStep1:
	cmp [SaX], 210
	jng Skip32DStep4
		mov [ground], 33920
	Skip32DStep4:
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
	call CopySCRBitmap
	cmp [SaX], 297
	jg EndRoom32Loop	
	jmp Room32Loop
EndRoom32Loop:
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
	mov [SaRightWall], 179
	cmp [SaY], 40320
	ja Skip33RightWall
		mov [SaRightWall], 260
	Skip33RightWall:
	cmp [SaX], 185
	jb Skip33RightWall1
		mov [SaRightWall], 260
	Skip33RightWall1:
	cmp [SaY], 37120
	ja Skip33RightWall2
		mov [SaRightWall], 298
	Skip33RightWall2:
	mov [ground], 33920
	cmp [SaX], 151
	jng Skip33DStep1
		mov [ground], 37120
	Skip33DStep1:
	cmp [SaX], 161
	jng Skip33DStep2
		mov [ground], 46720
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
		mov [ground], 46720
		dec [RoomTimer3]
		cmp [SaY], 44160
		jna Skip33DStep4
			mov [SaFire], 0
	Skip33DStep4:
	cmp [SaX], 265
	jng Skip33DStep5
		mov [ground], 33920
	Skip33DStep5:
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
	cmp [RoomTimer2], 225
	jb Room33Loop2
	cmp [SaX], 297
	jg EndRoom33Loop	
	Room33Loop2:
	jmp Room33Loop
EndRoom33Loop:
	mov [SaX], 5
	mov [SaFire], 1
Room34Loop:
	mov ax, [Clock]
Tick34:
	cmp ax, [Clock]
	je Tick34
	mov dx, offset BKG34
	call DefaultRoom
	mov [SaRightWall], 15
	cmp [SaY], 28160
	ja Skip34RightWall
		mov [SaRightWall], 194
	Skip34RightWall:
	cmp [SaX], 100
	jb Skip34RightWall1
		cmp [SaY], 9280
		jb Skip34RightWall1
			mov [SaRightWall], 260
	Skip34RightWall1:
	cmp [SaX], 220
	jb Skip34RightWall2
		mov [SaRightWall], 298
	Skip34RightWall2:
	mov [ground], 33920
	cmp [SaX], 16
	jng Skip34DStep1
		mov [ground], 28160
	Skip34DStep1:
	cmp [SaX], 28
	jng Skip34DStep2
		mov [ground], 24960
	Skip34DStep2:
	cmp [SaX], 42
	jng Skip34DStep3
		mov [ground], 23680
	Skip34DStep3:
	cmp [SaX], 83
	jng Skip34DStep4
		mov [ground], 21120
	Skip34DStep4:
	cmp [SaX], 133
	jng Skip34DStep5
		mov [ground], 17920
	Skip34DStep5:
	cmp [SaX], 143
	jng Skip34DStep6
		mov [ground], 14720
	Skip34DStep6:
	cmp [SaX], 153
	jng Skip34DStep7
		mov [ground], 11520
	Skip34DStep7:
	cmp [SaFire], 0
	jne Skip34Reignite
		inc [SaFire]
	Skip34Reignite:
	cmp [SaX], 297
	jg EndRoom34Loop	
	jmp Room34Loop
EndRoom34Loop:
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
	mov [ground], 11520
	cmp [SaX], 40
	jng Skip35DStep1
		mov [ground], 37120
	Skip35DStep1:
	cmp [SaX], 199
	jng Skip35DStep2
		mov [ground], 33920
	Skip35DStep2:
	mov [SaLeftWall], 0
	cmp [SaY], 14720
	jna Skip35LeftWall
		mov [SaLeftWall], 41
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
	cmp [SaX], 297
	jg EndRoom35Loop	
	jmp Room35Loop
EndRoom35Loop:
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
	cmp [RoomTimer], 186
	jnb EndRoom3BLoop	
	jmp Room3BLoop
EndRoom3BLoop:
	add [StartStageCheck], 100b
	jmp StageSelect
Start4:	
	mov ax, 40h
	mov es, ax
	
	
EndRoom4BLoop:
	add [StartStageCheck], 1000b
	jmp StageSelect
Start5:	
	mov ax, 40h
	mov es, ax
	
	
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
	mov [ground], 40320
	mov [En1Type], 2
	mov [En1HP], 7
	mov [En1LastPose], offset SebL
	mov [En1X], 200
Room81Loop:
	mov ax, [Clock]
Tick81:
	cmp ax, [Clock]
	je Tick81
	mov dx, offset BKG81
	call DefaultRoom
	cmp [SaX], 297
	jg EndRoom81Loop	
	jmp Room81Loop
EndRoom81Loop:
	mov [SaX], 5
	mov [En1Type], 2
	mov [En1HP], 7
	mov [En1LastPose], offset SebL
	mov [En1X], 280
	mov [En2Type], 2
	mov [En2HP], 7
	mov [En2LastPose], offset SebR
	mov [En2X], 140
Room82Loop:
	mov ax, [Clock]
Tick82:
	cmp ax, [Clock]
	je Tick82
	mov dx, offset BKG82
	call DefaultRoom
	cmp [SaY], 40320
	jna Skip82RightWall
		mov [SaRightWall], 272
		jmp SkipSkip82RightWall
	Skip82RightWall:
	mov [SaRightWall], 298
	SkipSkip82RightWall:
	cmp [SaX], 0
	jng Skip82DStep0
		mov [ground], 40320
		inc [SaJCheck] ; Change Grav
	Skip82DStep0:
	cmp [SaX], 117
	jng Skip82DStep1
		mov [ground], 43520
		inc [SaJCheck] ; Change Grav
	Skip82DStep1:
	cmp [SaX], 127
	jng Skip82DStep2
		mov [ground], 46720
		inc [SaJCheck] ; Change Grav
	Skip82DStep2:
	cmp [SaX], 137
	jng Skip82DStep3
		mov [ground], 49920
		inc [SaJCheck] ; Change Grav
	Skip82DStep3:
	cmp [SaX], 272
	jng Skip82DStep4
		mov [ground], 40320
		inc [SaJCheck] ; Change Grav
	Skip82DStep4:	
	cmp [SaX], 297
	jg EndRoom82Loop	
	jmp Room82Loop
EndRoom82Loop:
	mov [SaX], 5
Room83Loop:
	mov ax, [Clock]
Tick83:
	cmp ax, [Clock]
	je Tick83
	mov dx, offset BKG83
	call DefaultRoom
	cmp [SaX], 117
	jng Skip83DStep1
		mov [ground], 56000
		inc [SaJCheck] ; Change Grav
	Skip83DStep1:
	mov [SaLeftWall], 0
	cmp [Say], 40320
	jna Skip83LeftWall
		mov [SaLeftWall], 117
	Skip83LeftWall:
	cmp [SaY], 56000
	jnb EndRoom83Loop	
	jmp Room83Loop
EndRoom83Loop:
	mov [Say], 1600
	mov [SaLeftWall], 0
	mov [ground], 49920
Room84Loop:
	mov ax, [Clock]
Tick84:
	cmp ax, [Clock]
	je Tick84
	mov dx, offset BKG84
	call DefaultRoom
	cmp [SaX], 297
	jg EndRoom84Loop	
	jmp Room84Loop
EndRoom84Loop:
	mov [SaX], 5
	mov [En1HP], 5
	mov [En1X], 260
Room85Loop:
	mov ax, [Clock]
Tick85:
	cmp ax, [Clock]
	je Tick85
	mov dx, offset BKG85
	call DefaultRoom
	mov [SaRightWall], 298
	mov [SaLeftWall], 0
	mov [ground], 49920
	cmp [SaX], 30
	jl Skip85Fall
	cmp [SaX], 39
	jg Skip85Fall
		mov [ground], 56000
		inc [JCheck]
		cmp [SaY], 49920
		jna Skip85RightWall
			mov [SaRightWall], 39
			mov [SaLeftWall], 30
		Skip85RightWall:
	Skip85Fall:
	mov [ceiling], 0
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
	mov [SaX], 5
	mov [ceiling], 47680
Room86Loop:
	mov ax, [Clock]
Tick86:
	cmp ax, [Clock]
	je Tick86
	mov dx, offset BKG86
	call DefaultRoom
	cmp [SaX], 297
	jg EndRoom86Loop	
	jmp Room86Loop
EndRoom86Loop:
	mov [SaX], 5
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
	cmp [SaX], 0
	jng Skip87DStep0
		mov [ground], 49920
		inc [SaJCheck] ; Change Grav
	Skip87DStep0:
	cmp [SaX], 240
	jng Skip87DStep1
		mov [ground], 46720
		inc [SaJCheck] ; Change Grav
	Skip87DStep1:
	cmp [SaX], 250
	jng Skip87DStep2
		mov [ground], 43520
		inc [SaJCheck] ; Change Grav
	Skip87DStep2:
	cmp [SaX], 260
	jng Skip87DStep3
		mov [ground], 40320
		inc [SaJCheck] ; Change Grav
	Skip87DStep3:
	mov [SaLeftWall], 0
	cmp [SaY],47680
	jnb Skip87LeftWall
		mov [SaLeftWall], 122
	Skip87LeftWall:
	cmp [SaX], 297
	jg EndRoom87Loop	
	jmp Room87Loop
EndRoom87Loop:
	mov [SaLeftWall], 0
	mov [SaX], 5
Room88Loop:
	mov ax, [Clock]
Tick88:
	cmp ax, [Clock]
	je Tick88
	mov dx, offset BKG88
	call DefaultRoom
	cmp [SaX], 177
	jg Skip88SaRightWall2
		mov [SaRightWall], 178
	Skip88SaRightWall2:
	cmp [SaX], 83
	jg Skip88SaRightWall1
		mov [SaRightWall], 83
	Skip88SaRightWall1:
	cmp [SaY], 35200
	ja Skip88SaRightWall4
		mov [SaRightWall], 178
	Skip88SaRightWall4:
	cmp [SaY], 31360
	ja Skip88SaRightWall5
		mov [SaRightWall], 298
	Skip88SaRightWall5:
	cmp [SaX], 199 
	jng Skip88SaRightWall3
		mov [SaRightWall], 298
	Skip88SaRightWall3:
	;
	cmp [SaX], 125
	jng Skip88SaLeftWall2
		mov [SaLeftWall], 125
	Skip88SaLeftWall2:
	cmp [SaY], 35200
	ja Skip88SaLeftWall5
		mov [SaLeftWall], 0
	Skip88SaLeftWall5:
	cmp [SaX], 82 
	jnl Skip88SaLeftWall3
		mov [SaLeftWall], 0
	Skip88SaLeftWall3:
	mov [ground], 40320
	cmp [SaX], 83
	jng Skip88SaGround1
		mov [ground], 35200
	Skip88SaGround1:
	cmp [SaX], 124
	jng Skip88SaGround2
		mov [ground], 40320
	Skip88SaGround2:
	cmp [SaX], 179
	jng Skip88SaGround2b
		mov [ground], 31360
	Skip88SaGround2b:
	cmp [SaX], 208
	jng Skip88SaGround3
		mov [ground], 35200
	Skip88SaGround3:
	cmp [SaX], 219
	jng Skip88SaGround4
		mov [ground], 40320
	Skip88SaGround4:
	cmp [SaX], 297
	jg EndRoom88Loop	
	jmp Room88Loop
EndRoom88Loop:
	mov [SaLeftWall], 0
	mov [SaX], 5
Room89Loop:
	mov ax, [Clock]
Tick89:
	cmp ax, [Clock]
	je Tick89
	mov dx, offset BKG89
	call DefaultRoom
	mov [ground], 40320
	mov [SaLeftWall], 0
	cmp [SaX], 57
	jng Skip89DStep0
		mov [SaLeftWall], 58
		mov [ground], 49920
		inc [SaJCheck] ; Change Grav
	Skip89DStep0:
	cmp [SaX], 191
	jng Skip89DStep1
		mov [ground], 46720
		inc [SaJCheck] ; Change Grav
	Skip89DStep1:
	cmp [SaX], 201
	jng Skip89DStep2
		mov [ground], 43520
		inc [SaJCheck] ; Change Grav
	Skip89DStep2:
	cmp [SaX], 211
	jng Skip89DStep3
		mov [ground], 40320
		inc [SaJCheck] ; Change Grav/
	Skip89DStep3:
	cmp [SaY], 40320
	jnb Skip89LeftWall
		mov [SaLeftWall], 0
	Skip89LeftWall:
	cmp [SaX], 297
	jg EndRoom89Loop	
	jmp Room89Loop
EndRoom89Loop:
	mov [SaX], 5
Room810Loop:
	mov [SaLeftWall], 0
	mov ax, [Clock]
Tick810:
	cmp ax, [Clock]
	je Tick810
	mov dx, offset BKG810
	call DefaultRoom
	cmp [SaX], 297
	jg EndRoom810Loop	
	jmp Room810Loop
EndRoom810Loop:
	mov [SaX], 5
Room811Loop:
	mov ax, [Clock]
Tick811:
	cmp ax, [Clock]
	je Tick811
	mov dx, offset BKG811
	call DefaultRoom
	cmp [SaX], 297
	jg EndRoom811Loop	
	jmp Room811Loop
EndRoom811Loop:
	mov [SaX], 5
Room812Loop:
	mov ax, [Clock]
Tick812:
	cmp ax, [Clock]
	je Tick812
	mov dx, offset BKG812
	call DefaultRoom
	cmp [SaX], 297
	jg EndRoom812Loop	
	jmp Room812Loop
EndRoom812Loop:
	mov [SaX], 5
Room8BLoop:
	mov ax, [Clock]
Tick8B:
	cmp ax, [Clock]
	je Tick8B
	mov dx, offset BKG8B
	call DefaultRoom
	mov [SaRightWall], 212
	cmp [SaX], 103
	jg Skip8BRightWall
	cmp [SaY], 33280
	jna Skip8BRightWall
		mov [SaRightWall], 82
	Skip8BRightWall:
	mov [ground], 40320
	cmp [SaX], 82
	jng Skip8BDStep1
		mov [ground], 33280
		inc [SaJCheck] ; Change Grav
	Skip8BDStep1:
	cmp [SaX], 102
	jng Skip8BDStep2
		mov [ground], 30720
		inc [SaJCheck] ; Change Grav
	Skip8BDStep2:
		cmp [SaX], 162
	jng Skip8BDStep3
		mov [ground], 36800
		inc [SaJCheck] ; Change Grav
	Skip8BDStep3:
	cmp [SaX], 200
	jg EndRoom8BLoop
	jmp Room8BLoop
EndRoom8BLoop:
	add [StartStageCheck], 1000000b
	jmp StageSelect
Start9:
	mov ax, 40h
	mov es, ax
	
	
EndRoom9BLoop:
	add [StartStageCheck], 10000000b
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






			