module mux_16x1 (i,s,y);
input [15:0] i;
input [3:0] s;
output  reg y;
always @(*) begin
    case(s)
    4'b0000 :y = i[0];
    4'b0001 :y = i[01];
    4'b0010 :y = i[2];
    4'b0011 :y = i[3];
    4'b0100 :y = i[4];
    4'b0101 :y = i[5];
    4'b0110 :y = i[6];
    4'b0111 :y = i[7];
    4'b1000 :y = i[8];
    4'b1001 :y = i[9];
    4'b1010 :y = i[10];
    4'b1011 :y = i[11];
    4'b1100 :y = i[12];
    4'b1101 :y = i[13];
    4'b1110 :y = i[14];
    4'b1111 :y = i[15];
    endcase
end
    
endmodule
