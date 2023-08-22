module register_select(
    input RS1,
    input RS2,
    input RD,
    output reg RD_reg,
    output reg RS1_reg,
    output reg RS2_reg
);
    reg[31:0] x0 = 32'b0;
    reg[31:0] x1;
    reg[31:0] x2;
    reg[31:0] x3;
    reg[31:0] x4;
    reg[31:0] x5;
    reg[31:0] x6;
    reg[31:0] x7;
    reg[31:0] x8;
    reg[31:0] x9;
    reg[31:0] x10;
    reg[31:0] x11;
    reg[31:0] x12;
    reg[31:0] x13;
    reg[31:0] x14;
    reg[31:0] x15;
    reg[31:0] x16;
    reg[31:0] x17;
    reg[31:0] x18;
    reg[31:0] x19;
    reg[31:0] x20;
    reg[31:0] x21;
    reg[31:0] x22;
    reg[31:0] x23;
    reg[31:0] x24;
    reg[31:0] x25;
    reg[31:0] x26;
    reg[31:0] x27;
    reg[31:0] x28;
    reg[31:0] x29;
    reg[31:0] x30;
    reg[31:0] x31;


    // Selecting Regs for RS1
    always@(*)begin
        case(RS1)
            0: RS1_reg <= x0;
            1: RS1_reg <= x1;
            2: RS1_reg <= x2;
            3: RS1_reg <= x3;
            4: RS1_reg <= x4;
            5: RS1_reg <= x5;
            6: RS1_reg <= x6;
            7: RS1_reg <= x7;
            8: RS1_reg <= x8;
            9: RS1_reg <= x9;
           10: RS1_reg <= x10;
           11: RS1_reg <= x11;
           12: RS1_reg <= x12;
           13: RS1_reg <= x13;
           14: RS1_reg <= x14;
           15: RS1_reg <= x15;
           16: RS1_reg <= x16;
           17: RS1_reg <= x17;
           18: RS1_reg <= x18;
           19: RS1_reg <= x19;
           20: RS1_reg <= x20;
           21: RS1_reg <= x21;
           22: RS1_reg <= x22;
           23: RS1_reg <= x23;
           24: RS1_reg <= x24;
           25: RS1_reg <= x25;
           26: RS1_reg <= x26;
           27: RS1_reg <= x27;
           28: RS1_reg <= x28;
           29: RS1_reg <= x29;
           30: RS1_reg <= x30;
           31: RS1_reg <= x31;
           default RS1_reg <= x0;
        endcase
    end

    // Selecting Regs for RS2
    always@(*)begin
        case(RS2)
            0: RS2_reg <= x0;
            1: RS2_reg <= x1;
            2: RS2_reg <= x2;
            3: RS2_reg <= x3;
            4: RS2_reg <= x4;
            5: RS2_reg <= x5;
            6: RS2_reg <= x6;
            7: RS2_reg <= x7;
            8: RS2_reg <= x8;
            9: RS2_reg <= x9;
           10: RS2_reg <= x10;
           11: RS2_reg <= x11;
           12: RS2_reg <= x12;
           13: RS2_reg <= x13;
           14: RS2_reg <= x14;
           15: RS2_reg <= x15;
           16: RS2_reg <= x16;
           17: RS2_reg <= x17;
           18: RS2_reg <= x18;
           19: RS2_reg <= x19;
           20: RS2_reg <= x20;
           21: RS2_reg <= x21;
           22: RS2_reg <= x22;
           23: RS2_reg <= x23;
           24: RS2_reg <= x24;
           25: RS2_reg <= x25;
           26: RS2_reg <= x26;
           27: RS2_reg <= x27;
           28: RS2_reg <= x28;
           29: RS2_reg <= x29;
           30: RS2_reg <= x30;
           31: RS2_reg <= x31;
           default RS2_reg <= x0;
        endcase
    end

    // Selecting Regs for RD
    always@(*)begin
        case(RD)
            0: RD_reg <= x0;
            1: RD_reg <= x1;
            2: RD_reg <= x2;
            3: RD_reg <= x3;
            4: RD_reg <= x4;
            5: RD_reg <= x5;
            6: RD_reg <= x6;
            7: RD_reg <= x7;
            8: RD_reg <= x8;
            9: RD_reg <= x9;
           10: RD_reg <= x10;
           11: RD_reg <= x11;
           12: RD_reg <= x12;
           13: RD_reg <= x13;
           14: RD_reg <= x14;
           15: RD_reg <= x15;
           16: RD_reg <= x16;
           17: RD_reg <= x17;
           18: RD_reg <= x18;
           19: RD_reg <= x19;
           20: RD_reg <= x20;
           21: RD_reg <= x21;
           22: RD_reg <= x22;
           23: RD_reg <= x23;
           24: RD_reg <= x24;
           25: RD_reg <= x25;
           26: RD_reg <= x26;
           27: RD_reg <= x27;
           28: RD_reg <= x28;
           29: RD_reg <= x29;
           30: RD_reg <= x30;
           31: RD_reg <= x31;
           default RD_reg <= x0;
        endcase
    end

endmodule