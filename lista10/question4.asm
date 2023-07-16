; Correção: 0,3. O l deve ser maiúsculo na string de formatação.
;Compile:
 ;  ml /Cx /coff question4.asm /link /SUBSYSTEM:console /out:question4.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
 ;
.686
.model flat, c
.stack 100h
scanf PROTO arg2:Ptr Byte, inputlist:VARARG
printf PROTO arg1:Ptr Byte, printlist:VARARG
.data
inputfmt byte "%lf",0
msg1fmt  byte 0Ah, "%s", 0
msg1 byte "Enter a long double for x: ", 0
msg2  byte 0Ah, "The long double is: ", "%6.4lf", 0Ah, 0
x  real10 ?
y  real10 ?

.code
main proc
     INVOKE printf, ADDR msg1fmt, ADDR msg1
     INVOKE scanf, ADDR inputfmt, ADDR x
     fld x
     fstp y
     INVOKE printf, ADDR msg2, y
main  endp
      end
