module double_direction_shift_register(S1,S0,D,Q,DSL,DSR,CP);
	input S1,S0,DSL,DSR,CP;
	input [3:0] D;
	output [3:0] Q;
	reg [3:0] Q;
	
	always @(posedge CP)
		begin
			case({S1,S0})
				2'b11 : 
					begin
						Q[0] <= D[0];
						Q[1] <= D[1];
						Q[2] <= D[2];
						Q[3] <= D[3];
					end
				2'b10 :
					begin
						Q[0] <= Q[1];
						Q[1] <= Q[2];
						Q[2] <= Q[3];
						Q[3] <= DSL;
					end
				2'b01 :
					begin
						Q[3] <= Q[2];
						Q[2] <= Q[1];
						Q[1] <= Q[0];
						Q[0] <= DSL;
					end
				default :; 
			endcase
		end
endmodule
	