`include "Encoder_16x4.v"
module Encoder_16x4_tb;
    reg en;
    reg [15:0] i;
    wire [3:0] y;
    integer z ; 
    Encoder_16x4 en16x4(y, en, i);

    initial begin
        $dumpfile("output.vcd");
      $dumpvars(0,Encoder_16x4_tb);
    end
  initial begin
     i = 16'b1;
        en = 1'b1;
        for (z = 0; z < 9; z = z + 1) begin
            i = i << 1;
            #3;
        end
    $finish();
  end
    initial begin
        $monitor("At time %0t : y=%b; en=%b; i=%b", $time, y, en, i);
    end
endmodule