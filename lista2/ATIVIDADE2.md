# questão 1
B) Incorreto. O correto é:

```asm
msg1fmt  byte 0Ah, "%s%d" , 0Ah, 0
```

D) Correto.

E) Incorreto. O correto é: 

```asm
msg3fmt byte "%s%d" , 0Ah, 0
```

# questão 2
Está errado porque está tentando passar o conteúdo do registrador eax, 
que deveria ter o conteúdo da variável num1, para num2, porém, após usar a 
diretiva INVOKE o registrador, o registrador encontra-se vazio.

o correto a se fazer é isso:

```asm
mov num1, 5
INVOKE printf, ADDR msg1fmt, ADDR msg1, num2
mov eax, num1
mov num2, eax
```

# questão 4

```

The first number is 5, but the second number is 7,
brankline
while the third number is 11
brankline

```

# questão 5
O código está no github

# questão 6
O código está no github

# questão 7
O código está no github

# questão 8
O código está no github
