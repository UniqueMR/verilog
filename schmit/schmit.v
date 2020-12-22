module schmit(data_in,out,clk,reset);
	input data_in,clk,reset;
	output out;
	reg out;
	wire high_level,low_level;
	
	assign high_level = 1'd5;
	assign low_level = 1'd1;

	always @(posedge clk or negedge reset)
	begin:schmit
		if(!reset) out = 1'b0;
		else	out = (data_in > high_level)? 1'b1 : (data_in < low_level)? 1'b0:out;
	end
endmodule