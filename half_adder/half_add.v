module half_adder(input a,b,output s,co);
assign s=a^b;
assign co=a&b;
endmodule
