module Dflip_flop(D,CP,Q,Qnot);
	input D,CP;
	output Q,Qnot;
	reg Q,Qnot;
			
	always @(posedge CP)
		begin
			Q = D;
			Qnot = ~Q;
		end
endmodule