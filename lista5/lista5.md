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
Implemente o último segmento de código na seção 5.1 sem usar diretivas e usar apenas condicionais e jumps incondicionais.

### Resposta:

```asm

```
