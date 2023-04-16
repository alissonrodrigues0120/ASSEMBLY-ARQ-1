.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
msg1fmt byte 0Ah, "%s", 0
msg1 byte "Enter the number of amperes: ", 0
msg2 byte "Enter the number of ohms: ", 0
msgPfmt byte "%d", 0
msg2fmt byte 0Ah, 0Ah, "%s%d", 0
msg3  byte "The number of volts is: ", 0
msg3fmt byte 0Ah, "%s%d", 0Ah, 0
msg4 byte "The number of watts is: ", 0
R sdword ?
I sdword ?
V sdword ?
P sdword ?

.code 
main proc
     INVOKE printf, ADDR msg1fmt, ADDR msg1
     INVOKE scanf, ADDR msgPfmt, ADDR I
     INVOKE printf, ADDR msg1fmt, ADDR msg2
     INVOKE scanf, ADDR msgPfmt, ADDR R
     mov eax, R
     imul I
     mov V, eax
     mov eax, I
     imul I
     imul R
     mov P, eax
     INVOKE printf, ADDR msg2fmt, ADDR msg3, V
     INVOKE printf, ADDR msg3fmt, ADDR msg4, P
     ret
main endp
     end