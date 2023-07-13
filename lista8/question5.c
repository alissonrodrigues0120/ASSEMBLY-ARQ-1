
#include <stdio.h>

int main()
{
  int arrayone[10];
  int arraytwo[20]= {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  
  for(int i=0;i<10; i++){
      printf("elemento %d: \n", i);
      scanf("%d", &arrayone[i]);
  }
  
  for(int i=0;i<10; i++){
      arraytwo[i]=arrayone[i];
  }
  printf("\n");
  for (int i=0; i<20; i++){
      printf("elemento %d: \n", i);
      printf("%d\n", arraytwo[i]);
  }
  
  return 0;
  
}
