`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2023 03:05:08 PM
// Design Name: 
// Module Name: riscv_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module riscv_tb();
    
    parameter WIDTH = 32;
    reg clk, rst;
    reg[WIDTH-1:0] addr;
    wire[WIDTH-1:0] rd;
    
    riscv_top #(WIDTH) UUT(.clk(clk), .rst(rst), .addr(addr), .rd(rd));
    
    /*
    TESTED RISCV ISA Assembly code
    
    ADDI x1, x1, 10
    ADDI x2, x2, 10
    ADD x3, x1, x2
    SLT x4, x2, x3
    SRLI x5, x1, 1
    SLLI x6, x2, 2
    AND x7, x5, x3
    OR x8, x5, x3
    XOR x9, x5, x3
    SUB x10, x2, x6
    SRL x11, x2, x4
    SLL x12, x2, x4
    
    */
    
    initial
    begin
        clk = 1;
        rst = 1;
        #20;
        rst = 0;
        addr = 32'h00A08093; //ADDI
        #20;
        addr = 32'h00A10113; //ADDI
        #20
        addr = 32'h001101B3; //ADD
        #20
        addr = 32'h0030A233; //SLT
        #20
        addr = 32'h00115293; //SRLI
        #20
        addr = 32'h00211313; //SLLI
        #20
        addr = 32'h0032F3B3; //AND
        #20
        addr = 32'h0032E433; //OR
        #20
        addr = 32'h0032C4B3; //XOR
        #20
        addr = 32'h40610533; //SUB
        #20
        addr = 32'h004155B3; //SRL
        #20
        addr = 32'h00411633; //SLL
        #20
        addr = 32'h0;
        
    end
    
    always #10 clk = ~clk;
endmodule
