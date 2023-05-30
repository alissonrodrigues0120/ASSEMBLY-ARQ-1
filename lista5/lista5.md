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

### Resposta
Correto.

## Opção d

