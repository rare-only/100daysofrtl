module half (output s1,c1, input a,b);
    assign s1 = a^b;
    assign c1 = a&b;
endmodule
 
module Fullusinghalf (output sum,  cout, input  x,y,  ci);
wire [2:0] w;
half ha1(w[0], w[1],x,y);
half ha2(sum,w[2],w[0],ci);
 
assign cout = w[2]|w[1];
endmodule

module paralleladdfullbyhalf(output [3:0] SUM ,output COUT,input [3:0] A,B,input  CIN);

wire [3:1] C;
    Fullusinghalf fha0(SUM[0],C[1],A[0],B[0],CIN);
    Fullusinghalf fha1(SUM[1],C[2],A[1],B[1],C[1]);
    Fullusinghalf fha2(SUM[2],C[3],A[2],B[2],C[2]);
    Fullusinghalf fha3(SUM[3],COUT,A[3],B[3],C[3]);
endmodule