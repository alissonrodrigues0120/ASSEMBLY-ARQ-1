;
;   Building Instructions:
;   ml /Cx /coff question7.asm /link /SUBSYSTEM:console /out:question7.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;


.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
msgPSfmt byte 0Ah,"%s", 0
msg1    byte "Enter a number: ", 0
msgPfmt byte "%d", 0
msg3    byte "Enter a larger number: ", 0
msg4    byte "Enter an even larger", 0Ah, "number: ", 0
msg5    byte 0Ah, 0Ah, "%d%s%d%s%d", 0
msg6    byte " < ", 0
msg7     byte " > ", 0
num1    sdword ?
num2    sdword ?
num3    sdword ?

.code 
main proc
     INVOKE printf, ADDR msgPSfmt, ADDR msg1
     INVOKE scanf, ADDR msgPfmt, ADDR num1
     INVOKE printf, ADDR msgPSfmt, ADDR msg3
     INVOKE scanf, ADDR msgPfmt, ADDR num2
     INVOKE printf, ADDR msgPSfmt, ADDR msg4
     INVOKE scanf, ADDR msgPfmt, ADDR num3
     INVOKE printf, ADDR msg5, num1, ADDR msg6, num2, ADDR msg6, num3
     INVOKE printf, ADDR msg5, num3, ADDR msg7, num2, ADDR msg7, num1
     ret
main endp
     end
