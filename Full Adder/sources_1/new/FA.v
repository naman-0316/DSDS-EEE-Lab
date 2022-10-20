`timescale 1ns / 1ps

module FA(sum, co, a, b, ci); 

output co, sum; 
input a, b, ci; 
wire w1, w2, w3; 

HA m1(w1, w2, a, b); 
HA m2(sum, w3, w1, ci); 

assign co = w2 || w3;

endmodule
