`timescale 1ns / 1ps

module JK_tb();
reg j, k, clk, r; 
wire q; 

JK dut(.q(q), .j(j), .k(k), .clk(clk), .reset(r)); 
initial begin 
clk = 1'b0; 
forever #10 clk = ~clk; 
end 
initial begin 

r = 0;

j = 0; k = 0; 
#20 

j = 0; k = 1; 
#20

j = 1; k = 0; 
#20

j = 1; k = 1; 
#20

$stop; 
end 
endmodule
