section .data
    even_msg db "EVEN!!",0xA,0xD
    len1 equ $-even_msg

    odd_msg db "ODD!!",0xA,0xD
    len2 equ $-odd_msg

    prompt_msg db "ENTER A NUMBER",0xA,0xD
    len3 equ $-prompt_msg
section .bss
    num resb 5

section .text
    global _start

_start:
    mov eax,4
    mov ebx,1
    mov ecx, prompt_msg
    mov edx,len3
    int 80h

    mov eax,3
    mov ebx,2
    mov ecx,num
    mov edx,5
    int 80h

    mov ah,[num]
    test ah,1
    jz evnn
    mov eax,4
    mov ebx,1
    mov ecx,odd_msg
    mov edx,len2
    int 80h
    jmp outprog

evnn:
    mov ah,09h
    mov eax,4
    mov ebx,1
    mov ecx,even_msg
    mov edx,len1
    int 80h

outprog:
    mov eax,1
    mov ebx,0
    int 80h
