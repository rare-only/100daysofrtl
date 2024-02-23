module  mux2x1 (m0,m1,s,y);
input m0,m1;
input s;
output y;
assign y =(~s & m0)|(s & m1);
endmodule

module mux_4x1 (i,s,y);
input [3:0] i;
input [1:0] s;
output y;
wire y0,y1;
mux2x1 m1 (.m0(i[0]),.m1(i[1]),.s(s[0]),.y(y0));
mux2x1 m2 (.m0(i[2]),.m1(i[3]),.s(s[0]),.y(y1));
mux2x1 m3 (.m0(y0),.m1(y1),.s(s[1]),.y(y));
//  mux2x1 m1 (i[0],i[1],s[0],y0);
//  mux2x1 m2  (i[2],i[3],s[0],y1);
// mux2x1 m3 (y0,y1,s[1],y);
endmodule