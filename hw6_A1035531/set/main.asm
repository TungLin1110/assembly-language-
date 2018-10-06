
INCLUDE Irvine32.inc

.data
score dword ?

.code
main PROC
	mov ecx , 10
	call Randomize


	DoRandom:
		mov eax ,100
		call randomrange

		cmp eax,50
		jl DoRandom 

		call writeDec
		call crlf
		mov score,eax
		call CalcGrade
		loop DoRandom
	
	exit
main ENDP
CalcGrade PROC
	mov eax,score
	cmp eax,90
	jge a

	mov eax,score
	cmp eax,80
	jge b

	mov eax,score
	cmp eax,70
	jge c1					

	mov eax,score
	cmp eax,60
	jge d

	mov eax,score
	cmp eax,60
	jl f

	a:
		mov al,"A"
		call writechar
		call crlf
	ret

	b:
		mov al,"B"
		call writechar
		call crlf
	ret

	c1:
		mov al,"C"
		call writechar
		call crlf
	ret

	d:
		mov al,"D"
		call writechar
		call crlf
	ret

	f:
		mov al,"F"
		call writechar
		call crlf
	ret
CalcGrade ENDP	

	


END main