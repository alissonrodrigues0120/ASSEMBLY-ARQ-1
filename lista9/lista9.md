# Questão 1
Given the following assembly language statements, indicate whether they are
syntactically correct or incorrect. If incorrect, indicate what is wrong with the
statement:
## Opção a
```asm
movesb
```
### Resposta:
Incorreto, o correto é movsb

## Opção b
```asm
cmpsb
```

### Resposta:
Correto

## Opção c
```asm
scasb
```
### Resposta:
Correto

## Opção d

```asm
 stosb
```
### Reposta:
Correto

## Opção e
```asm
rept strsb
```
### Resposta:
Incorreto, o correto é  rep stosb 

## Opção f
```asm
loadsb
```
### Resposta:
Incorreto, o correto é lodsb

# Questão 2

Given the following declarations, walk through the following code segments
and indicate the contents of the ecx, esi, edi, and al registers upon completion of each segment. You may assume that string1 starts at memory
location 100 and string2 at memory location 105. With problem D, in
addition to the registers, what would be the contents of string2?

```asm
string1 byte "abcde"
string2 byte "abcyz"
```

## Opção a
```asm
mov ecx,5
mov al,"c"
mov edi,offset string1
rep scasb
```
### Resposta:
ecx = 2, esi = undefined, edi = 103, al = "c"

## Opção b
```asm
mov esi,offset string1+3 
Lodsb
```
### Resposta:
ecx = undefined, esi = 103, edi = undefined, al = "d"

## Opção c
```asm
mov ecx,5
mov esi,offset string1
mov edi,offset string2
repe cmpsb
```
### Resposta:
ecx = 1, esi = 104, edi = 109, al = undefined

## Opção d
```asm
mov ecx,5 
mov esi,offset string1
mov edi,offset string2
repne cmpsb
```

### Resposta:
ecx = 5, esi = 100, edi = 105, al = undefined string2 = "abcyx"

## Opção e
```asm
lea edi,string2
mov al,"d"
stosb
```
### Resposta:
ecx = undefined, esi = undefined, edi = 105, al = "a"

# Questão 3
Using the esi and edi registers and a.repeat-untilcxz loop, determine
whether the word in a string is a palindrome. For the sake of convenience,
assume that the string is 10 elements long and all the words in the string are also
10 characters long. Do not use a stack.
[r3](https://github.com/alissonrodrigues0120/ASSEMBLY-ARQ-1/tree/main/lista9)
