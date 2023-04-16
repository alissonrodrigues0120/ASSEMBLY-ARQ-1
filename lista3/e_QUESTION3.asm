;
;   Building Instructions:
;   ml /Cx /coff e_QUESTION3.asm /link /SUBSYSTEM:console /out:e_QUESTION3.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;

.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
msg1fmt byte "%s", 0
msg1 byte "Enter n: ", 0
msgPmt byte "%d", 0
msg2fmt byte 0Ah, "%s", 0
msg2 byte "Enter i: ", 0
msg3fmt byte 0Ah, "%s", 0
msg3  byte "Enter j: ", 0
msg4fmt byte 0Ah, "%s", 0
msg4 byte "Enter k: ", 0
msg5fmt byte 0Ah, "%s%d", 0Ah, 0
msg5 byte "result of m: ", 0
n sdword ?
i sdword ?
j sdword ?
k sdword ?
m sdword ?

.code 
main proc
     INVOKE printf, ADDR msg1fmt, ADDR msg1
     INVOKE scanf, ADDR msgPmt, ADDR n
     INVOKE printf, ADDR msg2fmt, ADDR msg2
     INVOKE scanf, ADDR msgPmt, ADDR i
     INVOKE printf, ADDR msg3fmt, ADDR msg3
     INVOKE scanf, ADDR msgPmt, ADDR j
     INVOKE printf, ADDR msg4fmt, ADDR msg4
     INVOKE scanf, ADDR msgPmt, ADDR k
     mov eax, i
     sub eax, j
     imul k
     imul n
     mov m, eax
     INVOKE printf, ADDR msg5fmt, ADDR msg5, m
     ret
main endp
     end
