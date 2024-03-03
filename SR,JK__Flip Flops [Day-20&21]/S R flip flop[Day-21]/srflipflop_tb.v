`include "srflipflop.v"
module srflipflop_tb;
    reg clk, r, s;
    wire q, q_bar;
    srflipflop srff (q,q_bar,clk,r,s);

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, srflipflop_tb);
    end

     always
   begin
         clk = 1;
      #5 clk = 0;
      #5 clk = 1;
   end
   initial begin
          s = 0; r = 0;
      #10 s = 0; r = 1;
      #10 s = 1; r = 0;
      #10 s = 1; r = 1;
      $finish;
   end

    always @(posedge clk ) begin
        $monitor("At time %0t : q=%b q_bar=%b  r=%b s=%b", $time, q, q_bar, r, s);
    end
endmodule