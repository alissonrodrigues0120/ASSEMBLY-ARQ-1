#include <stdio.h>


int main(){
    int n, aux;
    scanf("%d", &n);
    int vetor[n];
    
    for(int i=0;i<n;i++){
        scanf("%d", &vetor[i]);
    }
    

    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            if(vetor[i] < vetor[j]){
                aux   = vetor[i];
                vetor[i] = vetor[j];
                vetor[j] = aux;
            }
        }
    }

    for(int i=0; i<n; i++)
        printf("%d ", vetor[i]);

    return 0;
}
