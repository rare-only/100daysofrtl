module parallel_add(a,b,ci,sum,co);
  input a,b,ci;
  output sum,co;
  assign sum = a^b^ci;
  assign co = (a&b|b&ci|a&ci);
endmodule

module parallel_full_add(input [3:0] a, b,
  input ci, 
 output [3:0] sum, 
 output co);
  wire [2:0] w;

  parallel_add fa0 (a[0], b[0], ci, sum[0], w[0]);
  parallel_add fa1 (a[1], b[1], w[0], sum[1], w[1]);
  parallel_add fa2 (a[2], b[2], w[1], sum[2], w[2]);
  parallel_add fa3 (a[3], b[3], w[2], sum[3], co);
endmodule