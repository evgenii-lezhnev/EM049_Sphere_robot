module Clock_divider(
	input_clk,
	input_div,
	output_clk
);
	input input_clk;
	input[29:0] input_div;
	output reg output_clk;
	reg signal;
	reg[29:0] counter;
	
	initial
	begin
		signal = 1'b0;
		counter = 30'b0;
	end

	always@(posedge input_clk)
	begin
		counter = counter + 1'b1;
		if(counter == input_div)
		begin
			signal = ~signal;
			counter = 30'b0;
		end
			output_clk = signal;
	end

endmodule