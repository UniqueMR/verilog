module Tflip_flop(T,Q,CP);
	input T,CP;
	output Q;
	reg Q;
	
	always @(posedge CP)
		begin
			if(~T)
				Q = Q;
			else
				Q = ~Q;
		end
endmodule