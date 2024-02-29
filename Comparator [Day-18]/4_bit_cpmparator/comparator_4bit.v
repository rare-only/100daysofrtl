module comparator_4bit(output reg E,G,L, input [3:0] a,b);
    always @(*) begin
        E=(a==b)? 1'b1:1'b0;
        G=(a>b)? 1'b1:1'b0;
        L=(a<b)? 1'b1:1'b0;
        
    end

endmodule