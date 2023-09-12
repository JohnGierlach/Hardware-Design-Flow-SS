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
    output[WIDTH-1:0] rd
    );

    wire[31:0] addr;
        
    instruction_mem INSTRUCTION_MEMORY(.clk(clk), .rst(rst), .addr(addr));

    register_select REG_FILE_SELECT(.clk(clk), .rst(rst), .addr(addr), .RD_out(rd));

    // Would have more modules, this is a simple RISC-V ALU design
    
endmodule
