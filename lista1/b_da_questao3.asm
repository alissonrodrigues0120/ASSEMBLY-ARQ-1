;B da questão 3

;
;   Building Instructions:
;   ml /Cx /coff B_da_questao3.asm /link /SUBSYSTEM:console /out:B_da_questao3.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;

includelib msvcrt.lib
includelib legacy_stdio_definitions.lib

.686
.model flat, c
.stack 100h
.data
 cat sdword 5
 dog sdword ?

 .code

 main proc
      mov eax, cat
      mov dog, eax
      ret
main endp
     end

