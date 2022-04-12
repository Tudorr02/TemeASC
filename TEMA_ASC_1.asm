section .data
  
    text1 db "Introdu numarul : "
    lun1 equ $ - text1
    msg db  " numarul este negativ"
    lun2 equ $ - msg
    msg2 db "numarul nu este negativ"
    lun3 equ $ - msg2
    
section .bss
     buffer resb 22

section .text
    global _start

_start:

   ;call afisare_text1
   call citire_numar
   ;sub byte[ecx],'0'
   cmp byte[ecx],'-'
   JE label1
   call mesaj_pozitiv
   jmp exit
   
label1:
   mov eax,4
   mov ecx, msg
   mov edx, lun2
   mov ebx, 1
   int 0x80
   jmp exit
   

citire_numar:
   mov eax,3
   mov ebx,0
   mov ecx,buffer
   mov edx,20
   int 0x80
   ret
 
   
afisare_text1:
   mov eax,4
   mov ecx,text1
   mov edx,lun1
   mov ebx,1
   int 0x80
   ret
  
mesaj_pozitiv:
   mov eax,4
   mov ecx,msg2
   mov ebx,1
   mov edx,lun3
   int 0x80
   jmp exit
   
exit:
   mov eax,1
   mov ebx, 0
   int 0x80
  
