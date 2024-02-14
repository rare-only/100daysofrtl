module full_sub(a,b,bi,d,bo);
input a,b,bi;
output d,bo;
assign d=a^b^bi;
assign bo=((~a&b)|~(a^b)&bi);
endmodule