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

# Questão 4
Dado o exemplo da estrutura if-then-else-if abordado no problema 2, re-implemente isso usando estrutura if-then-if aninhado.

## Opção a
Use as diretivas MASM.
### Resposta:
```asm
mov eax,a
      .if(eax <= b)
      mov eax,b
      .if (eax < ce)
      mov eax,ce
      .if(eax <= d)
      mov eax,d
      mov d,2
      cdq
      idiv d
      mov d,eax
      .ELSE
      mov eax,ce
      add eax,d
      mov ce,eax
      .endif
      .ELSE
      sub b,2
      .endif
      .ELSE
      sub a,1
      .endif
```
## Opção b
Não use diretivas MASM, mas em vez disso use comparadores, jumps, e os rótulos apropriados.

### Resposta:

```asm
mov eax,a
if01: cmp eax,b
      jle if02
      jmp else01

else01: sub a,1
        jmp endif00

if02: mov eax,b
      cmp eax,ce
      jl if03
      jmp else02

else02: sub b,2
        jmp endif00

if03: mov eax,ce
      cmp eax,d
      jg else03
      mov eax,d
      mov d,2
      cdq
      idiv d
      mov d,eax
      jmp endif00

else03: mov eax,ce
        add eax,d
        mov ce,eax

endif00: nop

```
# Questão 5
Implemente a seguinte declaração do switch C, que não tem um padrão de declaração, usando comparadores, jumps, e rótulos apropriados. Se number não estiver contido de 0 a 3, então o valor de count não deve mudar

```c
switch number {
      case 0: 
      case 1: count = count +2; 
              break; 
      case 2: 
      case 3: count = count - 2; 
}
```

### Resposta:

```asm
switch: cmp number,0
        je case0
        cmp number,1
        je case1
        cmp number,2
        je case2
        cmp number,3
        je case3
        jmp break00

case0: jmp break00

case1: add count,2
       jmp break00

case2: jmp break00

case3: sub count,2
       jmp break00

break00: nop
```

# Questão 6
Implemente o programa na Seção 4.8 na Linguagem Assembly sem usar diretivas de alto-nível com apenas comparadores, jumps, e rótulos apropriados.

### Resposta:

```asm
.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
voltage sdword ?
msgfmt1 byte "%s", 0
msg1   byte "Enter an AC Voltage: ", 0
msginput byte "%d", 0
msgfmt2 byte 0Ah, "%s", 0Ah, 0
msgfmt3 byte "%s", 0Ah, 0
msgfmt4 byte 0Ah, 0
msg2 byte "Voltage is Acceptable", 0
msg3 byte "Warning!", 0
msg4 byte "Voltage too Low", 0
msg5 byte "Voltage too High", 0
.code

main proc
     INVOKE printf, ADDR msgfmt1, ADDR msg1
     INVOKE scanf, ADDR msginput, ADDR voltage
if01: cmp voltage,110
      jl  else01
      cmp voltage,120
      jg  else01
then01:  INVOKE printf, ADDR msgfmt2, ADDR msg2
         jmp endif00
else01: INVOKE printf, ADDR msgfmt2, ADDR msg3
if02:  cmp voltage, 110
       jge else02
then02: INVOKE printf, ADDR msgfmt3, ADDR  msg4
        jmp endif00     
else02: INVOKE printf, ADDR msgfmt3, ADDR msg5
endif00: nop

       INVOKE printf, ADDR msgfmt4
       ret
main   endp
       end
       
```

