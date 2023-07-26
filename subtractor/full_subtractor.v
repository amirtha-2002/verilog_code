module full_subtractor(input x,y,z,output b0,di);
assign b0=(~x&y)+(~(x^y))&z;
assign di=(x^y)^z;
endmodule
