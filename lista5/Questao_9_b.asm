.686
.model flat, c
.stack 100h

scanf PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG

.data
n sdword ?
msgfmt byte "%s", 0Ah, 0
msg1 byte "valor de n: ", 0
msgfmt2 byte "%s%d", 0Ah, 0
msginput byte "%d", 0

.code
main proc
     INVOKE printf, ADDR msgfmt, ADDR msg1
     INVOKE scanf, ADDR msginput, ADDR n
     mov eax, 1
     .repeat
     imul n
     dec n
     .until(n==0)
     mov n, eax

     INVOKE printf, ADDR msgfmt2, ADDR msg1, n
     ret
main endp
     end
