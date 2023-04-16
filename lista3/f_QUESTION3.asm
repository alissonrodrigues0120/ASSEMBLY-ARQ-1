;
;   Building Instructions:
;   ml /Cx /coff f_QUESTION3.asm /link /SUBSYSTEM:console /out:f_QUESTION3.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;


.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
msg1fmt byte "%s", 0
msg1 byte "Enter a: ", 0
msg2fmt byte 0Ah, "%s", 0
msg2 byte "Enter b: ", 0
msg3fmt byte 0Ah, "%s", 0
msg3 byte "Enter c: ", 0
msg4fmt byte 0Ah, "%s", 0
msg4 byte "Enter d: ", 0
msg5fmt byte 0Ah, "%s", 0
msg5 byte "Enter e: ", 0
msg6fmt byte 0Ah, "%s%d", 0Ah, 0
msg6 byte "result of q: ", 0
msgPfmt byte "%d", 0
q sdword ?
a sdword ?
b sdword ?
ce sdword ?
d sdword ?
e sdword ?

.code 
main proc
     INVOKE printf, ADDR msg1fmt, ADDR msg1
     INVOKE scanf, ADDR msgPfmt, ADDR a
     INVOKE printf, ADDR msg2fmt, ADDR msg2
     INVOKE scanf, ADDR msgPfmt, ADDR b
     INVOKE printf, ADDR msg3fmt, ADDR msg3
     INVOKE scanf, ADDR msgPfmt, ADDR ce
     INVOKE printf, ADDR msg4fmt, ADDR msg4
     INVOKE scanf, ADDR msgPfmt, ADDR d
     INVOKE printf, ADDR msg5fmt, ADDR msg5
     INVOKE scanf, ADDR msgPfmt, ADDR e
     mov eax, a
     sub eax, b
     add eax, ce
     mov ce, eax
     mov eax, d
     imul e
     mov d, eax
     mov eax, ce
     cdq
     idiv d
     mov q, eax
     INVOKE printf, ADDR msg6fmt, ADDR msg6, q
     ret
main endp
     end
