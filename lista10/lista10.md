# Questão 1
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
