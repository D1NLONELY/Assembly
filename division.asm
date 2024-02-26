section .data
    msg db "The result is :",0xA,0xD
    len equ $-msg

section .bss
    res resb 1

section .text
    global _start

_start:
    mov ax,'8'
    sub ax,'0'

    mov bl,'2'
    sub bl,'0'
    div bl
    add ax,'0'

    mov [res],ax
    mov eax,4
    mov ebx,1
    mov ecx,msg
    mov ebx,len
    int 80h

    mov eax,4
    mov ebx,1
    mov ecx,res
    mov edx,1
    int 80h

    mov eax,1
    mov ebx,0
    int 80h