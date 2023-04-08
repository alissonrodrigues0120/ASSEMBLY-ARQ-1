;D da questão 4

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
      mov y, 1
      mov eax, y
      mov x, eax
      ret
main endp
     end

