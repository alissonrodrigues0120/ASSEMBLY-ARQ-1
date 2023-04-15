;E da questão 4
;coloquei ce pra representar a variável c porque tava dando erro, provavelmente 
;por causa da biblioteca da linguagem c 

;
;   Building Instructions:
;   ml /Cx /coff E_da_questao4.asm /link /SUBSYSTEM:console /out:E_da_questao4.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
;

includelib msvcrt.lib
includelib legacy_stdio_definitions.lib

.686
.model flat, c
.stack 100h
.data
 a sdword ?
 b sdword ?
 ce sdword ?

 .code

 main proc
      mov a, 1
      mov b, 2
      mov eax, a
      mov ce, eax
      mov eax, b
      mov a, eax
      mov eax, ce
      mov b, eax
      ret
main endp
     end

