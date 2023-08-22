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
    
    reg[4:0] RD, RS2, RS1;
    wire[WIDTH-1:0] RD_reg, RS2_reg, RS1_reg;
    reg[6:0] Funct7;
    reg[2:0] Funct3;
    reg[6:0] opcode;
    reg[11:0] Imm_reg;
 
    reg RdEn;
    reg[WIDTH-1:0] RdPntr;
//    reg[WIDTH-1:0] Ram [0:WIDTH-1];
        
//    initial 
//    begin
//        Ram[0] <= 32'h00730033;
//    end
    //integer i;
    
    register_select REG_FILE_SELECT(.RD(RD), .RS1(RS1), .RS2(RS2), .RD_reg(RD_reg), .RS1_reg(RS1_reg), .RS2_reg(RS2_reg));
    alu_top ALU_ENGINE(.clk(clk), .rst(rst), .RS1(RS1_reg), .RS2(RS2_reg), .Funct3(Funct3), .Funct7(Funct7), .RD(RD_reg), .Imm_reg(Imm_reg), .opcode(opcode));
    
    always@(posedge clk)begin 
        if(rst) begin
            RD <= 5'b0;
            RS2 <= 5'b0;
            RS1 <= 5'b0;
            Funct7 <= 7'b0;
            Funct3 <= 3'b0;
            opcode <= 7'b0;
            RdEn <= 1'b0;
            RdPntr <= {WIDTH, 1'b0};
            Imm_reg <= 12'b0;
        end
            
        else begin
                opcode <= {addr[6:0]};
                RD     <= {addr[11:7]};
                Funct3 <= {addr[14:12]};
                RS1    <= {addr[19:15]};
                RS2    <= {addr[24:20]};
                Funct7 <= {addr[31:25]};
                Imm_reg <= {Funct7, RS2};
        end
    end
    
    assign rd = RD_reg;
    
endmodule
