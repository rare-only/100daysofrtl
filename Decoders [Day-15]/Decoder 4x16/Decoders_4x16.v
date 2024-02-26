module Decoders_4x16(output reg [15:0] y, input [3:0] a, input en);
    always @(*) begin
        if(en)
        begin
            y=8'b0;
            case(a)
            4'b0000 : y[0]  = 1'b1;
            4'b0001 : y[1]  = 1'b1;
            4'b0010 : y[2]  = 1'b1;
            4'b0011 : y[3]  = 1'b1;
            4'b0100 : y[4]  = 1'b1;
            4'b0101 : y[5]  = 1'b1;
            4'b0110 : y[6]  = 1'b1;
            4'b0111 : y[7]  = 1'b1;
            4'b1000 : y[8]  = 1'b1;
            4'b1001 : y[9]  = 1'b1;
            4'b1010 : y[10] = 1'b1;
            4'b1011 : y[11] = 1'b1;
            4'b1100 : y[12] = 1'b1;
            4'b1101 : y[13] = 1'b1;
            4'b1110 : y[14] = 1'b1;
            4'b1111 : y[15] = 1'b1;
            endcase
        end
        else
        y=8'b0;
    end

endmodule