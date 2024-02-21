`include "mux_2x1.v"

 module mux_2x1_tb;
 reg [1:0]i;
reg s;
 wire y; 
 mux_2x1_ m2x1 (i,s,y);
 initial begin
     $dumpfile("output.vcd");
     $dumpvars(0,mux_2x1_tb);
     $monitor("At time %0t : i[0] =%b, i[1]=%b,s=%b,y=%b",$time,i[0],i[1],s,y);
 end
     initial
     begin
            s = 1'b1; i[0] = 1'b1; i[1] = 1'b0;
        #10 s = 1'b0; i[0] = 1'b1; i[1] = 1'b0;
        #10 
        $finish();
    end



 endmodule  