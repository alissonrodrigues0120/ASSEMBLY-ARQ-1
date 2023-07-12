# Questão 1
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

