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
    wire[4:0] rd;
    
    rsicv_top #(WIDTH) UUT(.clk(clk), .rst(rst), .addr(addr), .rd(rd));
    
    integer i; 
    
    initial
    begin
        clk = 0;
        rst = 1;
        #20;
        rst = 0;
        addr = 32'h00730033;
        #20
        addr = 32'h00000000;
        
    end
    
    always #20 clk = ~clk;
endmodule
