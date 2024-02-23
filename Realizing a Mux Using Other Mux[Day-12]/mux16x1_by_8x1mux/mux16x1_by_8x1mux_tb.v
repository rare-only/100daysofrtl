`include "mux16x1_by_8x1mux.v"

module mux16x1_by_8x1mux_tb;
reg [15:0] i;
reg [3:0] s;
wire y;
mux_16x1 m16b8 (i,s,y);
initial begin
    $dumpfile("output.vcd");
    $dumpvars(0,mux16x1_by_8x1mux_tb);
    $monitor("At time %0t: i[15:0] = %b, s[3:0] = %b, y = %b",$time,i[15:0],s[3:0],y);
end
initial
    begin
        repeat (6) begin
        i = $random;
        s = $random;
        #10;
        end
    end
endmodule