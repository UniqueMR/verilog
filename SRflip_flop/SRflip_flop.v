module SRflip_flop(S,R,Q,CP);
	input S,R,CP;
	output Q;
	reg Q;
	
	always @(posedge CP)
		begin
			case({S,R})
				2'b00 : Q = Q;
				2'b01 : Q = 1;
				2'b10 : Q = 0;
				default: Q = 1'bx;
			endcase
		end
endmodule