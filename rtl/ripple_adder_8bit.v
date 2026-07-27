`timescale 1ns/1ps

module RCA_8bit(
    input [7:0]A,
    input [7:0]B,
    input cin,
    output [7:0] sum,
    output cout,
    //for overflow 
    output carry_into_msb
);

// internal signal 
wire c1;

// 1st unit 
RCA_4bit u1_RCA_4bit(
    .A(A[3:0]),
    .B(B[3:0]),
    .cin(cin),
    .sum(sum[3:0]),
    .cout(c1)
);

//2nd unit 

RCA_4bit u2_RCA_4bit(
    .A(A[7:4]),
    .B(B[7:4]),
    .cin(c1),
    .sum(sum[7:4]),
    .cout(cout),
    .carry_into_last_bit(carry_into_msb)
);
endmodule