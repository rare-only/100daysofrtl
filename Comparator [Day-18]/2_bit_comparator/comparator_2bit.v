module comparator_2bit(input [1:0] a,b, output  reg e,g,l);
    always @(*) begin
        
        // if (a==b)
        // begin
        //     e=1;
        //     g=0;
        //     l=0;
        // end 
        // else  if (a>b) begin
        //     e=0;
        //     g=1;
        //     l=0;
        // end
        // else  begin
        //     e=0;
        //     g=0;
        //     l=1;
        // end 
        e=(a==b)? 1'b1:1'b0;
        g=(a>b)? 1'b1:1'b0;
        l=(a<b)? 1'b1:1'b0;
    end

endmodule