;G da questão 3

;
;   Building Instructions:
;   ml /Cx /coff G_da_questao3.asm /link /SUBSYSTEM:console /out:G_da_questao3.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;

includelib msvcrt.lib
includelib legacy_stdio_definitions.lib

.686
.model flat, c
.stack 100h
.data
 cat sdword 5
 rat sdword ?

 .code

 main proc
      mov eax, cat
      not eax
      mov rat, eax
      ret
main endp
     end

