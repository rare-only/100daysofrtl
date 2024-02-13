`include "full_adder.v"

module full_adder_tb;
    reg a, b, ci;
    wire sum, co;
    integer i;
    
    full_adder fa1(a, b, ci, sum, co);

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, full_adder_tb);
        
        // Initialize input values
        a = 0; b = 0; ci = 0;
    end

    initial begin
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, ci} = i; #10;

        end
        $finish;
    end

    initial begin
        $monitor($time, "sum=%b, co=%b, a=%b, b=%b, ci=%b", sum, co, a, b, ci);
    end
endmodule
