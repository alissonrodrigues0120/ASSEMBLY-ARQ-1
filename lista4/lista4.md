# Questão 1
Indique se as seguintes declarações estão sintaticamente corretas ou incorretas no MASM. Se incorreta, indique o que há de errado com a afirmação:

## Opção a 
```asm
.if (number = 0)
add number,2 
.endif
```
### Resposta:
Incorreto, não é usado o "=" na condição pra indicar igualdade, é usado o "==".

## Opção b
```asm
.if count >= 0 then 
sub count,2 
.else 
add count,3 
.endif
```

### Resposta:
Errado, pois o then não é usado pelas estruturas de seleção das diretivas.

## Opção c
```asm
.if x-1 
dec x 
.endif 
```

### Resposta:
Mesmo não sendo completamente errado, ele não atingirá o que pretendia fazer.

## Opção d
```asm
if01:  cmp x,y 
       jle endif01
then01: inc x 
endif01: nop 
```
### Resposta:
Errado, não é possível realizar a instrução cmp com duas memórias.

# Questão 2
Usando Diretivas MASM, escreva um código em linguagem Assembly o segmento para a implementação seguinte:
```c
if ( a > b )
a = a - 1; 
else 
  if ( b >= c ) 
     b = b − 2; 
  else
    if ( c > d) 
       c = c + d; 
    else
       d = d / 2;
       
  ```
  
  ### Resposta:
  ```asm
  ; coloquei o nome da variável de ce em vez de c, porque dar erro no código.
  
   mov eax, a
     .if eax > b
     sub a, 1
     .else
     mov eax, b
     .if eax >= ce
     sub b,2
     .else
     mov eax,ce
     .if eax > d
     mov eax, ce
     add eax, d
     mov ce,eax
     .else
     mov eax, d
     cdq
     mov d,2
     idiv d
     mov d,eax
     .endif
     .endif
     .endif
     ```

