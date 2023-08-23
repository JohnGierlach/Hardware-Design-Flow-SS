`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2023 07:19:13 PM
// Design Name: 
// Module Name: rsicv_top
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


module riscv_top #(parameter WIDTH = 32)
    (
    input clk,
    input rst,
    input[31:0] addr,
    output[WIDTH-1:0] rd
    );

    register_select REG_FILE_SELECT(.clk(clk), .rst(rst), .addr(addr), .RD_out(rd));

    
endmodule
