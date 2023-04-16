;
;   Building Instructions:
;   ml /Cx /coff d_QUESTION3.asm /link /SUBSYSTEM:console /out:d_QUESTION3.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;



.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
msg1fmt byte "%s", 0
msg1 byte "Enter s: ", 0
msgPfmt byte "%d", 0
msg2fmt byte 0Ah, "%s", 0
msg3fmt byte 0Ah, "%s%d", 0Ah, 0
msg2 byte "Enter t: ", 0
msg3 byte "Result of r: ", 0
s sdword ?
t sdword ?
r sdword ?


.code 
main proc
     INVOKE printf, ADDR msg1fmt, ADDR msg1
     INVOKE scanf, ADDR msgPfmt, ADDR s
     INVOKE printf, ADDR msg2fmt, ADDR msg2
     INVOKE scanf, ADDR msgPfmt, ADDR t
     neg s
     mov eax, t
     add s, eax
     mov eax, s
     mov r, eax
     INVOKE printf, ADDR msg3fmt, ADDR msg3, r
     inc t
     ret
main endp
     end
