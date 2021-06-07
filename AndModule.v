`timescale 1ns / 1ps

module AndModule(
    input [31:0] a,
    input [31:0] b,
	 input [15:0] immediate,
	 // opcode == 0 : AND
	 // opcode == 1 : ANDi
    input opcode,
    output reg [31:0] o
    );

reg [31:0] immediateReg;

always @(*) begin

immediateReg = {immediate, 16'b0};

if (opcode == 0) begin

o = a & b;

end

else begin

o = a & immediateReg;

end

end
endmodule
