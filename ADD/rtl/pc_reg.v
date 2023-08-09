module pc_reg(
    input clk,
    input rst,
    output reg [31:0] pc_o
);

    always@(posedge clk)begin
        if(!rst)
            pc_o <= 32'b0;
        else
            pc_o <= pc_o + 3'd4;    // ROM中以4個byte為一個指令
    end

endmodule 