`include "bin_gray.v"

module bin_gray_tb;
reg [3:0]bin;
wire [3:0] gray;
bin_gray b_g(bin,gray);
initial begin
    $dumpfile("output.vcd");
    $dumpvars(0,bin_gray_tb);
    $monitor("At time %0t: bin=%b, gray=%b", $time, bin, gray);
end 
initial begin 
bin = 4'b0000; #10;
bin = 4'b0001; #10;
bin = 4'b0010; #10;
bin = 4'b0011; #10;
$finish();
end
endmodule    