module HC4511(LE,BL,LT,D,Y);
input LE,BL,LT;
input [3:0] D;
output [6:0] Y;
reg [6:0] Y;

always @(LE,BL,LT,D)
begin
	if(!LT) Y = 7'b1111111;
	else if(!BL) Y = 7'b0000000;
	else if(LE) Y = Y;
	else
		begin
		case(D)
			4'b0000: Y = 7'b1111110;
			4'b0001: Y = 7'b0110000;
			4'b0010: Y = 7'b1101101;
			4'b0011: Y = 7'b1111001;
			4'b0100: Y = 7'b0110011;
			4'b0101: Y = 7'b1011011;
			4'b0110: Y = 7'b0011111;
			4'b0111: Y = 7'b1110000;
			4'b1000: Y = 7'b1111111;
			4'b1001: Y = 7'b1111011;
			default: Y = 7'b0000000;
		endcase
		end
end

endmodule