module register_select(
    input RS1,
    input RS2,
    input RD,
    output RD_reg,
    output RS1_reg,
    output RS2_reg
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


    // Selecting Regs for RS1
    always@(*)begin
        case(RS1)
            0: RS1 <= x0;
            1: RS1 <= x1;
            2: RS1 <= x2;
            3: RS1 <= x3;
            4: RS1 <= x4;
            5: RS1 <= x5;
            6: RS1 <= x6;
            7: RS1 <= x7;
            8: RS1 <= x8;
            9: RS1 <= x9;
           10: RS1 <= x10;
           11: RS1 <= x11;
           12: RS1 <= x12;
           13: RS1 <= x13;
           14: RS1 <= x14;
           15: RS1 <= x15;
           16: RS1 <= x16;
           17: RS1 <= x17;
           18: RS1 <= x18;
           19: RS1 <= x19;
           20: RS1 <= x20;
           21: RS1 <= x21;
           22: RS1 <= x22;
           23: RS1 <= x23;
           24: RS1 <= x24;
           25: RS1 <= x25;
           26: RS1 <= x26;
           27: RS1 <= x27;
           28: RS1 <= x28;
           29: RS1 <= x29;
           30: RS1 <= x30;
           31: RS1 <= x31;
           default RS1 <= x0;
        endcase
    end

    // Selecting Regs for RS2
    always@(*)begin
        case(RS2)
            0: RS2 <= x0;
            1: RS2 <= x1;
            2: RS2 <= x2;
            3: RS2 <= x3;
            4: RS2 <= x4;
            5: RS2 <= x5;
            6: RS2 <= x6;
            7: RS2 <= x7;
            8: RS2 <= x8;
            9: RS2 <= x9;
           10: RS2 <= x10;
           11: RS2 <= x11;
           12: RS2 <= x12;
           13: RS2 <= x13;
           14: RS2 <= x14;
           15: RS2 <= x15;
           16: RS2 <= x16;
           17: RS2 <= x17;
           18: RS2 <= x18;
           19: RS2 <= x19;
           20: RS2 <= x20;
           21: RS2 <= x21;
           22: RS2 <= x22;
           23: RS2 <= x23;
           24: RS2 <= x24;
           25: RS2 <= x25;
           26: RS2 <= x26;
           27: RS2 <= x27;
           28: RS2 <= x28;
           29: RS2 <= x29;
           30: RS2 <= x30;
           31: RS2 <= x31;
           default RS2 <= x0;
        endcase
    end

    // Selecting Regs for RD
    always@(*)begin
        case(RD)
            0: RD <= x0;
            1: RD <= x1;
            2: RD <= x2;
            3: RD <= x3;
            4: RD <= x4;
            5: RD <= x5;
            6: RD <= x6;
            7: RD <= x7;
            8: RD <= x8;
            9: RD <= x9;
           10: RD <= x10;
           11: RD <= x11;
           12: RD <= x12;
           13: RD <= x13;
           14: RD <= x14;
           15: RD <= x15;
           16: RD <= x16;
           17: RD <= x17;
           18: RD <= x18;
           19: RD <= x19;
           20: RD <= x20;
           21: RD <= x21;
           22: RD <= x22;
           23: RD <= x23;
           24: RD <= x24;
           25: RD <= x25;
           26: RD <= x26;
           27: RD <= x27;
           28: RD <= x28;
           29: RD <= x29;
           30: RD <= x30;
           31: RD <= x31;
           default RD <= x0;
        endcase
    end

    assign RS1_reg <= RS1;
    assign RS2_reg <= RS2;
    assign RD_reg  <= RD;

    
endmodule