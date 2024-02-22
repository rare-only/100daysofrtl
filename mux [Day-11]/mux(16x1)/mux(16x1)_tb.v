`include "mux(16x1).v"

module mux_16x1_tb;
reg [15:0] i;
reg [3:0] s;
wire y;

mux_16x1 m16x1(i,s,y);
initial begin
    $dumpfile("output.vcd");
    $dumpvars(0,mux_16x1_tb);
    $monitor("At time %0t: i[15:0]=%b,s[3:0]=%b,y=%b",$time,i[15:0],s[3:0],y);
end
    initial begin
        repeat (5) begin
            i = $random;
            s = $random;
            #10;
        end
    end
endmodule