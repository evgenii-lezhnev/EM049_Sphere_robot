module motor_direction(in_pwm, in_dir, out1, out2);
input in_pwm;
input in_dir;
output out1;
output out2;

assign out1 = in_pwm * ~in_dir;
assign out2 = in_pwm * in_dir;

endmodule
