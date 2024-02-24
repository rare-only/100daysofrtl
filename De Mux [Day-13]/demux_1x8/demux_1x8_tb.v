`include "demux_1x8.v"

module demux_1x8_tb;
    reg x;
    reg [2:0] s;
    wire [7:0] y;
 demux_1x8_ dm1x8 (x,s,y);
 initial 
    begin
       $dumpfile("output.vcd");
       $dumpvars(0,demux_1x8_tb);
        begin
              s = 3'b000; x = 1'b0; 
          #10 s = 3'b011; x = 1'b1;
          #10 s = 3'b110; x = 1'b1;
          #10 s = 3'b111; x = 1'b1;
        end
       #10 $display("At time %0t: x = %b,s[2:0] = %b,y[7:0] = %b",$time,x,s[2:0],y[7:0]);
       #10 $finish();
    end
endmodule