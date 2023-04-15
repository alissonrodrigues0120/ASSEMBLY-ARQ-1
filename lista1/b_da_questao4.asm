;B da questão 4

;
;   Building Instructions:
;   ml /Cx /coff b_da_questao4.asm /link /SUBSYSTEM:console /out:b_da_questao4.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;

includelib msvcrt.lib
includelib legacy_stdio_definitions.lib

.686
.model flat, c
.stack 100h
.data
 y sdword ?
 x sdword ?

 .code

 main proc
      mov eax, y
      mov x, eax
      ret
main endp
     end

