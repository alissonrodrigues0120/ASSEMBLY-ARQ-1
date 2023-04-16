.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
msgfmt byte "%s", 0
msg1 byte "Enter number: ", 0
msgPfmt byte "%d", 0
msgfmt2 byte 0Ah, "%s%d", 0Ah, 0
msg2 byte "difference between 4 and number is: ", 0
number sdword ?
difference sdword ?

.code 
main proc
     INVOKE printf, ADDR msgfmt, ADDR msg1
     INVOKE scanf, ADDR msgPfmt, ADDR number
     mov eax, 4
     sub eax, number
     mov difference, eax
     INVOKE printf, ADDR msgfmt2, ADDR msg2, difference
     ret
main endp
     end
