`timescale 1ns / 1ps

module half_adder(
    input data_A,
    input data_B,
    output sum,
    output carry
    );
    
    // Half adder
    assign sum = data_A ^ data_B;
    assign carry = data_A & data_B;
    
endmodule
