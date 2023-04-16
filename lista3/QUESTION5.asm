;
;   Building Instructions:
;   ml /Cx /coff QUESTION5.asm /link /SUBSYSTEM:console /out:QUESTION5.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;



.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
msg1fmt byte 0Ah, "%s", 0
msg1 byte "Enter an integer: ", 0
msgPfmt byte "%d", 0
msg2fmt byte 0Ah, "%s%d", 0Ah, 0Ah, 0
msg2  byte "The integer is: ", 0
number sdword ?

.code 
main proc
     INVOKE printf, ADDR msg1fmt, ADDR msg1
     INVOKE scanf, ADDR msgPfmt, ADDR number
     mov eax, 3
     imul number
     mov number, eax
     mov eax, 7
     sub eax, number
     mov number, eax
     INVOKE printf, ADDR msg2fmt, ADDR msg2, number
     ret
main endp
     end
