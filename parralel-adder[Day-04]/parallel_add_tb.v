`include "parallel_add.v"

module parallel_add_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg ci;
    wire [3:0] sum;
    wire co;
    
    parallel_full_add pfa(a, b, ci, sum, co); 
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, parallel_add_tb);
       
    end
    
    initial begin
        $monitor( " At time %0t:  a=%b, b=%b, ci=%b, sum=%b ,co=%b " , $time, a, b, ci,sum,co);
    end 
    initial begin
        
    a =1010; b = 0111; ci = 1; #10;
    a = 1; b = 1; ci = 1; #10;
    a = 0; b = 0; ci = 1; #10;
    a = 0; b = 10; ci = 0; #10;
    $finish();
    end

endmodule
