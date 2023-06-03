;compilar:
;ml /Cx /coff Questao_10_c.asm /link /SUBSYSTEM:console /out:Questao_10_c.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib


.686
.model flat, c
.stack 100h

scanf PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG

.data
n sdword ?
antant sdword ?
ant   sdword ?
temp  sdword ?
msgfmt byte "%s", 0Ah, 0
msg1 byte "valor de n: ", 0
msgfmt2 byte "%s%d", 0Ah, 0
msginput byte "%d", 0

.code
main proc
     INVOKE printf, ADDR msgfmt, ADDR msg1
     INVOKE scanf, ADDR msginput, ADDR n

     mov ebx, 0
     mov eax, 0
     mov ecx, n
     add ecx, 1
     .repeat
     .if(ebx==0)
     mov antant, 0
     .else
     .if(ebx==1)
     mov ant, 1
     mov eax, 1
     .else
     mov eax, 0
     add eax, ant
     add eax, antant
     mov temp, eax
     mov eax, ant
     mov antant, eax
     mov eax, temp
     mov ant, eax
     .endif
     .endif

     inc ebx
     .untilcxz

     mov n, eax


     INVOKE printf, ADDR msgfmt2, ADDR msg1, n
     ret
main endp
     end     
