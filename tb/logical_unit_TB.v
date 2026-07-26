`timescale 1ns/1ps

module logical_unit_tb;

//drived by the TB
reg [7:0]A;
reg [7:0]B;
reg [1:0]opcode;

//drived by the logical unit 
wire [7:0]result;

logical_unit dut(
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result)
);

initial begin
    $dumpfile("wave/logical_unit.vcd");
    $dumpvars(0,logical_unit_tb);

    //case 1 AND operation 
    A = 8'b00000101; 
    B = 8'b11110110;
    opcode = 2'b00;
    #10;

    //case 2 OR operation 
    A = 8'b00000101;  
    B = 8'b11110110;
    opcode = 2'b01;
    #10;

    //case 3 XOR operation 
    A = 8'b00000101;  
    B = 8'b11110110;
    opcode = 2'b10;
    #10;

    //case 4 NAND operation 
    A = 8'b00000101;  
    B = 8'b11110110;
    opcode = 2'b11;
    #10;

    $finish;

end 
endmodule

    