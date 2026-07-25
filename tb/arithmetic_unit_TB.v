`timescale 1ns/1ps

module arithmetic_unit_TB ;

reg [7:0]A;
reg [7:0]B;
reg sub;
wire [7:0]result;
wire cout;

arithmetic_unit dut(
    .A(A),
    .B(B),
    .sub(sub),
    .result(result),
    .cout(cout)
);

initial begin
    $dumpfile("wave/arithmetic_unit.vcd");
    $dumpvars(0 , arithmetic_unit_TB);

    //case 1 : 10 + 5
    A = 8'b00001010;
    B = 8'b00000101;
    sub = 1'b0;
    #10;

    //case 2 : 25 + 15 
    A = 8'b00011001;
    B = 8'b00001111;
    sub = 1'b0;
    #10;

    //case 3 : 10 - 5 = 5 
    A = 8'b00001010;
    B = 8'b00000101;
    sub = 1'b1;
    #10;

    //case 4 : 15 - 15 = 0 
    A = 8'b00001111;
    B = 8'b00001111;
    sub = 1'b1;
    #10;

    //case 5 : 5 - 10 = - 5 =  2's compliment of 5  
    A = 8'b00000101;
    B = 8'b00001010;
    sub = 1'b1;
    #10;

    $finish;
end 

endmodule
