module numerical_comparator(A,B,Fmax,Fmin,Fequ);
	input [3:0] A,B;
	output Fmax,Fmin,Fequ;
	
	wire Fmax3,Fmin3,Fequ3,Fmax2,Fmin2,Fequ2,Fmax1,Fmin1,Fequ1,Fmax0,Fmin0,Fequ0;
	
	assign Fmax3 = A[3]&(~B[3]);
	assign Fmin3 = (~A[3])&B[3];
	assign Fequ3 = A[3]&B[3] | (~A[3])&(~B[3]);
	assign Fmax2 = A[2]&(~B[2]);
	assign Fmin2 = (~A[2])&B[2];
	assign Fequ2 = A[2]&B[2] | (~A[2])&(~B[2]);
	assign Fmax1 = A[1]&(~B[1]);
	assign Fmin1 = (~A[1])&B[1];
	assign Fequ1 = A[1]&B[1] | (~A[1])&(~B[1]);
	assign Fmax0 = A[0]&(~B[0]);
	assign Fmin0 = (~A[0])&B[0];
	assign Fequ0 = A[0]&B[0] | (~A[0])&(~B[0]);
	assign Fmax = Fmax3 | Fequ3&Fmax2 | Fequ3&Fequ2&Fmax1 | Fequ3&Fequ2&Fequ1&Fmax0;
	assign Fmin = Fmin3 | Fequ3&Fmin2 | Fequ3&Fequ2&Fmin1 | Fequ3&Fequ2&Fequ1&Fmin0;
	assign Fequ = Fequ3&Fequ2&Fequ1&Fequ0;
	
endmodule
