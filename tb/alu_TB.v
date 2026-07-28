`timescale 1ns/1ps

module alu_tb;

reg [7:0]A;
reg [7:0]B;
reg [2:0]opcode;

wire [7:0]result;
wire carry_flag;
wire overflow_flag;
wire negative_flag;
wire zero_flag;

alu dut(
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result),
    .carry_flag(carry_flag),
    .overflow_flag(overflow_flag),
    .negative_flag(negative_flag),
    .zero_flag(zero_flag)
);

initial begin
    $dumpfile("wave/alu.vcd");
    $dumpvars(0 , alu_tb);

    //case 1 : ADD 5 + 15 = 20 
    A = 8'b00000101;
    B = 8'b00001111;
    opcode = 3'b000;
    #10;

    // case 2 : ADD 127+1 =128 overflow = 1
    A = 8'b01111111;
    B = 8'b00000001;
    opcode = 3'b000;
    #10;

    //case 3 : SUB 15 - 10 = 5 
    A = 8'b00001111;
    B = 8'b00001010;
    opcode = 3'b001;
    #10;

    //case 4 : AND 
    A = 8'b00001111;
    B = 8'b00001010;
    opcode = 3'b010;
    #10;

    //case 5 : OR 
    A = 8'b00001111;
    B = 8'b00001010;
    opcode = 3'b011;
    #10;

    //case 6 : XOR 
    A = 8'b00001111;
    B = 8'b00001010;
    opcode = 3'b100;
    #10;

    //case 7 : NAND
    A = 8'b00001111;
    B = 8'b00001010;
    opcode = 3'b101;
    #10;

    //case 8 : Left shift  
    A = 8'b00001111;
    opcode = 3'b110;
    #10;

    //case 9 : Right shift  
    A = 8'b00001111;
    opcode = 3'b111;
    #10;

    $finish;
end 
endmodule