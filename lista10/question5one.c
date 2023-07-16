// Correção: 0,3. No caso do long double, você não adaptou a string de formatação.
#include <stdio.h>

int main() {
  
float number1, number2;
printf("\n%s", "Enter a float of number1: ");
scanf_s("%f", &number1);
__asm {
  
    fld number1
    fstp number2
  
   }
printf("\n%s%6.4f\n\n", "The float of number2 is: ", number2);
return 0;

}
