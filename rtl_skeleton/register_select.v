module register_select #(parameter WIDTH = 32)(
    input clk, rst,
    input[4:0] RS1, RS2, RD,
    input[WIDTH-1:0] RD_data,
    output[WIDTH-1:0] RS1_data, RS2_data
);
    
    // Declare a vector reg named Reg_list with 32 regs each being 32-bits in size
  
      
   integer i;
   always@(posedge clk)begin
        
        // Initialize all regs within Reg_list

        // Set the current RD register of Reg_list to RD_data;

   end
   
   // Assign RS1_data & RS2_data to their corresponding registers from the Reg_list
   
endmodule