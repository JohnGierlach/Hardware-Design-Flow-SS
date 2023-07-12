`timescale 1ns / 1ps

module alu_top#(parameter WIDTH = 32)
(
    input clk,
    input rst,
    input[WIDTH:0] RS1,
    input[WIDTH:0] RS2,
    input[2:0] Funct3,
    input Funct7,
    output[WIDTH:0] RD

);

    parameter ADD = 0, SLL = 1, SLT = 2, SLTU = 3, XOR = 4, SRL = 5, OR = 6, AND = 7, NOP = 8; 

    reg[WIDTH:0] temp_RD;

    always@(posedge clk)begin
        
        if(rst)
            temp_RD <= 0;
        
        case(Funct3)
            ADD:  temp_RD <= RS2 + RS1;
            SLL:  temp_RD <= RS2 << RS1;
            SLT:  temp_RD[0] <= (RS2 < RS1);
            SLTU: temp_RD[0] <= (RS2 < RS1);
            XOR:  temp_RD <= RS2 ^ RS1; 
            SRL:  temp_RD <= RS2 >> RS1;
            OR:   temp_RD <= RS2 | RS1;
            AND:  temp_RD <= RS2 & RS1;
            default: temp_RD <= temp_RD;
        endcase
    end

    assign RD = temp_RD;
    
endmodule