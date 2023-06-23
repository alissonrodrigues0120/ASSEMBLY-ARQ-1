; Correção: 0,5
;compilar
; ml /Cx /coff question4.asm /link /SUBSYSTEM:console /out:question4.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib


.686
.model flat, c
.stack 100h

scanf PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG

.data
msgfmt byte "%s", 0Ah, 0
msginput byte "%x", 0
msgfmt2 byte "%s%x", 0Ah, 0
msg1 byte "Enter number hexadecimal: ", 0
msg2 byte "The number hexadecimal is: ", 0
msg3 byte "Paper jam", 0
msg4 byte "Paper misfeed", 0
msg5 byte "Paper tray empty", 0
msg6 byte "Toner low", 0
msg7 byte "Toner empty", 0
registerstate dword ?

.code
main proc  
     INVOKE printf, ADDR msgfmt, ADDR msg1
     INVOKE scanf, ADDR msginput, ADDR registerstate
     INVOKE printf, ADDR msgfmt2, ADDR msg2, registerstate

     .while (registerstate<=01fh)
     test registerstate, 00001b
     .if !ZERO?
     INVOKE printf, ADDR msgfmt, ADDR msg3
     jmp end00
     .endif
     test registerstate, 00010b
     .if !ZERO?
     INVOKE printf, ADDR msgfmt, ADDR msg4
     jmp end00
     .endif
     test registerstate, 00100b
     .if !ZERO?
     INVOKE printf, ADDR msgfmt, ADDR msg5
     jmp end00
     .endif
     test registerstate, 01000b
     .if !ZERO?
     INVOKE printf, ADDR msgfmt, ADDR msg6
     jmp end00
     .endif
     test registerstate, 10000b
     .if !ZERO?
     INVOKE printf, ADDR msgfmt, ADDR msg7
     jmp end00
     .endif
end00: nop
     INVOKE printf, ADDR msgfmt, ADDR msg1
     INVOKE scanf, ADDR msginput, ADDR registerstate
     INVOKE printf, ADDR msgfmt2, ADDR msg2, registerstate
     .endw
     ret
main endp
     end

