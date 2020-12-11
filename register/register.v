module register(CP,D,Q);
	input CP,D;
	output [3:0] Q;
	reg [3:0] Q;
	
	always @(posedge CP)
	begin
		Q[0] <= D;
		Q[1] <= Q[0];
		Q[2] <= Q[1];
		Q[3] <= Q[2];
	end
endmodule