module MUX41a(a,b,c,d,s1,s0,y);
	input a,b,c,d;
	input s1,s0;
	output y;
	
	reg y;
	
	always @(a or b or c	 or d or s1 or s0)
		begin : MUX41a
			case({s1,s0})
				2'b00 : y=a;
				2'b01 : y=b;
				2'b10 : y=c;
				2'b11 : y=d;
				default : y=a;
			endcase
		end   
endmodule