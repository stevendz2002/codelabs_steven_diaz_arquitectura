
#include <stdio.h>
#include <stdlib.h>

float sumar(float a, float b){
	return a+b;
}


int main( int numArgs, char ** arrayArgs){
        float numero1=0.5F;
        float numero2=0.4F;
        float resultado;

        resultado=sumar(numero1,numero2);
        printf("\r\r\r %f, %f= %f \n",numero1,numero2,resultado);
        exit(EXIT_SUCCESS);
}
