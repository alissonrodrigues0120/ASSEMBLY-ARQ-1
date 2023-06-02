
;compilar:
;ml /Cx /coff question3.asm /link /SUBSYSTEM:console /out:question3.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib



.686
.model flat, c
.stack 100h
scanf PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG

.data
msgfmt byte "%s", 0Ah, 0
msg1 byte "valor de eax: ", 0
msg2 byte "valor de ebx: ", 0
msg3 byte "valor de ecx: ", 0
msg4 byte "valor de edx: ", 0
a sdword ?
b sdword ?
ce sdword ?
d sdword ?
msginput byte "%d", 0
msgfmt1 byte "%s%d", 0Ah, 0

.code
main proc
     INVOKE printf, ADDR msgfmt, ADDR msg1
     INVOKE scanf, ADDR msginput, ADDR a
     INVOKE printf, ADDR msgfmt, ADDR msg2
     INVOKE scanf, ADDR msginput, ADDR b
     INVOKE printf, ADDR msgfmt, ADDR msg3
     INVOKE scanf, ADDR msginput, ADDR ce
     INVOKE printf, ADDR msgfmt, ADDR msg4
     INVOKE scanf, ADDR msginput, ADDR d

     mov eax, a
     mov ebx, b
     mov ecx, ce
     mov edx, d

     push eax
     push ebx
     push ecx
     push edx

    pop eax 
    pop ebx
    pop ecx
    pop edx

    mov a, eax
    mov b, ebx
    mov ce, ecx
    mov d, edx


    INVOKE printf, ADDR msgfmt1, ADDR msg1, a 
    INVOKE printf, ADDR msgfmt1, ADDR msg2, b
    INVOKE printf, ADDR msgfmt1, ADDR msg3, ce
    INVOKE printf, ADDR msgfmt1, ADDR msg4, d
    ret
main endp
     end

