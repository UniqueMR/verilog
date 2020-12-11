module circuit_counter(CP,Q);
	input CP;
	output [3:0] Q;
	reg [3:0] Q;
	
	always @(posedge CP)
		begin
			case(Q)
				4'b0001 : Q = 4'b0010;
				4'b0010 : Q = 4'b0100;
				4'b0100 : Q = 4'b1000;
				4'b1000 : Q = 4'b0001;
				default : Q = 4'b0001;
			endcase
		end
endmodule