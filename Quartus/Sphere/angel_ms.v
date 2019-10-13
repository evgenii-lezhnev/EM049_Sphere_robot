module angel_ms(in,clk,out);
input[7:0] in;
input clk;
output reg[14:0] out; //100101100000

reg[10:0] data;

	always@(posedge clk)
	begin
		data <= in * 4'b1010;
		out <= 10'b1001011000 + data;
	end

endmodule
