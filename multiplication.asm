section .data
    message db "The result is : ",0xA,0xD
    len equ $-message

section .bss
    res resb 1

section .text
    global _start

_start:
    mov al,'3'
    sub al,'0'

    mov bl,'2'
    sub bl,'0'
    mul bl
    add al,'0'

    mov [res],al
    mov eax,4
    mov ebx,1
    mov ecx,message
    mov edx,len
    int 80h

    mov eax,4
    mov ebx,1
    mov ecx,res
    mov edx,1
    int 80h

    mov eax,1
    mov ebx,0
    int 80h
