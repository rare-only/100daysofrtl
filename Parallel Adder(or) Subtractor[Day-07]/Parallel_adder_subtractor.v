module Parallel_adder_subtractor (a,b,cin,sum,co);
   input a,b,cin;
   output sum,co;
   assign sum = a^b^cin;
   assign co = (a&b)|(b&cin)|(a&cin);
endmodule

module parallel_add_sub(
    input [3:0] a,b,
    input m,
    output [3:0] sum,
    output co);
    wire [3:0]w;
    Parallel_adder_subtractor fa1(a[0],m^b[0],m,sum[0],w[0]);
    Parallel_adder_subtractor fa2(a[1],m^b[1],w[0],sum[1],w[1]);
    Parallel_adder_subtractor fa3(a[2],m^b[2],w[1],sum[2],w[2]);
    Parallel_adder_subtractor fa4(a[3],m^b[3],w[2],sum[3],co);

endmodule