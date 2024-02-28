`include "parity_generator.v"

module parity_generator_tb;
    reg [3:0] i;
    wire even_parity;
    wire odd_parity;
    parity_generator pg(even_parity, odd_parity, i);

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, parity_generator_tb);
    end

    initial begin
    repeat (6) begin
        i = $random; #1;
    end
    end

    initial
        $monitor("At time %0t: even_parity = %b, odd_parity = %b, i[3:0] = %b", $time, even_parity, odd_parity, i); 
endmodule
