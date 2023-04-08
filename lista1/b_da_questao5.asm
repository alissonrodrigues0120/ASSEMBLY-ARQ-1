;B da questão 5
;coloquei ce pra representar a variável c porque tava dando erro, provavelmente 
;por causa da biblioteca da linguagem c 

includelib msvcrt.lib
includelib legacy_stdio_definitions.lib

.686
.model flat, c
.stack 100h
.data
 
 b byte ?
 ce byte ?

 .code

 main proc
      mov eax, ce
      mov b, eax
      ret
main endp
     end

