module numerical_comparator(A,B,Fmax,Fmin,Fequ);
	input A,B;
	output Fmax,Fmin,Fequ;
	wire 	Anot,Bnot;
	
	not U1(Bnot,B);
	not U2(Anot,A);
	and U3(Fmax,A,Bnot);
	and U4(Fmin,B,Anot);
	nor U5(Fequ,Fmax,Fmin);
endmodule