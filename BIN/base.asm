IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your variables here
	x dw 5
	y dw 56000
	color db 0 
	ground dw 56000
	VerVel dw 0
	JCheck db 0
	SCheck dw 0
	SRight dw 0
	msg db '!$'
; ------------------------------------------------
	SLS db 'SLS1.bmp',0
	SRS db 'SRS1.bmp',0
	SRSl db 'SRSl.bmp',0
	SLSl db 'SLSl.bmp',0
	BKG db 'BKG2.bmp',0
	filehandle dw ?
	Header db 54 dup (0)
	Palette db 256*4 dup (0)
	ScrLine db 320 dup (0)
	ErrorMsg db 'Error', 13, 10,'$' 
	LastPose dw 0
; --------------------------
	Clock equ es:6Ch
; ------------------------------------------------

CODESEG
proc Gravity
	push bx
	push ax
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
	cmp [x], 298
	jg ResetRight
	cmp [x], 0
	jl ResetLeft
	jmp SkipResetX
	ResetRight:
		mov [x], 298
		jmp SkipResetX
	ResetLeft:
		mov [x], 0
	SkipResetX:
	mov ax, [ground]
	cmp [y], ax
	ja ResetY
	jmp SkipResetY
ResetY:
	cmp [y], ax
	ja ResetDown
	jmp ResetUp
	ResetDown:
		mov [y], ax
		jmp SkipResetY
	ResetUp:
		add [y], 320
SkipResetY:
	mov ax, 0A000h
	mov es, ax
	mov cx, 24
PrintBMPLoop:
		push cx
		; di = cx*320, point to the correct screen line
		mov di,cx
		shl cx,6
		shl di,8
		add di,cx
	; Read one line
		mov ah,3fh
		mov cx, 24
		mov dx,offset ScrLine
		int 21h
		; Copy one line into video memory
		mov cx, 27
		mov si,offset ScrLine 
		push ax
		add di, [x]
		add di, [y]
	LineLoop:
			mov ah, [ds:si]
			mov [es:di], ah
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
proc CloseFile
	push ax
	push bx
	mov ah,3Eh
	mov bx, [filehandle]
	int 21h
	pop bx
	pop ax
	ret
endp CloseFile 
proc ClearTrack
	push ax
	push bx
	push cx
	push di
	push si
	push es
	push dx
	mov dx, offset BKG
	call OpenFile
	call ReadHeader
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
endp
proc Move
	push ax
	push bx
	push cx
	push di
	push si
	push es
	push dx
	call ClearTrack
	cmp [SCheck], 0
	ja SkipFirstSlide
	mov bx, [ground]
	cmp [y], bx
	jb SkipSlide
	cmp al, 50h ;Is it the Down key ?
	je Slide
	jmp SkipSlide
Slide:
		cmp [SCheck], 0
		jne SkipFirstSlide
	FirstSlide:
			add [y], 1280
			add [ground], 1280
			mov bx, offset SRS
			cmp [LastPose], bx
			mov [SRight], 5
			je RightSlide
			jmp LeftSlide
		RightSlide:
				mov [LastPose], offset SRSl
				jmp SkipFirstSlide
		LeftSlide:
				mov [LastPose], offset SLSl
				sub [SRight], 10
	SkipFirstSlide:
		inc [SCheck]
		mov bx, [SRight]
		add [x], bx
		cmp [SCheck], 10
		jb SkipMoveLeft
		mov [SCheck], 0
		sub [y], 1280
		sub [ground], 1280
			mov [LastPose], offset SRS
		cmp [SRight], 0
		jg SkipSlide
			mov [LastPose], offset SLS
SkipSlide:
	mov bx, [ground]
	cmp [y], bx
	jb SkipJump
	cmp al, 48h ;Is it the Up key ?
	je Jump
	jmp SkipJump
Jump:
		inc [JCheck]
		add [VerVel], 2880
		mov [LastPose], offset SLS
SkipJump:
	cmp al, 4dh ;Is it the Right key ?
	je MoveRight
	jmp SkipMoveRight
MoveRight:
		add [x], 3
		mov [LastPose], offset SRS
SkipMoveRight:
	cmp al, 4bh ;Is it the Left key ?
	je MoveLeft
	jmp SkipMoveLeft
MoveLeft:
		sub [x], 3
		mov [LastPose], offset SLS
SkipMoveLeft:
	cmp al, 1h ; Is it the ESC key ?
	je SpecESC
	call Gravity
	call ClearKeyboardBuffer
	mov dx, [LastPose]
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
	mov dx, offset SRS
	mov [LastPose], offset SRS
	call OpenFile
	call ReadHeader
	call ReadPalette
	call CopyPal
	call CopyBitmap
	call CloseFile
	mov ax, 40h
	mov es, ax
DelayLoop:
	mov ax, [Clock]
Tick:
	cmp ax, [Clock]
	je Tick
	in al, 60h
	call Move
	jmp DelayLoop
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

	
	
	cmp [JCheck], 0
	ja Jump
	
	add [JCheck], 1
	
	cmp [JCheck], 50
	je StopJumping