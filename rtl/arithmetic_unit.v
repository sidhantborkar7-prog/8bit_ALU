`timescale 1ns/1ps

module arithmetic_unit(
    input [7:0]A,
    input [7:0]B,
    input sub,
    output [7:0]result,
    output cout,
);

// internal wire 
wire [7:0]mod_b;

// changing the value of B 
//5-3 = 5 +(-3) and -3 = 2's compliment of 3 
// sub = 0 = addition 
//sub = 1 = subtraction 
//{8{sub}} as sub is 1 bit data this is to convert 1 bit data to 8 bit data 

assign mod_b = B ^ {8{sub}};

//using RCA_8bit

RCA_8bit u1(
    .A(A),
    .B(mod_b),
    .cin(sub),
    .sum(result),
    .cout(cout)  
);

endmodule