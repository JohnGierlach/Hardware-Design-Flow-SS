module register_select #(parameter WIDTH = 32)(
    input[WIDTH-1:0] addr,
    input clk, rst,
    output[WIDTH-1:0] RD_out
);
    reg[WIDTH-1:0] Reg_list [0:WIDTH-1];
    
    initial
    begin
        Reg_list[0] = 32'b0;
    end
    
    reg[4:0] RD, RS2, RS1;
    wire[WIDTH-1:0] RS2_data, RS1_data;
    wire[WIDTH-1:0] RD_data;
    reg[6:0] Funct7;
    reg[2:0] Funct3;
    reg[6:0] opcode;
    
    wire[WIDTH-1:0] prev_addr;
    reg RdEn;
    reg[WIDTH-1:0] RdPntr;
    alu_top ALU_ENGINE(.clk(clk), 
                       .rst(rst), 
                       .RS1(RS1_data), 
                       .RS2(RS2_data), 
                       .Funct3(Funct3), 
                       .Funct7(Funct7), 
                       .RD(RD_data), 
                       .Imm_reg({Funct7, RS2}),
                       .Shamt(RS2),
                       .opcode(opcode));
    
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
                opcode <= {addr[6:0]};
                RD     <= {addr[11:7]};
                Funct3 <= {addr[14:12]};
                RS1    <= {addr[19:15]};
                RS2    <= {addr[24:20]};
                Funct7 <= {addr[31:25]};
        end
    end
   
   integer i;
   always@(posedge clk)begin
        if(rst)begin
            for(i = 0; i < WIDTH; i = i + 1)
                Reg_list[i] <= 32'b0;
        end
        
        Reg_list[RD] = RD_data;
   end
   
   assign prev_addr = addr;
   assign RS1_data = Reg_list[RS1];
   assign RS2_data = Reg_list[RS2];
   assign RD_out = RD_data;
   
endmodule