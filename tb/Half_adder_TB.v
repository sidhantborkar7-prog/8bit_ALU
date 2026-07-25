`timescale 1ns/1ps

module HA_tb;
    reg A;
    reg B;
    wire sum;
    wire cout;

    HA dut(
        .A(A),
        .B(B),
        .sum(sum),
        .cout(cout)
    ); 

    initial begin 
        $dumpfile("wave/half_adder.vcd");
        $dumpvars(0 , HA_tb);

        A = 0; B = 0 ;
        #10;
        A = 0; B = 1 ;
        #10;
        A = 1; B = 0 ;
        #10;
        A = 1; B = 1 ;
        #10;

        $finish;
    end 
endmodule

