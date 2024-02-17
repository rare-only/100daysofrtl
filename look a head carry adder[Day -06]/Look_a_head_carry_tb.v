`include "Look_a_head_carry.v"

module Look_a_head_carry_tb;
reg [3:0]a,b;
reg ci;
wire [3:0] sum;
wire co;
Look_a_head_carry lahc (a,b,ci,sum,co);
initial begin
$dumpfile("output.vcd");
$dumpvars(0,Look_a_head_carry_tb);
$monitor("At time %0t: a=%b,b=%b,ci=%b,sum=%b,co=%b",$time,a,b,ci,sum,co);
end

initial begin
    a = 4'b1000;b = 4'b0011;ci = 1'b0;
#10 a = 4'b0001;b = 4'b1010;ci = 1'b0;
#10 a = 4'b0110;b = 4'b0110;ci = 1'b0;
#10 a = 4'b0111;b = 4'b1110;ci = 1'b0;
#10 a = 4'b1001;b = 4'b0110;ci = 1'b0;
#10 a = 4'b1001;b = 4'b0100;ci = 1'b0;
#10 a = 4'b1111;b = 4'b1110;ci = 1'b0;
#20 $finish();
end

endmodule