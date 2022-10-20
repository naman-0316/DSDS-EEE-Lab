`timescale 1ns / 1ps

module HA_tb();
reg a, b; 
wire sum, carry; 

HA dut(.x(a), .y(b), .s(sum), .c(carry)); 
initial begin 

a = 0; b = 0; 
#10 
a = 0; b = 1; 
#10
a = 1; b = 0; 
#10
a = 1; b = 1; 
#10 

$stop;
end 
endmodule
