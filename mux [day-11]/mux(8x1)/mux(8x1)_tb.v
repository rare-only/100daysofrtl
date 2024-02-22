`include "mux(8x1).v"

module mux_8x1_tb;
reg [7:0] i;
reg [2:0] s;
wire y;
mux_8x1 m8x1 (i,s,y);
initial begin
    $dumpfile("output.vcd");
    $dumpvars(0,mux_8x1_tb);
     $monitor("At time %0t: i[0]=%b, i[1]=%b, i[2]=%b, i[3]=%b, i[4]=%b, i[5]=%b, i[6]=%b, i[7]=%b, s[0]=%b, s[1]=%b, s[2]=%b, y=%b", $time, i[0], i[1], i[2], i[3], i[4], i[5], i[6], i[7], s[0], s[1], s[2], y);
end
   initial begin 
        repeat (6) begin
           s = $random;
            i = $random;
            #10;   
      end
   end

endmodule