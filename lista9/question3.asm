
; Correção: 1,0.
;
;   Compilar:
;   ml /Cx /coff question3.asm /link /SUBSYSTEM:console /out:question3.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib

;
.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2:Ptr Sdword, inputlist:VARARG
.data

msg1fmt byte "%s %s", 0Ah, 0
msg2fmt byte "%s",0Ah, 0
msg3fmt byte "%d",0Ah,0
msg1 byte "it's a palindrome ",0
msg2 byte " not palindrome ",0

vetor   byte "123456789", 0
num     sdword 10


stringone  byte "rrrraarrrr rrrraarrrr rrrraarrrr rrrraarrrr rrrraarrrr rrrraarrrr rrrraarrrr rrrraarrrr rrrraarrrr rrrraarrrr", 0


.code
main  proc
     mov ecx, num
     lea ebx, stringone
     add ebx, sizeof stringone
     lea esi, stringone

     .repeat
     push ecx
     lea edi, vetor
     mov al, " "
     .while [esi] != al && esi <= ebx
     mov ah, [esi]
     mov [edi], ah
     inc esi
     inc edi
     .endw 
     call Palindrome
     pop ecx
     inc esi
     .untilcxz
     ret
main endp


Palindrome proc
     pushad
     mov eax, num
     mov ebx, 2
     cdq
     idiv ebx
     mov ebx, eax
     lea esi, vetor
     mov edi, esi
     mov eax, num
     dec eax
     add edi, eax
     mov ecx, 0
     mov al, [esi]
     .while [edi]  == al && ecx < ebx
      inc ecx
     inc esi
     dec edi
     mov al, [esi]
     .endw
     .if ecx == ebx
     INVOKE printf, ADDR msg1fmt, ADDR vetor, ADDR msg1
     .else 
     INVOKE printf, ADDR msg1fmt, ADDR vetor, ADDR msg2
     .endif 
     popad
     ret
Palindrome endp
     end
