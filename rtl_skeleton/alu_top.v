`timescale 1ns / 1ps

module alu_top#(parameter WIDTH = 32)
(
    input clk,
    input rst,
    input signed[WIDTH-1:0] RS1,
    input signed[WIDTH-1:0] RS2,
    input[2:0] Funct3,
    input[6:0] Funct7,
    input[6:0] opcode,
    input[11:0] Imm_reg,
    input[4:0] Shamt,
    output [WIDTH-1:0] RD

);

    localparam ADD = 0, SLL = 1, SLT = 2, SLTU = 3, XOR = 4, SRL = 5, OR = 6, AND = 7;

    // Declare a temp reg variable that is 32-bits in size named temp_RD
    
    always@(*)begin  
        
        // Initialize the value of temp_RD using the rst signal
        
        // Create R-type Operations for the ALU using opcode & funct fields
        
        // Create I-type Operations for the ALU using opcode & funct fields
        
        else
            temp_RD <= 0;
    end

    // Assign RD to temp_RD

endmodule