.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data

msgfmt1 byte "%s", 0
msgfmt2 byte 0Ah, "%s", 0
msgfmt3 byte 0Ah, "%s", 0Ah, "%d",0Ah, 0
msg1 byte "enter number: ", 0
msgPmt byte "%d", 0
msg2 byte "enter amount: ", 0
msg3 byte "remainder of the division between number and amount: ", 0
Result sdword ?
amount sdword ?
number sdword ?

.code 
main proc
     INVOKE printf, ADDR msgfmt1,ADDR msg1
     INVOKE scanf, ADDR msgPmt, ADDR number
     INVOKE printf, ADDR msgfmt2, ADDR msg2
     INVOKE scanf, ADDR msgPmt, ADDR amount
     mov eax, number
     cdq
     idiv amount
     mov result, edx
     INVOKE printf, ADDR msgfmt3, ADDR msg3, result
     ret
main endp
     end
