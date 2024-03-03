module srflipflop (output reg q, output q_bar,input clk, r, s);
    always@(posedge clk) begin // for synchronous reset
      case({s,r})
        2'b00: q <= q;    // No change
        2'b01: q <= 1'b0; // reset
        2'b10: q <= 1'b1; // set
        2'b11: q <= 1'bx; // Invalid inputs
      endcase
    end
  assign q_bar = ~q;
endmodule