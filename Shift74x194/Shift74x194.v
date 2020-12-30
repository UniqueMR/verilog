module Shift74x194 (S1,S0,Din,Dsl,Dsr,Q,CP,CR);
	input S1,S0; //选择信号输入
	input Dsl,Dsr;//串行数据输入
	input CP,CR; //时钟和复位输入
	input [3:0] Din; //并行数据输入
	output reg [3:0] Q;//寄存器输出
	
	always @(posedge CP or negedge CR)
	begin
		if(~CR) Q <= 4'b0000; //异步清零
		else
			case({S1,S0})//根据S0,S1的值进行选择
				2'b00 : Q <= Q;//保持不变
				2'b01 : Q <= {Dsr,Q[3:1]};//左移
				2'b10 : Q <= {Q[2:0],Dsl};//右移
				2'b11 : Q <= Din;//并行置数
			endcase
	end
endmodule