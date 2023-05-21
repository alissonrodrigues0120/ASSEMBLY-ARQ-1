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
Usando Diretivas MASM, escreva um segmento de código em linguagem Assembly para a implementação seguinte:
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

# Questão 3
Converter a seguinte estrutura de seleção em C para um correspondente segmento de código de linguagem Assembly. Não use as diretivas MASM, mas em vez disso use apenas comparadores , jumps e os apropriados rótulos (dica: no problema B, use as regras de De Morgan):

## Opção a
```c
if (w == 1 && x == 2)
    y-;
```
### Resposta:

```asm
if01:   cmp w,1
        je and01
        jmp endif01

and01:   cmp  x,2
        jne endif01
        jmp then01

then01: dec y

endif01: nop

```

## opção b
```c
if (!(num > 0 && num <= 3)) 
    count=count-2; 
```
### Resposta:

```asm
if01:   cmp num,0
        jle then01
        cmp  num,3
        jg then01
        jmp endif01
 then01:  sub count,2

endif01: nop

```
## opção c
```c
if ( ( w == 1 || x == 2 ) && y == 3) 
      z++;
```
### Resposta:
```asm
if01: cmp w,1
      je and01
      cmp x,2
      je and01
      jmp endif01
and01: cmp y,3
       je then01
       jmp endif01

then01: inc z

endif01: nop
```
## Opção d
```c
if (a == 1 || b == 2 && c > 3 || d <= 4) 
     e--;
     
```
### Resposta:

```asm

if01: cmp a,1
      je and01
      cmp b,2
      je and01
      jmp endif01
and01: cmp ce,3
       jg then01
       cmp d,4
       jle then01
       jmp endif01

then01: dec e
endif01: nop

```


