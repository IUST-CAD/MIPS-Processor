`timescale 1ns / 1ps

module LuiModule
(
    input [15:0] a,
    output reg [31:0] o
);

always @(*) begin 

o = {a, 16'b0};

end

endmodule
