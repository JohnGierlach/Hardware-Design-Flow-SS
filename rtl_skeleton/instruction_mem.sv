module instruction_mem #(parameter WIDTH = 32)
    (
    input clk,
    input rst,
    output [4:0] RD, RS2, RS1,
    output [6:0] Funct7,
    output [2:0] Funct3,
    output [6:0] opcode
    );
    
    // Declare a two regs both 32-bits on named pc and addr
    
    // Declare regs that represent the RISC-V bit fields
    
    // Declare a localparam named NUM_INST with the value of 15
    
    // Declare a vector reg (similar to array) with NUM_INST regs inst_rom with size of 32-bits 
    // Last instruction must be a NO-OP 


    always@(posedge clk)begin
        
        // Initialize the addr and pc regs with rst signal

        // While pc is less than NUM_INST, set the addr to the current instance of inst_rom using pc and increment the pc

    end

    // Extract machine code to run proper FW assembly
    always@(posedge clk)begin 
        
        //Tnitialize RISC-V bit field regs with rst signal

        // Using the addr reg, set the RISC-V bit fields 

    end
    
    // Assign RD, RS1, RS2, Funct3, Funct7, and opcode to their correspoding regs
    
endmodule
