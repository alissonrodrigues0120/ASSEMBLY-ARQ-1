;  Correção: 0,1
;compilar:
;ml /Cx /coff question5.asm /link /SUBSYSTEM:console /out:question5.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib


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
fibonnaci macro x: REQ, y:REQ, z:REQ
        .if(ebx==0)
        mov x, 0
        .else
        .if(ebx==1)
        mov y, 1
        mov eax, 1
        .else
        mov eax, 0
        add eax, y
        add eax, x
        mov z, eax
        mov eax, y
        mov x, eax
        mov eax, z
        mov y, eax
        .endif
        .endif
        endm 
main proc
     INVOKE printf, ADDR msgfmt, ADDR msg1
     INVOKE scanf, ADDR msginput, ADDR n

     mov ebx, 0
     mov eax, 0
     .while(ebx<=n)
     fibonnaci antant, ant, temp
     inc ebx

     .endw

     mov n, eax

     INVOKE printf, ADDR msgfmt2, ADDR msg1, n
     ret
main endp
     end


   
