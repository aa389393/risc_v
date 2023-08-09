module dff_set#(
    parameter DW = 32
)
(
    input clk,
    input rst,
    input [DW-1:0] set_data,
    input [DW-1:0] data_i,
    output reg [DW-1 :0] data_o
);

    always@(posedge clk or negedge rst)begin
        if(!rst)
            data_o <= set_data;
        else
            data_o <= data_i;
    end
endmodule