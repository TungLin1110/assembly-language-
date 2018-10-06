.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
bigEndian BYTE 12h,34h,56h,78h
littleEndian DWORD ?
.code
main proc

        mov     al,byte ptr bigEndian+0
        mov     byte ptr littleEndian+3,al
        mov     al,byte ptr bigEndian+1
        mov     byte ptr littleEndian+2,al
        mov     al,byte ptr bigEndian+2
        mov     byte ptr littleEndian+1,al
        mov     al,byte ptr bigEndian+3
        mov     byte ptr littleEndian+0,al


    invoke ExitProcess,0
main endp
end main