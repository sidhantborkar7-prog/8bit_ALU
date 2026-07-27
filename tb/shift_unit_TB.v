`timescale 1ns/1ps

module shift_unit_tb ;
reg [7:0]A;
reg shift_op;
wire [7:0]result;
wire shift_carry;

shift_unit dut(
    .A(A),
    .shift_op(shift_op),
    .result(result),
    .shift_carry(shift_carry)
);

initial begin
    $dumpfile("wave/shift_unit.vcd");
    $dumpvars(0 , shift_unit_tb);

    //case 1 left shift
    A = 8'b00000111;
    shift_op =1'b0;
    #10;

    //case 2 Right shift 
    A = 8'b00000111;
    shift_op =1'b1;
    #10;

    $finish;

end
endmodule