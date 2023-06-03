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



