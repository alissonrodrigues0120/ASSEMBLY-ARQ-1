.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG


.data
msg1fmt byte 0Ah, "%s%d", 0Ah, 0
msg1  byte "result of x: ", 0
x sdword ?
y sdword 4
z sdword 5

.code 
main proc
     neg y
     mov eax, z
     add eax, y
     mov x, eax
     dec z
     INVOKE printf, ADDR msg1fmt, ADDR msg1, x
     ret
main endp
     end