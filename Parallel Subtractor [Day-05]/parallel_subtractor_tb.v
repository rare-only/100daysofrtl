`include "parallel_subtractor.v"
module parallel_subtractor_tb;
reg[3:0]a;
reg [3:0]b;
reg ci;
wire [3:0]d;
wire co;
parallel_full_subtractor ps1(a,b,ci,d,co);
initial 
begin
$dumpfile("output.vcd");
$dumpvars(0,parallel_subtractor_tb);
$monitor("At time %0t: a=%b,b=%b,ci=%b,d=%0b,co=%b", $time,a,b,ci,d,co);
end
initial
begin
     a = 4'b0110; b = 4'b1001; ci = 1'b1;     #10;   
     a = 4'b0111; b = 4'b1110; ci = 1'b1;      #10; 
     a = 4'b1000; b = 4'b0100; ci = 1'b1;      #10; 
     a = 4'b1010; b = 4'b1000; ci = 1'b1;      #10; 
    $finish();
    end
endmodule
