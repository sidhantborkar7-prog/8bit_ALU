`timescale 1ns/1ps

module FA(
    input A,
    input B,
    input cin,
    output sum,
    output cout
);

wire S1;
wire C1;
wire C2;

HA ha1 (
    .A(A),
    .B(B),
    .sum(S1),
    .cout(C1)
);

HA ha2(
    .A(S1),
    .B(cin),
    .sum(sum),
    .cout(C2)
);

or(cout , C1 , C2);

endmodule