module pwm_2(in,clk,out);
input[14:0] in;
input clk;
output reg out;

reg[14:0] counter;

	always@(posedge clk)
	begin
		if(counter<=in)
		begin
			if(counter == 15'b0)
				out <= 1'b0;
			else
				out <=1'b1;
		end
		else 
			 out <=1'b0;
		counter<=counter + 1'b1;
		if(counter == 15'b100111000100000)
			counter <= 15'b0;
	end

endmodule
