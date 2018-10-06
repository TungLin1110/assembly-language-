; Description:
; 
; Revision date:
INCLUDE Irvine32.inc
.data
source BYTE "This is the source string",0
target BYTE SIZEOF source DUP('#')
.code
main PROC

	mov esi,0
	mov edi,SIZEOF source
	dec edi

	mov ecx,SIZEOF source
L1:
	mov al,source[esi]
	mov target[edi],al
	inc esi
	dec edi
	loop L1

	invoke ExitProcess,0

main ENDP
END main
