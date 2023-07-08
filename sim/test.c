#include <stdio.h>
#define WIDTH 32

void halfAdder(int data_A, int data_B, int carry, int sum);
void fullAdder(int data_A, int data_B, int carry_in, int sum, int carry_out);

int main(){

    int data_A = 15;
    int data_B = 20;
    int adder_carrys[WIDTH-1];
    int adder_sums[WIDTH];
    int result[WIDTH];
    adder_carrys[0] = 0;
    int binaryNum_A[WIDTH];
    int binaryNum_B[WIDTH];
    int i;
    

    // Initialize arrays
    for(int i = 0; i < WIDTH; i++){
        result[i] = 0;
        binaryNum_A[i] = 0;
        binaryNum_B[i] = 0;
        adder_sums[i] = 0;

        if(i != 0)
            adder_carrys[i-1] = 0;

    }

    // Get binary for data_A integer
    while(data_A > 0){

        if(data_A > 0){
            binaryNum_A[i] = data_A % 2;
            data_A /= 2;
            i++;
        }
    }

    // Get binary for data_B integer
    i = 0;
    while(data_B > 0){

        if(data_B > 0){
            binaryNum_B[i] = data_B % 2;
            data_B /= 2;
            i++;
        }
    }

    // Perform all adder operations of the size of WIDTH
    for(int i = 0; i < WIDTH; i++){

        fullAdder(binaryNum_A[WIDTH-i], 
                  binaryNum_B[WIDTH-i], 
                  adder_carrys[i],
                  adder_sums[i],
                  adder_carrys[i+1]);
    }

    // print Result in binary 
    for(int i = 0; i < WIDTH; i++){
        result[i] = adder_sums[i];
        printf("%d ", result[i]);
    }

}

// Full adder operations
void fullAdder(int data_A, int data_B, int carry_in, int sum, int carry_out){

    int carry_one, carry_two, sum_one;
    halfAdder(data_A, data_B, carry_one, sum_one);
    halfAdder(sum_one, carry_in, carry_two, sum);

    carry_out = carry_one | carry_two;
}

// Half adder operations
void halfAdder(int data_A, int data_B, int carry, int sum){

    sum = data_A ^ data_B;
    carry = data_A & data_B;

}