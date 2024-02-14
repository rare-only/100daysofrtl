`include "full_sub.v"

module full_sub_tb;
reg a,b,bi;
wire d,bo;
integer i;
full_sub fs1(a,b,bi,d,bo);
initial begin
    $dumpfile("output_full_sub.vcd");
    $dumpvars(0,full_sub_tb);
    $monitor("At time %0t: a=%b, b=%b, bi=%b, d =%b,bo= %b",$time,a,b,bi,d,bo);
    a = 0; b = 0; bi = 0;
    #10;
end

initial begin
    for(i=0;i<8;i=i+1)
    begin
        {a,b,bi}=i; 
        #5;
    end
    #10; $finish();
end
endmodule