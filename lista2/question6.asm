;
;   Building Instructions:
;   ml /Cx /coff question6.asm /link /SUBSYSTEM:console /out:question6.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;


.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
MSG1FMT byte 0Ah, "%s" , 0
MSG1 byte "Enter a value for num1: ", 0
MSG2FMT byte "%d", 0
MSG3FMT byte 0Ah, "%s", 0
MSG3    byte "Enter a value for num2: ", 0
MSG4FMT byte "%d", 0
MSG5FMT byte 0Ah, "%s", 0Ah, 0Ah, 0
MSG5    byte "num1   num2", 0
MSG6FMT byte "%s%d%s%d", 0Ah, 0Ah, 0
MSG61   byte " ",0
MSG62   byte "      ", 0
num1 sdword ?
num2 sdword ?
.code 
main proc
     INVOKE printf, ADDR MSG1FMT, ADDR MSG1
     INVOKE scanf, ADDR MSG2FMT, ADDR num1
     INVOKE printf, ADDR MSG3FMT, ADDR MSG3
     INVOKE scanf, ADDR MSG4FMT, ADDR num2
     INVOKE printf, ADDR MSG5FMT,ADDR MSG5
     INVOKE printf, ADDR MSG6FMT, ADDR MSG61, num1, ADDR MSG62, num2
     ret
main endp
     end
