`include "Decoders_4x16.v"

module Decoders_4x16_tb;
    reg en;
    reg  [3:0] a;
    wire [15:0] y;
    integer i;
 Decoders_4x16 dec4x16(y,a,en);
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,Decoders_4x16_tb);
    end
    initial begin
        a=4'b0; en=1'b1;
        for(i=0;i<16;i=i+1)
            begin 
                 a = i; #1;
                 en = 1'b1;
            end
            $finish();
    end
    initial
        $monitor("At time %0t:y[15:0] = %b, a[3:0] = %b, en = %b",$time,y,a,en);
endmodule