`include "half_sub.v"
module half_sub_tb;
reg a,b;
wire diff,borrow;
integer i;
half_sub has1(a,b,diff,borrow);
initial begin
    $dumpfile("output.vcd");
    $dumpvars(0,half_sub_tb);
    $monitor("At time %0t:a=%b,b=%b,diff=%b,borrow=%b", $time,a,b,diff,borrow);
    a = 0; b = 0; #10;

end

initial begin
for(i=0;i<4;i=i+1)
begin 
    {a,b}=i; #20;
end  
#30 $finish();  
end 
endmodule