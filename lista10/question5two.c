#include <stdio.h>


int main() {
  
long double number1, number2;
printf("\n%s", "Enter a long double : ");
scanf_s("%Lf", &number1);
__asm {
  
fld number1
fstp number2
  
 }
printf("\n%s%6.4f\n\n", "The long double of number2 is: ", number2);
return 0;
}
