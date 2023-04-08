;G da questão 3

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

