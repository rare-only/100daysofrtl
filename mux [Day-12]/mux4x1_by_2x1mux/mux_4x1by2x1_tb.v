`include "mux_4x1by2x1.v"

module mux_4x1by2x1_tb;
reg [3:0] i;
reg [1:0] s;
wire y;
mux_4x1 m4x1 (i,s,y);
initial
begin
    $dumpfile("output.vcd");
    $dumpvars(0,mux_4x1by2x1_tb);
   $monitor("At time %0t: i[0]=%b,i[1]=%b, s=%b, y=%b",$time,i[0],i[1],s,y);
 
 repeat(5)
 begin
 s=$random; 
 i=$random;
 #10;
 end
#10 $finish();
end
endmodule