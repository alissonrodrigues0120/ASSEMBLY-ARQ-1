

#include <stdio.h>


int main(){
    int n;
    scanf("%d", &n);
    int vetor[n];
    
    for(int i=0;i<n; i++){
        scanf("%d", &vetor[i]);
    }
    int flag=0;

    for(int i=0; i<n-1; i++){
        for(int j=0; j<n-i-1; j++){
            if(vetor[j] > vetor[j+1]){
                int aux   = vetor[j];
                vetor[j] = vetor[j+1];
                vetor[j+1] = aux;
				flag = 1;
            }
        }
	if(flag == 1)
	  break;
    }

    for(int i=0; i<n; i++)
        printf("%d ", vetor[i]);

    return 0;
}
