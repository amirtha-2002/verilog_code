module seq_det_1101(
    input x,clk,rst,
    output reg y
    );
	 reg [1:0]ns,ps;
	 parameter A=2'b00,B=2'b01,C=2'b10,D=2'b11;
	 always @(posedge clk,posedge rst) begin
	 if(rst==1)
	  ps=A;
	 else begin
	  case(ps)
	  A:begin if(x==1) begin
	      ns=B;
		   y=1'b0;end
		  else begin
		   ns=A;
			y=1'b0;end
			end
	  B:begin if(x==1) begin
	      ns=C;
			y=1'b0;end
		 else begin
		   ns=A;
			y=1'b0;end
			end
	  C:begin if(x==1) begin
	      ns=C;
			y=1'b0;end
		 else begin
		   ns=D;
			y=1'b0;end
			end
	  D:begin if(x==1) begin
	      ns=B;
			y=1'b1;end
		 else begin
		   ns=A;
			y=1'b0;end 
    end			
	 endcase
	 ps=ns;
	 end
	 end
endmodule
