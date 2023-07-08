`timescale 1ns / 1ps

module full_adder(
    input data_A,
    input data_B,
    input carry_in,
    output sum,
    output carry_out
    );
    
    wire carry_one, carry_two;
    wire sum_one;

    half_adder ha0(.data_A(data_A), .data_B(data_B), .carry(carry_one), .sum(sum_one));
    half_adder ha1(.data_A(sum_one), .data_B(carry_in), .carry(carry_two), .sum(sum));

    assign carry_out = carry_one | carry_two;
    
endmodule