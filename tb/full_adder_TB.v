`timescale 1ns/1ps

module FA_TB;
reg A;
reg B;
reg cin;
wire sum;
wire cout;

FA dut(
    .A(A),
    .B(B),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin

    $dumpfile("wave/Full_adder.vcd");
    $dumpvars(0,FA_TB);

    A = 0 ; B = 0 ; cin = 0 ;
    #10;
    A = 0 ; B = 0 ; cin = 1 ;
    #10;
    A = 0 ; B = 1 ; cin = 0 ;
    #10;
    A = 0 ; B = 1 ; cin = 1 ;
    #10;
    A = 1 ; B = 0 ; cin = 0 ;
    #10;
    A = 1 ; B = 0 ; cin = 1 ;
    #10;
    A = 1 ; B = 1 ; cin = 0 ;
    #10;
    A = 1 ; B = 1 ; cin = 1 ;
    #10;
    $finish;
end 

endmodule
    