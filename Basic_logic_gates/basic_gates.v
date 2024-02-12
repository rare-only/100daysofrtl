module basic_gates(a,b,c,d,e,f,g,x,y);
input x ,y;
output a,b,c,d,e,f,g;
assign a = x&y;
assign b = x|y;
assign c = x^y;
assign d = ~(x&y);
assign e = ~(x|y);
assign f = ~(x^y);
assign g = !(x);
endmodule