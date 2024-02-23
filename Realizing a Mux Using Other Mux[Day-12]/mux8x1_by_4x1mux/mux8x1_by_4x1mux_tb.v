`include "mux8x1_by_4x1mux.v"

module mux8x1_by_4x1mux_tb;
reg [7:0]i;
reg [2:0]s;
wire y;
mux_8x1 muxbu  (i,s,y);
initial begin
    $dumpfile("output.vcd");
    $dumpvars(0,mux8x1_by_4x1mux_tb);
    $monitor("At time %0t: i[7:0] = %b, s[2:0] = %b,y = %b",$time,i[7:0],s[2:0],y);
end

initial
begin
repeat (5) begin
i = $random;
s = $random;
#10;
end
$finish();
end
endmodule