module parity_generator(output even_parity, output odd_parity, input [3:0] i);
    assign even_parity = (i[0] ^ i[1] ^ i[2] ^ i[3]);
    assign odd_parity = ~(i[0] ^ i[1] ^ i[2] ^ i[3]);
endmodule
