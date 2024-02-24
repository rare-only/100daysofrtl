`include "demux_1x4.v"

module demux_1x4_tb;
    reg x;
    reg [1:0] s;
    wire [3:0] y;
 demux_1x4_ dm1x4 (x,s,y);
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,demux_1x4_tb);
        begin
            s=2'b00;   x=1'b1;
        #10 s=2'b01;   x=1'b1;
        #10 s=2'b10;   x=1'b1;
        #10 s=2'b11;   x=1'b1;
        end
         #50 $display("At Time %0t: x = %b, s[1:0] = %b, y[3:0] = %b",$time,x,s[1:0],y[3:0]);
         #10 $finish();
    end
endmodule