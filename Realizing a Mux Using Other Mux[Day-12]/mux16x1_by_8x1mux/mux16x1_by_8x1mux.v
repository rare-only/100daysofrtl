module mux_2x1 (input [1:0] m, input s, output  reg y);
always @(*) begin
    case(s)
    1'b0 : y = m[0];
    1'b1 : y = m[1];
    endcase
end
endmodule

module mux_8x1 (input[7:0] n , input [2:0] s ,output reg y);
 always @(*) begin
    case(s)
    3'b000 : y  = n [0];
    3'b001 : y  = n [1];
    3'b010 : y  = n [2];
    3'b011 : y  = n [3];
    3'b100 : y  = n [4];
    3'b101 : y  = n [5];
    3'b110 : y  = n [6];
    3'b111 : y  = n [7];
    endcase
 end
endmodule

module mux_16x1 (input [15:0] i, input [3:0] s, output y);
wire [1:0] w;
mux_8x1 m1 (i[7:0],s[2:0],w[0]);
mux_8x1 m2 (i[15:8],s[2:0],w[1]);
mux_2x1 m3 (w[1:0],s[3],y);
endmodule