.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
msg1fmt byte "%s", 0
msg1 byte "Enter b: ", 0
msgPfmt byte "%d", 0
msg2fmt byte 0Ah, "%s", 0
msg3fmt byte 0Ah, "%s%d", 0Ah, 0
msg2 byte "Enter c: ", 0
msg3 byte "Result of a: ", 0
a sdword ?
b sdword ?
ce sdword ?


.code 
main proc
     INVOKE printf, ADDR msg1fmt, ADDR msg1
     INVOKE scanf, ADDR msgPfmt, ADDR b
     INVOKE printf, ADDR msg2fmt, ADDR msg2
     INVOKE scanf, ADDR msgPfmt, ADDR ce
     mov eax, ce
     sub b, eax
     mov ebx, 3
     mov eax, b
     cdq
     idiv ebx
     mov a, eax
     INVOKE printf, ADDR msg3fmt, ADDR msg3, a
     ret
main endp
     end
