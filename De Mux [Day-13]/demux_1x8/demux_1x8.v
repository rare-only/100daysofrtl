module demux_1x8_ ( input x, input [2:0] s, output reg [7:0] y);
    always @(*) begin
        y = 8'b0;
        case(s)
        3'b000 : y[0] = x;
        3'b001 : y[1] = x;
        3'b010 : y[2] = x;
        3'b011 : y[3] = x;
        3'b100 : y[4] = x;
        3'b101 : y[5] = x;
        3'b110 : y[6] = x;
        3'b111 : y[7] = x;
        endcase
    end
endmodule