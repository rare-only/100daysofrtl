`include "comparator_2bit.v"

module comparator_2bit_tb;
    reg [1:0] a;
    reg [1:0] b;
    wire e, g, l;
  comparator_2bit cmp2bit (.a(a),.b(b),.e(e),.g(g),.l(l));

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, comparator_2bit_tb);
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
        $monitor("At time %0t: e = %b, g = %b, l = %b, a = %b, b = %b", $time, e, g, l, a, b);
    end
endmodule
