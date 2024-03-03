`include "jkflipflop.v"

module jkflipflop_tb;
    reg clk,j,k;
    wire q,q_bar;
 jkflipflop jkff(q,q_bar,clk,j,k);
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,jkflipflop_tb);
    end

    always begin
            clk = 1;
         #5 clk = 0;
         #5 clk = 1;
    end

    initial begin
        j = 0; k = 0; #10;
        j = 0; k = 1; #10;
        j = 1; k = 0; #10;
        j = 1; k = 1; #10;
        $finish;
    end

   
      always @(posedge clk ) begin
        $monitor("At time %0t : q=%b q_bar=%b  j=%b k=%b", $time, q, q_bar, j, k);
    end
endmodule