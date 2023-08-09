module ifetch(
    // from pc
    input [31:0] pc_addr_i,
    // from rom
    input [31:0] rom_inst_i,
    // to rom
    output [31:0] if2rom_addr_o,
    // to if_id
    output [31:0] inst_addr_o,
    output [31:0] inst_o
);

    assign if2rom_addr_o = pc_addr_i;
    assign inst_addr_o = pc_addr_i;
    assign inst_o = rom_inst_i;
endmodule