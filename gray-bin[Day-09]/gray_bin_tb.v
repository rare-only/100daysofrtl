`include "gray_bin.v"

module gray_bin_tb;
reg [3:0] gray;
wire [3:0] bin;
gray_bin g_b (gray,bin);
initial 
    begin
        $dumpfile("out.vcd");
        $dumpvars(0,gray_bin_tb);
        $monitor("At time %0t: gray = %b, bin=%b",$time,gray,bin);
end
initial begin
gray = 4'b0101; #10;
gray = 4'b1010; #10;
gray = 4'b0011; #10;
gray = 4'b1001; #10;
$finish();
end
endmodule