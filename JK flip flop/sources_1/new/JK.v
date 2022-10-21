`timescale 1ns / 1ps
module JK(q, j, k, clk, reset); 
output reg q; 
input j,k,clk,reset; 

always @(posedge clk) 
begin 
if(reset) 
    q = 1'b0; 
else 
    case({j,k}) 
        2'b00 : q <= q; 
        2'b01 : q = 1'b0; 
        2'b10 : q = 1'b1;
        2'b11 : q <= ~q; 
    endcase 
end
endmodule
