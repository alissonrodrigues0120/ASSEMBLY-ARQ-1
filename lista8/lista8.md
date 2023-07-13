# Questão 1

> Correção: 0,5

Given the following assembly language statements, indicate whether they are syntactically correct or incorrect. If incorrect, indicate what is wrong with the
statement:

## Opção a:

```asm
x sdword ?,?,?
```
### Resposta:
Correto

## Opção b:
```asm
y sdword 3 dup(0)
```

### Resposta:
Correto

## Opção c:

```asm
mov eax, x+8
```
### Resposta:
Correto

## Opção d:

```asm
mov eax, y[ebx]
```
### Resposta:
Correto

## Opção e:

```asm
mov esi, edi
```
### Resposta:
Correto

## Opção f:

```asm
mov [esi], [edi]
```

### Resposta:
Incorreto, pois é memória pra memória.

# Questão 2:

> Correção: 0,5

Given the contents of the following memory location, what is stored in the eax
register at the end of each segment?

## Opção a:
```asm
mov eax, temp
```
### Resposta:
5
## Opção b:
```asm
mov eax, offset temp
```
### Resposta:
200

## Opção c:
```asm
lea eax, temp
```
### Resposta:
200

## Opção d:
```asm
mov eax, offset temp+4
```
### Resposta:
204

## Opção e:
```asm
mov esi, offset temp
mov eax, esi
```

### Resposta:
200

## Opção f:
```asm
mov edi, offset temp
mov eax, [edi]
```

### Resposta:
5

## Opção g:

```asm
lea esi, temp
lea edi, temp+4
mov eax, [esi]
add eax, [edi]
```
### Resposta:
12

## Opção h:

```asm
mov esi, offset temp+4
mov eax, 2
imul [esi]
```

### Resposta:

14

# Questão 3:
Implement the following C instructions using assembly language. Assume all
variables are declared as sdword:

## Opção a:
```c
num[0] = 1;
```

### Resposta:
```asm
mov num+0,1 
```
## Opção b:
```c
x[1]=x[2];
```
### Resposta
```asm
mov eax, x+4
mov x+8, eax
```
## Opção c:
```c
y[i+1] = y[i];
```
### Resposta:
```asm
mov eax, y[ebx] 
mov y[ebx + 4],eax
```

## Opção d:
```c
z[i] = z[j];
```
### Resposta:
```asm
mov eax, z[ebx]
mov z[ecx], eax
```
# Questão 4
Given the declarations below, indicate what would be stored in the eax register
for each of the following instructions. Note that oarray is of type sword, not
sdword (hint: see Chap. 1):

```asm
narray sdword 1,2,3,4,5
marray sdword 10 dup(?)
oarray sword 15,20,25
```
## Opção a:

```asm
mov eax, lengthof narray 
```

### Resposta:
5
## Opção b:

```asm
mov eax, sizeof narray
```
### Resposta:
20

## Opção c:

```asm
mov eax, lengthof marray
```
### Resposta:
10

## Opção d:

```asm
mov eax, sizeof marray
```

### Resposta:
40

## opção e:

```asm
mov eax, lengthof oarray
```
### Resposta:
3

## Opção f:

```asm
mov eax, sizeof oarray
```
### Resposta:
12

# Questão 5:
Write both the C code and the assembly code to transfer the contents of a
20-element array of integers to a second 20-element array of integers.

### Resposta:

[código em Assembly](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista8/question5.asm)


[código em c](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista8/question5.c)


# Questão 6:
Just as there is a simple and modified version of the selection sort, so is there
both a simple version and a modified version of the bubble sort. The simple
version in C is the same length as the simplified version of the selection sort
presented in Sect. 8.6

## Opção a:
Write both the C code and the assembly code to implement the simplified
version of the bubble sort which compares every element of every pass
through the array whether there was a swap on the previous pass or not.

### Resposta:
[código em Assembly](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista8/question6a.asm)

[Código em C](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/blob/main/lista8/question6a.c)

## Opção b:
 First write the C code for the modified version of the bubble sort and then
write the modified version in assembly language. With the modified version,
if there is not a swap on the previous pass through the array, the array is in
order and there is no need to make any subsequent passes through the array.

### Resposta:

