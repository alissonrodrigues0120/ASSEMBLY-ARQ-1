;D da questão 5


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

