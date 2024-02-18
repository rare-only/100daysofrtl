`include "Parallel_adder_subtractor.v"

module parallel_add_sub_tb;
reg [3:0]a,b;
reg m;
wire [3:0] sum;
wire co;
parallel_add_sub pas(a,b,m,sum,co);
initial begin
    $dumpfile ("output.vcd");
    $dumpvars (0,parallel_add_sub_tb);
   $monitor("At time %0t: a=%b, b=%b, m=%b, sum=%b, co=%b", $time, a, b, m, sum, co);
end
initial begin
    a=4'b0001;b=4'b1010; m=1'b0; #10;
    a=4'b1111;b=4'b1010; m=1'b1; #10;
    a=4'b1010;b=4'b0100; m=1'b0; #10;
    a=4'b1010;b=4'b1110; m=1'b0; #10;
    #20 $finish();
end
endmodule