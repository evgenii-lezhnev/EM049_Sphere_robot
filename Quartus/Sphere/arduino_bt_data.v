module arduino_bt_data(
	input_clk,
	input_data,
	output_data,
	output_data_motor,
	output_data_motor_dir,
	output_data_servo
);
	input input_clk;
	input[2:0] input_data;
	output reg[2:0] output_data;
	output reg[7:0] output_data_motor;
	output reg output_data_motor_dir;
	output reg[7:0] output_data_servo;

	always@(posedge input_clk)
	begin
	output_data <= input_data;
		if(input_data == 3'b100)
		begin
			output_data_motor<= 8'b0;
			output_data_motor_dir = 1'b0;
		end
		else if(input_data == 3'b110)
		begin
			output_data_motor<= 8'b01111111;
			output_data_motor_dir = 1'b0;
		end
		else if(input_data == 3'b111)
		begin
			output_data_motor<= 8'b01111111;
			output_data_motor_dir = 1'b1;
		end
		
		
		else if(input_data == 3'b011)
		begin
			output_data_servo <= 8'b01011010;
		end
		else if(input_data == 3'b010)
		begin
			output_data_servo <= 8'b0;
		end
		else if(input_data == 3'b001)
		begin
			output_data_servo <= 8'b10110100;
		end
		
	end

endmodule
