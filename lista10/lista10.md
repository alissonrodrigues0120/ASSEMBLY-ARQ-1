# Questão 1

> Correção: 0,5

Given the following variables, what are the results in the variable z for each of
the following code segments?

```asm
w real8 2.0 
x real8 5.5
y real8 6.5
z sdword ?
```
## Opção a
```asm
fld w
fld y
fadd
fistp z

```

### Resposta:
8

## Opção b
```asm
fld y
fld w
fdiv
fld x
fadd
fisttp z
```
### Resposta:
8

## Opção c
```asm
fld y
fld w
fsub
fistp z
```

### Resposta:
4

## Opção d
```asm
fld w
fld y
fadd
fist z
fld w
fadd
fistp z
```

### Resposta:
10

# Questão 2

> Correção: 0,3

Convert the following C-like arithmetic instructions into post-fix form and then
write the corresponding assembly language instructions. Assume that all variables are of type real8.

## Opção a
```c
answer = x – y + z;
```

### Resposta:
```asm
fld x
fld y
fsub
fld z
fadd
fstp answer
```
## Opção b
```c
result = (w + x) / (y – z);
```
### Resposta:
```asm
fld w
fld x
fadd
fld y
fld z
fsub
fdiv
fstp result
```
## Opção c
```c
info = a / b * c – d;
```

### Resposta:
```asm
fld a
fld b
fdiv
fld c
fmul
fld d
fsub
fstp info
```
## Opção d
```c
data = i * j + (k / (m – n));
```

### Resposta:

> Correção: Aqui, pela ordem de avaliação, o _i_ e _j_ seria multiplicados primeiro. 

```asm
fld k
fld m
fld n
fsub
fdiv
fld i
fld j
fmul
fadd
fstp data

```

# Questão 4
Write the equivalent assembly language code segment for the C program in
Sect. 10.7.3 (which uses type long double).

### Resposta:
[Resposta da questão 4](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista10/question4.asm)

# Questão 5
Given the code using inline assembly in Sect. 10.7.4, rewrite it to work with
float and long double types (Hint: For type float, see Sect. 10.7.1).

### Resposta:
[Resposta 1](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista10/question5one.c)
[Resposta 2](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista10/question5two.c)

# Questão 6

> Correção: 0,0