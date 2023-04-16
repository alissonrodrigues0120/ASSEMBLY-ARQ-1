.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
msg1fmt byte 0Ah, "%s", 0
msg1 byte "Enter the degrees in Fahrenheit: ", 0
msgPfmt byte "%d", 0
msg2fmt byte 0Ah, "%s%d", 0Ah, 0
msg2 byte "The degrees in Celsius is: ", 0
Celsius sdword ?
F sdword ?

.code 
main proc
     INVOKE printf, ADDR msg1fmt, ADDR msg1
     INVOKE scanf, ADDR msgPfmt, ADDR F
     mov eax, 32
     sub F, eax
     mov ebx, 5
     mov eax, F
     imul ebx
     mov F, eax
     mov ebx, 9
     mov eax, F
     cdq
     idiv ebx
     mov Celsius, eax
     INVOKE printf, ADDR msg2fmt, ADDR msg2, Celsius
     ret
main endp
     end
