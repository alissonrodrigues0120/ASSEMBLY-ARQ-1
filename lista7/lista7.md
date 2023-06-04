# Questão 1
Dadas as seguintes instruções em linguagem assembly e assumindo que os locais e rótulos de memória foram declarados corretamente, indique se eles estão sintaticamente corretos ou incorretos. Se incorreta, indique o que há de errado com a afirmação:

## Opção a
```asm
return
```
### Resposta:
Incorreto. Isso deve ser "ret" e não "return".

## Opção b
```asm
endm
```
### Resposta:
Correto

## Opção c
```asm
.ifb <parm>
```

### Resposta:
Incorreto, pois a instrução ifb não tem ponto '.'.

## Opção d

```asm
ifdif <p>,<q>
```

### Resposta:
Correto.

## Opção e
```asm
if eax lt 0
```

### Resposta:
Correto.

## Opção f
```asm
elseif
```

### Resposta:
Incorreto, pois falta argumentos.

## Opção g
```asm
call dog
```

### Resposta:
Correto.

## Opção h
```asm
endif
```
### Resposta:
Correto.

## Opção i
```asm
ifne <p1>, <p2>
```
### Resposta:
Incorreto, pois não existe a instrução "ifne".

# Questão 2
Escreva um procedimento para implementar a função fatorial como definido na seção de exercícios do capítulo 5.

### Resposta:
[Resposta da questão 2](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista7/question2.asm)

# Questão 3
Escreva um procedimento para implementar os números de Fibonacci como definido na seção de exercícios do capítulo 5.

### Resposta:
[Resposta da questão 3](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista7/question3.asm)

# Questão 4
Escreva uma macro para implementar a função fatorial como definida na seção de exercícios do capítulo 5.

### Resposta:
[Resposta da questão 4](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista7/question4.asm)

# Questão 5
Escreva uma macro para implementar os números de Fibonacci conforme definido na seção de exercícios do capítulo 5.

### Resposta:
[Resposta da questão 5](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista7/question5.asm)

# Questão 6
Usando montagem condicional, modifique a macro MULTACC definida neste capítulo para não apenas eliminar o loop redundante, mas também não gerar a própria instrução de loop caso o multiplicador no operando seja 0 e a resposta seja 0, ou quando for 1 e a resposta é apenas o valor no acumulador. (Dica: use a macro power como exemplo.)

### Resposta:



