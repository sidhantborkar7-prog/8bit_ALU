`timescale 1ns/1ps
module HA(
    input A,
    input B,
    output sum,
    output cout
);
    assign sum = A ^ B;
    assign cout = A & B;
endmodule
