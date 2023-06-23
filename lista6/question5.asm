; Correção: 0,5
;compilar
; ml /Cx /coff question5.asm /link /SUBSYSTEM:console /out:question5.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib



.686
.model flat, c
.stack 100h

scanf PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG

.data
msgfmt byte "%s", 0Ah, 0
msg1 byte "enter hexadecimal: ", 0
hex dword ?
msginput byte "%x", 0
msg2 byte "Fire alarm", 0
msg3 byte "Carbon monoxide", 0
msg4 byte "Power outage", 0
msg5 byte "Gate unlocked", 0
msg6 byte "Door open", 0
msg7 byte "Window open", 0
flag dword ?

.code
main proc
     INVOKE printf, ADDR msgfmt, ADDR msg1
     INVOKE scanf, ADDR msginput, ADDR hex 

    
     .while(hex<=03fh)
     mov flag, 0
     test hex, 000001b
     .if(!ZERO?)
     INVOKE printf, ADDR msgfmt, ADDR msg2
     mov flag, 1
     .endif
     test hex, 000010b
     .if(!ZERO?)
     INVOKE printf, ADDR msgfmt, ADDR msg3
     mov flag, 1
     .endif
     test hex, 000100b
     .if(!ZERO?)
     INVOKE printf, ADDR msgfmt, ADDR msg4
     mov flag, 1
     .endif
     test hex, 001000b
     .if((!ZERO?) && (flag==0))
     INVOKE printf, ADDR msgfmt, ADDR msg5
     .endif
     test hex, 010000b
     .if((!ZERO?) && (flag==0))
     INVOKE printf, ADDR msgfmt, ADDR msg6
     .endif
     test hex, 100000b
     .if((!ZERO?) && (flag==0))
     INVOKE printf, ADDR msgfmt, ADDR msg7
     .endif
     INVOKE printf, ADDR msgfmt, ADDR msg1
     INVOKE scanf, ADDR msginput, ADDR hex 
     .endw
     ret
main endp
     end
