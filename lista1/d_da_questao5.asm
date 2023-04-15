;D da questão 5

;
;   Building Instructions:
;   ml /Cx /coff d_da_questao5.asm /link /SUBSYSTEM:console /out:d_da_questao5.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;


includelib msvcrt.lib
includelib legacy_stdio_definitions.lib

.686
.model flat, c
.stack 100h
.data
 
 a byte ?
 b byte ?
 d byte ?

 .code

 main proc
      mov d, 'z'
      mov al, d
      mov a, al
      mov b, al
      ret
main endp
     end

