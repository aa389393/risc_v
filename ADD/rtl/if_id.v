`include "define.v"

module if_id(
    input clk, 
    input rst,

    input [31:0] inst_i,
    input [31:0] inst_addr_i,
    output [31:0] inst_addr_o,
    output [31:0] inst_o
);
    dff_set #(32) dff1(clk, rst, `INST_NOP, inst_i, inst_o);

    dff_set #(32) dff2(clk, rst, 32'b0, inst_addr_i, inst_addr_o);

endmodule