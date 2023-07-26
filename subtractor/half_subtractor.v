module half_subtractor(input x,y,output b,d);
	
assign b=(~x)&y;
assign d=x^y;

endmodule
