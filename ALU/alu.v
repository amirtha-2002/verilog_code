module alu(input [3:0] a,b,input [2:0] s,output reg [7:0] y);

always @(a,b,s) 
begin
case(s)
3'b000:y=a+b;
3'b001:y=a-b;
3'b010:y=a*b;
3'b011:y=a/b;
3'b100:y=a^b;
3'b101:y=~(a&b);
3'b110:y=a<<1;
default:y=(~a)+1;
endcase
end
endmodule
