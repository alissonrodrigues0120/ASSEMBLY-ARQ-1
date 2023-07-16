; Correção: 1,0.
; compile:
; ml /Cx /coff question5.asm /link /SUBSYSTEM:console /out:question5.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;

.686
.model flat, c
.stack 100h
scanf PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG

.data
i sdword ?
arrayone sdword  10 dup(?)
arraytwo sdword  20 dup(0)
elementinput byte "%d", 0
printelement byte "%d", 0Ah, 0
pular byte 0Ah, 0
printarrayfmt byte "%s%d:", 0Ah, 0
printarray byte "elemento ", 0
temp sdword ?

.code
main proc
     mov ecx, 10
     mov edi, offset arrayone+0
     mov i, 0
     .repeat
     push ecx
     INVOKE printf, ADDR printarrayfmt, ADDR printarray, i
     INVOKE scanf, ADDR elementinput, ADDR [edi]
     add i, 1
     add edi, 4
     pop ecx
     .untilcxz

    INVOKE printf, ADDR pular

     mov edi, offset arrayone+0
     mov esi, offset arraytwo+0
     mov ecx, 10

     .repeat
     mov eax, [edi]
     mov [esi], eax
     add edi, 4
     add esi, 4
     .untilcxz

     mov esi, offset arraytwo+0
     mov i, 0
     mov ecx, 20

     .repeat
     push ecx
     mov eax, [esi]
     mov temp, eax
     INVOKE printf, ADDR printarrayfmt, ADDR printarray, i
     INVOKE printf, ADDR printelement, temp
     add i, 1
     add esi, 4
     pop ecx
     .untilcxz

     ret
main endp
     end



