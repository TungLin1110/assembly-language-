
INCLUDE Irvine32.inc
.data
A BYTE "A:",0
B BYTE "B:",0
answer BYTE "gcd:",0
temp DWORD ?
.code
main PROC

mov edx,OFFSET A
call WriteString
call ReadInt
mov temp, eax

mov edx,OFFSET B
call WriteString
call ReadInt
mov ebx, temp


abs_a:
cmp eax,0
jge abs_b
neg eax

abs_b:
cmp ebx,0
jge big_small
neg ebx

big_small:
cmp eax,ebx
jz done
jg gcd
xchg eax,ebx

gcd:    
mov edx,0
div ebx 
cmp edx,0
jz done 
mov eax,ebx
mov ebx,edx
jmp gcd



done:
mov eax,ebx
mov edx,OFFSET answer
call WriteString
call Writeint
call Crlf


exit
main ENDP
END main