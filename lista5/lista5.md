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
