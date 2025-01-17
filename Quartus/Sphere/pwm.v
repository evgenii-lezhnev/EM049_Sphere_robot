module pwm(in,clk,out);
input[7:0] in;
input clk;
output reg out;

reg[7:0] counter;

	always@(posedge clk)
	begin
		if(counter<=in)
		begin
			if(counter == 8'b0)
				out <= 1'b0;
			else
				out <=1'b1;
		end
		else 
			 out <=1'b0;
		counter<=counter+1'b1;
	end

endmodule
