;B da questão 5
;coloquei ce pra representar a variável c porque tava dando erro, provavelmente 
;por causa da biblioteca da linguagem c 

;
;   Building Instructions:
;   ml /Cx /coff b_da_questao5.asm /link /SUBSYSTEM:console /out:b_da_questao5.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;

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

