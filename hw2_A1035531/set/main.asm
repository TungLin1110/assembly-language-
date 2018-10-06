; Description:
; 
; Revision date:
INCLUDE Irvine32.inc
.data

.code
main proc
	mov eax,5555
	 mov ebx,2222
	 mov ecx,1111
	 mov edx,3333
	 add eax,ebx
     add ecx,edx
	 sub eax,ecx
	 call DumpRegs      
	 invoke ExitProcess , 0


main ENDP
END main