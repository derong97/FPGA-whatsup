/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shift_10 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] o,
    output reg [2:0] error
  );
  
  
  
  always @* begin
    o = 1'h0;
    error = 1'h0;
    
    case (alufn[0+1-:2])
      2'h0: begin
        o = a << b[0+3-:4];
      end
      2'h1: begin
        o = a >> b[0+3-:4];
      end
      2'h3: begin
        o = $signed(a) >>> b[0+3-:4];
      end
      default: begin
        error = 3'h1;
      end
    endcase
  end
endmodule
