module instruction_mem #(parameter WIDTH = 32)
    (
    input clk,
    input rst,
    output reg [WIDTH-1:0] addr
    );

    reg[31:0] pc;
    
    localparam NUM_INST = 13;
    
    // Last instruction must be a NO-OP 
    reg[WIDTH-1:0] inst_rom [0:NUM_INST-1] = 
    {
        32'h00A08093, //ADDI
        32'h00A10113, //ADDI
        32'h001101B3, //ADD
        32'h0030A233, //SLT
        32'h00115293, //SRLI
        32'h00211313, //SLLI
        32'h0032F3B3, //AND
        32'h0032E433, //OR
        32'h0032C4B3, //XOR
        32'h40610533, //SUB
        32'h004155B3, //SRL
        32'h00411633, //SLL
        32'h0         //NO-OP
    };

    always@(posedge clk)begin
        if(rst) begin
            addr <= 32'b0;
            pc   <= 32'b0;
        end

        else begin
            if(pc < NUM_INST) begin
                addr <= inst_rom[pc];
                pc   <= pc + 1;
            end
        end
    end
    
endmodule
