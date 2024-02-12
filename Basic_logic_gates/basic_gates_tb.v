`include "basic_gates.v"
module basic_gates_tb;
reg x,y;
wire a,b,c,d,e,f,g;

basic_gates alg1(a,b,c,d,e,f,g,x,y);
initial begin
    $dumpfile("basic_gates.vcd");
    $dumpvars(0,basic_gates_tb);
  x=0;y=0; #10;
  x=0;y=1; #10;
  x=1;y=0; #10;
  x=1;y=1; #10;
    $finish;
end
initial
$monitor($time,"a=%b,b=%b,c=%b,d=%b,e=%b,f=%b,g=%b,x=%b,y=%b",a,b,c,d,e,f,g,x,y);
 endmodule