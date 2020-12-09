module adder(A,B,C0,S,C);
	input A,B,C0;
	output S,C;
	wire S,C;
	
	assign S = A^B&(^C0);
	assign C = A&B + (A^B)&C0;
endmodule
