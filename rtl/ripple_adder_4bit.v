`timescale 1ns/1ps 

module RCA_4bit(
    input [3:0]A,
    input [3:0]B,
    input cin,
    output [3:0]sum,
    output cout
);

wire c1;
wire c2;
wire c3;

FA FA1(
    .A(A[0]),
    .B(B[0]),
    .cin(cin),
    .sum(sum[0]),
    .cout(c1)
);

FA FA2(
    .A(A[1]),
    .B(B[1]),
    .cin(c1),
    .sum(sum[1]),
    .cout(c2)
);

FA FA3(
    .A(A[2]),
    .B(B[2]),
    .cin(c2),
    .sum(sum[2]),
    .cout(c3)
);

FA FA4(
    .A(A[3]),
    .B(B[3]),
    .cin(c3),
    .sum(sum[3]),
    .cout(cout)
);

endmodule