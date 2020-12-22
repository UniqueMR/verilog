module moniflop(A1,A2,B,Q,Qnot);
	input A1,A2,B;
	output Q,Qnot;
	reg Q,Qnot,ans1,ans2,ans3;
	
	always @(*)
	begin
		if(ans1 == 1||ans2 == 1||ans3 == 1)
		begin
			Q = 1;
			Qnot = 0;
		end
		else
		begin
			Q = 0;
			Qnot = 1;
		end
	end
	
	always @(posedge B)
	begin
		if(A1 == 0||A2 == 0)	ans1 = 1;
		else	ans1 = 0;
	end
	
	always @(negedge A1)
	begin
		if(B == 1)	ans2 = 1;
		else	ans2 = 0;
	end
	
	always @(negedge A2)
	begin
		if(B == 1)	ans3 = 1;
		else	ans3 = 0;
	end
endmodule