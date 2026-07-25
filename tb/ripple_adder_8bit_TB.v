`timescale 1ns/1ps

module RCA_8bit_TB;

reg [7:0] A;
reg [7:0] B;
reg cin;
wire [7:0]sum;
wire cout;

RCA_8bit dut(
    .A(A),
    .B(B),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    $dumpfile("wave/Ripple_adder_8bit.vcd");
    $dumpvars(0,RCA_8bit_TB);

    //initial
    A = 8'b00000000; 
    B = 8'b00000000;
    cin = 1'b0;
    #10;

    //carry
    A = 8'b00000111; 
    B = 8'b00000001;
    cin = 1'b0;
    #10;

    A = 8'b00000001; 
    B = 8'b00000001;
    cin = 1'b0;
    #10;

    //overflow
    A = 8'b11111111; 
    B = 8'b00000001;
    cin = 1'b0;
    #10;

    //cin = 1 
    A = 8'b01000101; 
    B = 8'b00001001;
    cin = 1'b1;
    #10;

    //final
    A = 8'b11111111; 
    B = 8'b11111111;
    cin = 1'b0;
    #10;

    $finish;
end 
endmodule