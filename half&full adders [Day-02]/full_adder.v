module full_adder(a,b,ci,sum,co);
input a,b,ci;
output sum,co;
assign sum = a^b^ci;
assign co= a&b|b&ci|ci&a;
endmodule