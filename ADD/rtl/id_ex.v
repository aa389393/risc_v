`include "define.v"
module id_ex(
    input clk,
    input rst,

    // from id
    input [31:0] inst_i,
    input [31:0] inst_addr_i,
    input [31:0] op1_i,
    input [31:0] op2_i,
    input [4:0]  rd_addr_i,
    input        reg_wen_i,

    // to ex
    output [31:0] inst_o,
    output [31:0] inst_addr_o,
    output [31:0] op1_o,
    output [31:0] op2_o,
    output [4:0]  rd_addr_o,
    output        reg_wen_o
);
    dff_set #(32)dff1(clk, rst, `INST_NOP, inst_i, inst_o);

    dff_set #(32)dff2(clk, rst, 32'b0, inst_addr_i, inst_addr_o);
    
    dff_set #(32)dff3(clk, rst, 32'b0, op1_i, op1_o);

    dff_set #(32)dff4(clk, rst, 32'b0, op2_i, op2_o);

    dff_set #(5)dff5(clk, rst, 5'b0, rd_addr_i, rd_addr_o);
    
    dff_set #(1)dff6(clk, rst, 1'b0, reg_wen_i, reg_wen_o);

endmodule