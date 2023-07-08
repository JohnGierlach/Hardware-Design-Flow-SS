`timescale 1ns / 1ps

module adder_tb();
    parameter WIDTH = 32;
    reg[WIDTH:0] data_A, data_B;
    wire[WIDTH:0] result;
    
    adder_top #(WIDTH) UUT(
        .data_A(data_A),
        .data_B(data_B),
        .result(result)
    );
    
    initial begin
        data_A = 32'b0;
        data_B = 32'b0;
        #10
        data_A = 32'h4234;
        data_B = 32'h5678;
    end
    
endmodule
