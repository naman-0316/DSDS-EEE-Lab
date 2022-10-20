`timescale 1ns / 1ps

module FA_tb(); 

reg x, y, ci; 
wire s, co; 

FA dut(.sum(s), .co(co), .a(x), .b(y), .ci(ci)); 
initial begin 
    x = 0; y = 0; ci = 0; 
    #10
    x = 0; y = 0; ci = 1; 
    #10
    x = 0; y = 1; ci = 0; 
    #10
    x = 0; y = 1; ci = 1; 
    #10
    x = 1; y = 0; ci = 0; 
    #10
    x = 1; y = 0; ci = 1; 
    #10
    x = 1; y = 1; ci = 0; 
    #10
    x = 1; y = 1; ci = 1; 
    #10
$stop;
end
endmodule
