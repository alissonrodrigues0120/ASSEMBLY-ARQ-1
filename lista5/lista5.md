# Questão 1
Dadas as seguintes declarações da linguagem Assembly, indique se elas estão sintaticamente corretas ou incorretas. Se incorreta, indique o que está errado com a declaração.

## Opção a
```asm
.for i 1;i< 3;i++
;body of loop
.endfor
```

### Resposta:

Incorreto, não existe as diretivas ".for" e  ".endfor" no assembly masm.

## Opção b
```asm
mov i,1
while i < x
;body of loop
inc i
.endw
```

### Resposta:

Incorreto, faltou o '.' em ".while".

## Opção c
```asm
mov i,0
.repeat
; body of loop
add i,2
.until i>10
```

### Resposta:
Correto.

## Opção d
```asm
mov edx,3
.repeat
;body of loop
.untiledx
```
### Resposta:
Incorreto, não existe a diretiva ".untiledx".

## Opção e
```asm
mov ebx,2
.do
;body of loop
.while ebx>0
```

### Resposta:
Incorreto, não existe a diretiva ".do".

# Questão 2
Implemente o último segmento de código na seção 5.1 sem está usando diretivas e use apenas condicionais e jumps incondicionais.

### Resposta:

```asm
 ans, 0
if01: cmp x, 0
      je endif00
      mov ecx, 1
while01: cmp ecx, y
         jge  endw00 
         mov eax, ans
         add eax, x
         mov ans, eax
         inc ecx
endw00:  nop
         mov i, ecx
endif00: nop    
```
# Questão 3
Dados os seguintes loops while implementados usando condicionais e jumps incondcionais, indique quantas vezes o corpo de cada loop será executado:

## Opção a
```asm
         mov i,2 
while04: cmp i,8 
         jge endwhile04 
         ; body of loop
         add i,2 
         jmp while04
endwhile04: nop 
```
### Resposta:
três vezes.


## Opção b
```asm
        mov k,0 
repeat05: nop 
         ; body of loop
          add k,3 
          cmp k,3 
          jl repeat05
endrepeat05: nop
```
### Resposta:
uma vez.

## Opção C
```asm
       mov j,1 
while06: cmp j,0 
         jg endwhile06 
         ; body of loop
         inc j 
         jmp while06
endwhile06: nop
```

### Resposta:
nenhuma vez.

# Questão 4
Implemente as diretivas .repeat e .until no final da seção 5.2 usando apenas instruções de comparar e jump, juntamente com os nomes dos rótulos apropriados.

### Resposta:
```asm
 mov ans, 0
if01:  cmp y, 0
       je endif01
       mov ecx, 1
repeat01: nop
          mov eax, ans
          add eax, x
          mov ans, eax
          inc ecx
          cmp ecx, y
          jle repeat01
endw00:   mov i, ecx
endif01:  nop
```

# Questão 5
Implemente a divisão sem sinal (similar à instrução div) usando subtração repetitiva, com sua escolha (ou escolha do seu instrutor) de qualquer dos seguintes (começar com o dividendo em eax e o divisor em ebx, então o lugar do quociente em eax e o resto em edx. Nota: Não cuide com relação a divisão por zero ou números negativos):

## Opção a
```asm
.while
```
### Resposta:

```asm
mov edx,eax
mov eax,0 
.while(edx >= ebx) 
sub edx, ebx
inc eax 
.endw
```

## Opção b
```asm
.repeat - .until
```
### Resposta:
```asm
mov edx, eax 
mov eax, 0
.repeat
sub edx, ebx
inc eax
.until (edx < ebx)
```

## Opção c
```asm
.repeat - .untilcxz  
```
### Resposta:
```asm
     mov edx, eax
     mov eax, 0
     mov ecx, ebx
     .repeat
     .if(edx>=ebx)
     sub edx, ebx
     inc eax
     .endif
     .untilcxz
```

# Questão 6
Implemente o seguinte segmento em C usando as diretivas .repeat e .untilcxz. E se o valor de n for 0 ou negativo? Seu segmento de código ainda funciona apropriadamente? Como esse problema pode ser corrigido? 

```c
sum 0;
for (i 1; i< n; i++)
    sum sum + i;
```

### Resposta:
```asm
     mov sum, 0
     mov ecx, n
     .repeat
     mov eax, sum
     add eax, i
     mov sum, eax
     .untilcxz
```
Quando for 0, o loop não funcionará e sum irá ficar igual a zero;

Quando for negativo, irá executar o loop mas o resultado de sum ficará negativo.


# Questão 7
Implemente o seguinte loop do-while primeiro usando as diretivas .repeat - .until, e em seguida, usando apenas comparadores, condicionais e jumps incondicionais:

```c
i=10;
sum 0;
do {
    sum sum+i;
    i=i-2;
} while i>0;
```

### Resposta:
Diretivas .repeat - .until:
```asm
mov i, 10
mov sum, 0
.repeat 
mov eax, sum
add eax, i
sub i, 2
.until i <= 0
```

Usando comparadores, condicionais e jumps incondicionais:

```asm
      mov i, 10
      mov sum, 0
do01: nop
      mov eax, sum
      add eax, i
      sub i, 2
      cmp i, 0
      jg do01
endw01: nop
```

# Questão 8
Implemente o último segmento de código na seção 5.5 usando a instrução loop em vez das diretivas .repeat e .untilcxz.

### Resposta:

```asm
    mov ecx, 2
do01: nop
     mov tempecx, ecx
     mov ecx, 3
do02: nop
     ;body of nested loop
     loop do02
endw02: nop
     mov ecx, tempecx
     loop do01
endw01: nop
```

# Questão 9
Dada a função fatorial (n!) definida interativamente como segue:

Se n=0 ou n=1, então 1

Se n=2, então 1 * 2 = 2

Se n=3, então 1 * 2 * 3 = 6

Se n=4, então 1 * 2 * 3 * 4 = 24

etc.

Implemente a função acima interativamente com sua escolha (ou a escolha de seu instrutor) dos quaisquer seguintes:

## Opção a
```asm
.while
```

### Resposta:
[Resposta da opção A da questão 9](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista5/Questao_9_a.asm)

## Opção b
```asm
.repeat - .until
```

### Resposta:
[Resposta da opção B da questão 9](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista5/Questao_9_b.asm)
## Opção c
```asm
.repeat - .untilcxz
```

### Resposta:
[Resposta da opção C da questão 9](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista5/Questao_9_c.asm)

# Questão 10
Dada a sequência de Fibonacci definida interativamente como segue:

Se n=0, então 0

Se n=1, então 1

Se n=2, então 0 + 1 = 1

Se n=3, então 1 + 1 = 2

Se n=4, então 1 + 2 = 3

etc.

Implemente a função acima interativamente com sua escolha (ou a escolha do seu instrutor ) de qualquer dos seguintes:

## Opção a
```asm
.while
```

### Resposta:

[Resposta da opção A da questão 10](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista5/Questao_10_a.asm)

## Opção b
```asm
.repeat - .until
```

### Resposta:
[Resposta da opção B da questão 10](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista5/questao_10_b.asm)

## Opção c

```asm
.repeat - .untilcxz
```

### Resposta:
[Resposta da opção C da questão 10](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista5/Questao_10_c.asm)
