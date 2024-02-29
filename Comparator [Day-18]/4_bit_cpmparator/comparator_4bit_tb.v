`include "comparator_4bit.v"

module comparator_4bit_tb;
    reg [3:0] a;
    reg [3:0] b;
    wire E,G,L;
  comparator_4bit cmp4bit (.a(a),.b(b),.E(E),.G(G),.L(L));

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, comparator_4bit_tb);
    end
    initial begin 
        a = 2'b00;
        b = 2'b00;
        repeat (5) begin
            #1;
            a = $random;
            b = $random;
        end
    end

   initial begin
        $monitor("At time %0t: E = %b, G = %b, L = %b, a = %b, b = %b", $time, E, G, L, a, b);
    end
endmodule
