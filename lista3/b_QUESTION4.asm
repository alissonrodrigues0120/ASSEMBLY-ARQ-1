;
;   Building Instructions:
;   ml /Cx /coff b_QUESTION4.asm /link /SUBSYSTEM:console /out:b_QUESTION4.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;


.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG


.data
msg1fmt byte 0Ah, "%s%d", 0Ah, 0
msg1  byte "result of j: ", 0
j sdword ?
k sdword 4
m sdword 5

.code 
main proc
     inc k
     mov eax, k
     sub eax, m
     mov j, eax
     INVOKE printf, ADDR msg1fmt, ADDR msg1, j
     ret
main endp
     end
