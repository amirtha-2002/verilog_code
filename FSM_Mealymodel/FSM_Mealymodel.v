module fsm_mealymodel(
    input x,rst,clk,
    output reg y
    );
	 reg [1:0]ps,ns;
	 parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
	 always @(posedge clk,posedge rst)begin
	 if(rst==1)
	  ps=s0;
	 else begin
	  case(ps)
	  s0:if(x==1) begin
	      ns=s0;
		   y=1'b1;end
		  else begin
		   ns=s1;
			y=1'b0;end
	 s1:if(x==1) begin
	      ns=s3;
			y=1'b0;end
		 else begin
		   ns=s2;
			y=1'b1;end
	 s2:if(x==1) begin
	      ns=s1;
			y=1'b0;end
		 else begin
		   ns=s0;
			y=1'b1;end
	 s3:if(x==1) begin
	      ns=s2;
			y=1'b1;end
		 else begin
		   ns=s3;
			y=1'b0;end  
	 endcase
	  ps=ns;
	 end
	 end
endmodule
