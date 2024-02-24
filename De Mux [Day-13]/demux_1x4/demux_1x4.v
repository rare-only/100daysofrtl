module demux_1x4_ (input x, input [1:0] s, output reg [3:0] y);
    always @(*) begin
        y = 4'b0;  // to make the y as 0000 before loop for better operation
        case(s)
        2'b00 : y[0] = x ;
        2'b01 : y[1] = x ;
        2'b10 : y[2] = x ;
        2'b11 : y[3] = x ;
        endcase
    end
endmodule