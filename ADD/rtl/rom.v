module rom(
    input [31:0] inst_addr_i,
    output reg [31:0] inst_o
);

    reg [31:0] rom_mem[0:4095]; // 2^12（4096） 個 32b的指令

    always@(*)begin
        inst_o <= rom_mem[inst_addr_i >> 2];
    end
endmodule