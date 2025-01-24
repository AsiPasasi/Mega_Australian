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
	SaLastPose dw 0
	SaMode db 0
	SaRightWall dw 298
	SaLeftWall dw 0
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
	;-----------
; Enemy2's variables
	En2X dw 150
	En2Y dw 40320
	En2VerVel dw 0
	En2JCheck db 0
	En2HP db 0
	En2LastPose dw 0
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
; Hostile Bullets variables
	HBulX dw 80 dup (0)
	HBulY dw 80 dup (0)
	HBulRight dw 80 dup (0)
; general bullet variables
	AddBulX dw 0
	AddBulY dw 0
	AddBulRight dw 0
; Saxton's and the sentry's bullet timers
	BulSaTimer db 0
	BulSeTimer db 0
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
	SRS db 'SRS2.bmp',0
	SRSl db 'SRSl2.bmp',0
	SLSl db 'SLSl2.bmp',0
	SLR2 db 'SLR2.bmp',0
	SRR2 db 'SRR2.bmp',0
	SLR1 db 'SLR1.bmp',0
	SRR1 db 'SRR1.bmp',0
	SeL db 'SeL.bmp',0
	SeR db 'SeR.bmp',0
	SBLR2 db 'SBLR2.bmp',0
	SBRR2 db 'SBRR2.bmp',0
	SBLR1 db 'SBLR1.bmp',0
	SBRR1 db 'SBRR1.bmp',0
	SBE db 'SBE.bmp',0
	BKGSS db 'BKGSS.bmp',0
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
	BulH db 'BulH.bmp',0
	DisBlock db 'DisBlock.bmp',0
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
	cmp [HP], 1
	jnl SkipDeath
		jmp SpecESC
	SkipDeath:
	mov cx, 28
PrintHealthBar:
		push cx
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
		mov [color], 2
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

proc FriendlyBullets
	; updates friendly bullet's position and checks if they hit.
	push ax
	push dx
	push cx
	push bx
	xor bx, bx
	mov cx, 20
	FriendlyBulletsArr:
		mov ax, [FBulRight + bx]
		cmp ax, 0
		jne SkipSkipFBul
			jmp SkipFBul
	SkipSkipFBul:
		mov ax, [FBulX + bx]
		cmp ax, 0
		jnl SkipSkipFBul1
			mov [FBulRight + bx], 0
			jmp SkipFBul
	SkipSkipFBul1:
		cmp ax, 299
		jng SkipSkipFBul2
			mov [FBulRight + bx], 0
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
				mov [FBulRight + bx], 0
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
				mov [FBulRight + bx], 0
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
				mov [FBulRight + bx], 0
	SkipBulHitEn3:
		; updates bullet stats and sends them to the general var to print the bullet
		mov ax, [FBulRight + bx]
		add [FBulX + bx], ax
		mov ax, [FBulX + bx]
		mov [x], ax
		mov ax, [FBulY + bx]
		mov [Y], ax
		mov dx, offset BulH
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
; same as FriendlyBullets but for the hostile bullets
	push ax
	push dx
	push cx
	push bx
	xor bx,bx
	mov cx, 80
	HostileBulletsArr:
		mov ax, [HBulRight]
		cmp ax, 0
		jne SkipSkipHBul
			jmp SkipHBul
	SkipSkipHBul:
		mov ax, [HBulX + bx]
		cmp ax, 0
		jnl SkipSkipHBul1
			jmp SkipHBul
	SkipSkipHBul1:
		cmp ax, 299
		jng SkipSkipHBul2
			jmp SkipHBul
	SkipSkipHBul2:
		mov ax, [HBulX + bx]
		mov [x], ax
		mov ax, [HBulY + bx]
		mov [y], ax
		mov [PicX], 21
		mov [PicY], 24
		mov ax, [HBulX + bx]
		sub ax, 21
		cmp ax, [Sax] ; What Direction ?
		jng SkipSkipBulHitSa
		jmp SkipBulHitSa
	SkipSkipBulHitSa:
		add ax, 26
		cmp ax, [Sax]
		jna SkipBulHitSa
	BulHitSa:
			mov ax, [HBulY + bx]
			add ax, 8000
			cmp ax, [SaY]
			ja SkipSkipBulHitSa2
				
				jmp SkipBulHitSa
		SkipSkipBulHitSa2:
			sub ax, 16000
			cmp ax, [SaY]
			jb SkipSkipBulHitSa3
				jmp SkipBulHitSa
		SkipSkipBulHitSa3:
			sub [HP], 1
			mov [HBulRight + bx], 0
	SkipBulHitSa:
		mov ax, [HBulRight + bx]
		add [HBulX + bx], ax
	
		mov ax, [HBulX + bx]
		mov [x], ax
		mov ax, [HBulY + bx]
		mov [y], ax
		mov dx, offset BulH
		call OpenFile
		call ReadHeader
		call ReadPalette
		call CopyBitmap
		call CloseFile
		inc bx
		inc bx
	dec cx
	cmp cx, 0
	je SkipHBul
	jmp HostileBulletsArr
SkipHBul:
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
		cmp [FBulRight + bx], 0
		jne SkipAddFriendly
			mov ax, [AddBulX]
			mov [FBulX + bx], ax
			mov ax, [AddBulY]
			mov [FBulY + bx], ax
			mov ax, [AddBulRight]
			mov [FBulRight + bx], ax
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
		call SentryBuster
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
		call SentryBuster
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
	cmp al, 2h ;Is it the 1 key ?
	je ScoutMode
	jmp SkipScoutMode
ScoutMode:
		
		mov [SaMode], 1
		
SkipScoutMode:
	cmp al, 3h ;Is it the 2 key ?
	je SoldierMode
	jmp SkipSoldierMode
SoldierMode:
		
		mov [SaMode], 2
		
SkipSoldierMode:
	cmp al, 4h ;Is it the 3 key ?
	je PyroMode
	jmp SkipPyroMode
PyroMode:
		
		mov [SaMode], 3
		
SkipPyroMode:
	cmp al, 5h ;Is it the 4 key ?
	je DemomanMode
	jmp SkipDemomanMode
DemomanMode:
		
		mov [SaMode], 4
		
SkipDemomanMode:
	cmp al, 6h ;Is it the 5 key ?
	je HeavyMode
	jmp SkipHeavyMode
HeavyMode:
		
		mov [SaMode], 5
		
SkipHeavyMode:
	cmp al, 7h ;Is it the 6 key ?
	je PlaceSentry
	jmp SkipPlaceSentry
PlaceSentry:
		
		mov [SaMode], 6
		
		mov [SeHP], 10
		mov ax, [SaX]
		add ax, 21
		mov [SeX], ax
		mov ax, [SaY]
		mov [SeY], ax
		mov ax, [SaVerVel]
		mov [SeVerVel], ax
		mov bx, offset SRS
		cmp [SaLastPose], bx
		je RightSentry
		mov bx, offset SRR1
		cmp [SaLastPose], bx
		je RightSentry
		mov bx, offset SRR2
		cmp [SaLastPose], bx
		je RightSentry
		mov bx, offset SRSl
		cmp [SaLastPose], bx
		je RightSentry
		jmp LeftSentry
	RightSentry:
			mov [SeLastPose], offset SeR

			jmp SkipPlaceSentry
	LeftSentry:
			mov [SeLastPose], offset SeL
			sub [Sex], 42
SkipPlaceSentry:
	cmp al, 9h ;Is it the 8 key ?
	je SniperMode
	jmp SkipSniperMode
SniperMode:
		
		mov [SaMode], 8
		
SkipSniperMode:
	cmp al, 10h ;Is it the 9 key ?
	je SpyMode
	jmp SkipSpyMode
SpyMode:
		
		mov [SaMode], 9
		
SkipSpyMode:
	cmp [SCheck], 0
	ja SkipFirstSlide
	mov bx, [ground]
	cmp [SaY], bx
	jnb SkipSSPass
		jmp SkipSlide
SkipSSPass:
	cmp al, 50h ;Is it the Down key ?
	je Slide
	jmp SkipSlide
Slide:
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
	cmp [BulSaTimer], 0
	jne SkipShoot
	cmp al, 39h ;Is it the Space key ?
	je Shoot
	jmp SkipShoot
Shoot:
		inc [BulSaTimer]
		mov ax, [SaX]
		mov [AddBulX], ax
		mov ax, [SaY]
		mov [AddBulY], ax
		mov [AddBulRight], 8
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
	SkipBulDirChange:
		call AddFriendlyBul
SkipShoot:
	cmp [BulSaTimer], 0
	je SkipUpdateBulSaTimer
		inc [BulSaTimer]
		cmp [BulSaTimer], 5
		jl SkipResetBulSaTimer
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
		jmp SpecESC
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
	mov [SaLastPose], offset SRS
	mov [En1LastPose], offset SBE
StageSelect:
	mov dx, offset BKGSS
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
	jmp StageSelectLoop
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
	
EndRoom2BLoop:
	add [StartStageCheck], 10b
	jmp StageSelect
Start3:	
	mov ax, 40h
	mov es, ax
	
	
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






			