`include "parity.v"

module parity_tb;
    reg [7:0] d;
    wire [2:0] y;
    integer i;
    parity parity_en(y, d); 

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, parity_tb);
   
        d=8'b00000001; #2;
        for (i = 0; i < 7; i = i + 1) 
            begin
            d =  d << 1; #1;
            end
            $finish();
        // repeat (5) 
        // begin
        //     d=$random;#1;
        // end
    end

    initial $monitor("At time %0t : y = %b, d = %b", $time, y, d);
endmodule