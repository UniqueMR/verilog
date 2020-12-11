module decrease_counter(CR,PE,CEP,CET,CP,D,Q,TC);
	input CR,PE,CEP,CET,CP;
	input [3:0] D;
	output [3:0] Q;
	output TC;
	reg [3:0] Q;
	wire TC;
	
	wire CE;
	
	assign CE = CEP & CET;
	assign TC = CET & PE & (Q == 4'b1111);
	
	always @(posedge CP,negedge CR)
		begin
			if(~CR)	Q = 4'b0000;
			else if(~PE)	Q = D;
			else if(CE)
				begin
					if(Q == 4'b0000)	Q = 4'b1111;
					else	Q = Q - 4'b0001;
				end
			else Q = Q;
		end
endmodule