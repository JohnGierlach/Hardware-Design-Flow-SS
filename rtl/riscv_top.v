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
    input[WIDTH-1:0] addr,
    input rst,
    output[4:0] rd
    );
    
    reg[4:0] RD, RS2, RS1;
    reg[6:0] Funct7;
    reg[2:0] Funct3;
    reg[6:0] opcode;
    reg[WIDTH-1:0] Ram [0:WIDTH-1];
    reg RdEn;
    reg[WIDTH-1:0] RdPntr;

    integer i;
    
    alu_top RTYPE_ALU(.clk(clk), .rst(rst), .RS1(RS1), .RS2(RS2), .Funct3(Funct3), .Funct7(Funct7), .RD(RD));
    
    always@(posedge clk)begin
        if(rst)begin
         for(i = 0; i < WIDTH; i = i+1)
            if(rst) Ram[i] <= {WIDTH, 1'b0};
        end
        else begin
            for(i = 0; i < WIDTH; i = i+1)begin
                if(addr == 32'h0000)
                    RdEn <= 1'b1; 
                else
                    Ram[i] <= addr;
            end   
        end
    end

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
        end
            
        else begin
            if(RdEn)begin
                opcode <= {Ram[RdPntr][6:0]};
                RD     <= {Ram[RdPntr][11:7]};
                Funct3 <= {Ram[RdPntr][14:12]};
                RS1    <= {Ram[RdPntr][19:15]};
                RS2    <= {Ram[RdPntr][24:20]};
                Funct7 <= {Ram[RdPntr][31:25]};
                RdPntr <= RdPntr + 1;
            end
        end
    end
    
    assign rd = RD;
    
endmodule
