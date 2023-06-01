.686
.model flat, c
.stack 100h

printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf  PROTO arg2:Ptr Byte, inputlist:VARARG

.data
voltage sdword ?
msgfmt1 byte "%s", 0
msg1   byte "Enter an AC Voltage: ", 0
msginput byte "%d", 0
msgfmt2 byte 0Ah, "%s", 0Ah, 0
msgfmt3 byte "%s", 0Ah, 0
msgfmt4 byte 0Ah, 0
msg2 byte "Voltage is Acceptable", 0
msg3 byte "Warning!", 0
msg4 byte "Voltage too Low", 0
msg5 byte "Voltage too High", 0
.code

main proc
     INVOKE printf, ADDR msgfmt1, ADDR msg1
     INVOKE scanf, ADDR msginput, ADDR voltage
if01: cmp voltage,110
      jl  else01
      cmp voltage,120
      jg  else01
then01:  INVOKE printf, ADDR msgfmt2, ADDR msg2
         jmp endif00
else01: INVOKE printf, ADDR msgfmt2, ADDR msg3
if02:  cmp voltage, 110
       jge else02
then02: INVOKE printf, ADDR msgfmt3, ADDR  msg4
        jmp endif00     
else02: INVOKE printf, ADDR msgfmt3, ADDR msg5
endif00: nop

       INVOKE printf, ADDR msgfmt4
       ret
main   endp
       end
       
