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
     .while(ebx<=n)
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

     .endw

     mov n, eax



     ;mov ecx, 0
     ;mov edx, 0
     ;.while(ecx<=n)
     ;.if(ecx==0)
     ;mov eax, 0
     ;.endif
     ;.if(ecx==1)
     ;mov ebx, 1
     ;mov edx, 1
     ;.endif
     ;mov edx, 0
     ;add edx, eax
     ;add edx, ebx
    ; mov eax, ebx
     ;mov ebx, edx
     ;.endw

     ;mov n, edx

     INVOKE printf, ADDR msgfmt2, ADDR msg1, n
     ret
main endp
     end     
