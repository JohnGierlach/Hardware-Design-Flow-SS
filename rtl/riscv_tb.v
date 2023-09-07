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
    addi x1, x1, 10
    addi x2, x2, 10
    add x3, x2, x1
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
        addr = 32'h00211313; //SLL
        #20
        addr = 32'h0032F3B3; //AND
        #20
        addr = 32'h0032E433; //OR
        #20
        addr = 32'h0032C4B3; //XOR
        #20
        addr = 32'h0;
        
    end
    
    always #10 clk = ~clk;
endmodule
