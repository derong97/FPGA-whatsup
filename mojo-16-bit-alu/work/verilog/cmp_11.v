/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module cmp_11 (
    input [5:0] alufn,
    input z,
    input v,
    input n,
    output reg o,
    output reg [2:0] error
  );
  
  
  
  reg lsb;
  
  always @* begin
    lsb = 1'h0;
    error = 1'h0;
    
    case (alufn[1+1-:2])
      2'h1: begin
        lsb = z;
      end
      2'h2: begin
        lsb = n ^ v;
      end
      2'h3: begin
        lsb = z | (n ^ v);
      end
      default: begin
        error = 3'h2;
      end
    endcase
    o = {15'h0000, lsb};
  end
endmodule
