`timescale 1ns / 1ps

module adder_top #(parameter WIDTH = 16)
    (
    input[WIDTH:0] data_A,
    input[WIDTH:0] data_B,
    output[WIDTH:0] result
    );
    
    wire[WIDTH:0] adder_carrys;
    wire[WIDTH-1:0] adder_sums;
    assign adder_carrys[0] =  1'b0;
    
    // Generates the WIDTH size full adders iteratively 
    genvar i;
    generate

        for(i = 0; i < WIDTH; i = i + 1)begin  
            full_adder curr_adder(
                .data_A(data_A[i]),
                .data_B(data_B[i]),
                .carry_in(adder_carrys[i]),
                .sum(adder_sums[i]),
                .carry_out(adder_carrys[i+1])
            );
        end
    endgenerate 
    
    // Concatinates the carry bit with the collective sums
    assign result = {adder_carrys[WIDTH], adder_sums};

endmodule