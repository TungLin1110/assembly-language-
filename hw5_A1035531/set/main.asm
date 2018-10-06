; Description:
; 
; Revision date:
INCLUDE Irvine32.inc
.data
show BYTE "w",0
.code
main proc
	mov ecx,16
	mov ebx,0
	L1:
	push ecx
	mov ecx,16

	L2:
	
	mov eax,ebx
	call settextcolor
	mov edx ,OFFSET show
	call writestring 
	add ebx,1
	loop L2
	pop ecx
	call crlf
	loop L1

	mov eax,15
	call settextcolor



	invoke ExitProcess , 0


main ENDP
END main