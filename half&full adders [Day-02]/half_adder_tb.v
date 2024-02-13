`include "half_adder.v"

module half_adder_tb;
reg a,b;
wire sum,carry;
integer i;
half_adder ha1(a,b,sum,carry);
initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0,half_adder_tb);
       a = 0; b = 0; #10;
end

initial begin
  for(i=0;i<4;i=i+1)
  begin
    {a,b}=i; #10;
  end
  $finish;
end
initial begin
$monitor($time,"sum=%b,carry=%b,a=%b,b=%b", sum,carry,a,b);
end
endmodule