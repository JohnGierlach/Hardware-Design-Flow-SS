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
            0:
            1:
            2:
            3:
            4:
            5:
            6:
            7:
            8:
            9:
           10:
           11:
           12:
           13:
           14:
           15:
           16:
           17:
           18:
           19:
           20:
           21:
           22:
           23:
           24:
           25:
           26:
           27:
           28:
           29:
           30:
           31:
        endcase
    end

    // Selecting Regs for RS2
    always@(*)begin
        case(RS2)
            0:
            1:
            2:
            3:
            4:
            5:
            6:
            7:
            8:
            9:
           10:
           11:
           12:
           13:
           14:
           15:
           16:
           17:
           18:
           19:
           20:
           21:
           22:
           23:
           24:
           25:
           26:
           27:
           28:
           29:
           30:
           31:
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
           10:
           11:
           12:
           13:
           14:
           15:
           16:
           17:
           18:
           19:
           20:
           21:
           22:
           23:
           24:
           25:
           26:
           27:
           28:
           29:
           30:
           31:
        endcase
    end

    
endmodule