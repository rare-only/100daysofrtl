`include "mux_4x1.v"

module mux_4x1_tb;
reg [3:0] i;
reg [1:0] s;
wire y;
mux_4x1_ m4x1 (i,s,y);
initial begin
    $dumpfile("output.vcd");
    $dumpvars(0,mux_4x1_tb);
    $monitor("At time %0t: s[1]=%b ,s[0]=%b,i[0]=%b,i[1]=%b,i[2]=%b,i[3]=%b,y=%b",$time,s[1],s[0],i[0],i[1],i[2],i[3],y);
end
initial
begin
    s[0]=1'b0; s[1]=1'b1; i[0]=1'b0; i[1]=1'b1; i[2]=1'b0; i[3]=1'b0; #10
    s[0]=1'b1; s[1]=1'b0; i[0]=1'b1; i[1]=1'b1; i[2]=1'b0; i[3]=1'b1; #10
 $finish();
end
endmodule