module MC14528(RD,TRP,TRN,Q,Qnot);
	input RD,TRP,TRN;
	output Q,Qnot;
	reg Q,Qnot,ans1,ans2,ans3;
	
	always @(posedge TRN)
	begin
		if(RD == 1&&TRP == 1)
			ans1 = 1;
		else ans1 = 0;
	end
	
	always @(negedge TRP)
	begin
	if(RD == 1&&TRN == 0)
		ans2 = 1;
	else ans2 = 0;
	end
	
	always @(RD,TRP,TRN)
	begin
		if(RD == 0||TRP == 1||TRN == 0)	ans3 = 0;
	end
	
	always @(ans1,ans2,ans3)
	begin
		if(ans3 == 0)
		begin
			Q = 0;
			Qnot = 1;
		end
			
		else
			case({ans1,ans2})
			2'b11 : begin Q = 1;	Qnot = 0; end
			2'b01 : begin Q = 1;	Qnot = 0; end
			2'b10 : begin Q = 1;	Qnot = 0; end
			default begin Q = 1'bx;Qnot = 1'bx; end
			endcase
	end
endmodule
