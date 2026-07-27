`timescale 1ns/1ps

module RCA_4bit_TB;

reg [3:0]A;
reg [3:0]B;
reg cin;
wire [3:0]sum;
wire cout;
wire carry_into_last_bit;  

RCA_4bit dut(
    .A(A),
    .B(B),
    .cin(cin),
    .sum(sum),
    .cout(cout),
    .carry_into_last_bit(carry_into_last_bit)
);

initial begin
    $dumpfile("wave/Ripple_adder_4bit.vcd");
    $dumpvars(0,RCA_4bit_TB);
    //initial 
    A = 4'b0000 ; B = 4'b0000; cin = 0; 
    #10;
    // carry 
    A = 4'b0011; B = 4'b0101; cin = 0;
    #10;

    A = 4'b0001; B = 4'b0001; cin = 0;
    #10;

    //overflow 
    A = 4'b1111; B = 4'b0001; cin = 0;
    #10;

    //cin = 1 
    A = 4'b1001; B = 4'b0110; cin = 1;
    #10;

    // final stage 
    A = 4'b1111; B = 4'b1111; cin = 0;
    #10;
    
    $finish;
end 
endmodule




