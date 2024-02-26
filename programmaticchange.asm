section .data
    name db 'Zara Ali '
section .text
    global _start
_start:
     mov eax,4
     mov ebx,1
     mov ecx,name
     mov edx,9
     int 80h

     mov [name],dword 'Nuha'

     mov eax,4
     mov ebx,1
     mov ecx,name
     mov edx,8
     int 80h

     mov eax,1
     mov ebx,0
     int 80h