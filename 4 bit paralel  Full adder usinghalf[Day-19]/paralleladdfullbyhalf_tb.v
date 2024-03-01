`include "paralleladdfullbyhalf.v"

module paralleladdfullbyhalf_tb;
    reg  [3:0] A, B;
    reg CIN;
    wire  [3:0] SUM;
    wire COUT;
    integer i;
    paralleladdfullbyhalf fa1(SUM, COUT,A,B, CIN);
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, paralleladdfullbyhalf_tb);
        A = 4'b0000; B = 4'b0000; CIN = 1'b1;
        for (i = 0; i < 8; i = i + 1) begin
            A = i[2:0];
            B = i[2:0];
            #10;
        end
        $finish;
    end
    initial begin
        $monitor($time, "SUM=%b, COUT=%b, A=%b, B=%b, CIN=%b", SUM, COUT, A, B, CIN);
    end
endmodule
