module mux_2x1 (input[1:0] m,input s,  output reg y);
always @(*) begin
    case(s)
    1'b0 : y = m[0];
    1'b1 : y = m[1];
    endcase
end
endmodule

module mux_4x1 (input[3:0] n, input[1:0] s, output reg y);
always @(*) begin
    case(s)
    2'b00 : y = n [0];
    2'b01 : y = n [1];
    2'b10 : y = n [2];
    2'b11 : y = n [3];
    endcase
end
endmodule

module mux_8x1 (input[7:0] i, input[2:0] s, output y);
wire [1:0] w;
mux_4x1 m1 (i[3:0], s[1:0],w[0]);
mux_4x1 m2 (i[7:4], s[1:0],w[1]);
mux_2x1 m3 (w[1:0],s[2],y);
endmodule