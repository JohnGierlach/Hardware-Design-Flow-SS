#include <stdio.h>

typedef struct Adder{

    int * sum;
    int * carry;

}Adder;

int main(){

    int data_A = 0x00000000;
    int data_B = 0x00000000;
    int adder_carrys[32];
    int result;
    Adder adder_data;
    
}

void halfAdder(int data_A, int data_B, Adder adder_data){

    adder_data.sum = data_A ^ data_B;
    adder_data.carry = data_A & data_B;

}