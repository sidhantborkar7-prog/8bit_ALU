`timescale 1ns/1ps 

module alu(
    input [7:0]A,
    input [7:0]B,
    input [2:0]opcode,

    output reg [7:0]result,
    output reg carry_flag,
    output reg overflow_flag,
    output zero_flag,
    output negative_flag
);

//arithmatic unit  
wire [7:0]arithmetic_result;
wire arithmetic_cout;
wire arithmetic_overflow;
wire sub;

assign sub = (opcode == 3'b001);

//logical unit 
wire [7:0]logical_result;
reg [1:0]logical_op;

always @(*) begin
    case(opcode)
        3'b010 : logical_op = 2'b00; //AND 
        3'b011 : logical_op = 2'b01; //OR
        3'b100 : logical_op = 2'b10; //XOR
        3'b101 : logical_op = 2'b11; //NAND
        default : logical_op = 2'b00; 
    endcase
end 

//shift unit 
wire [7:0]shift_result;
wire shift_carry;
wire shift_op;

assign shift_op = opcode[0];

arithmetic_unit u1(
    .A(A),
    .B(B),
    .sub(sub),
    .result(arithmetic_result),
    .cout(arithmetic_cout),
    .overflow(arithmetic_overflow)
);

logical_unit u2(
    .A(A),
    .B(B),
    .opcode(logical_op),
    .result(logical_result)
);

shift_unit u3(
    .A(A),
    .shift_op(shift_op),
    .result(shift_result),
    .shift_carry(shift_carry)
);

always @(*) begin
    case(opcode)
        //ADD
        3'b000 : begin
            result = arithmetic_result;
            carry_flag = arithmetic_cout;
            overflow_flag = arithmetic_overflow;
        end 
        
        //SUB
        3'b001 : begin
            result = arithmetic_result;
            carry_flag = arithmetic_cout;
            overflow_flag = arithmetic_overflow;
        end

        //AND
        3'b010 : begin
            result = logical_result;
            carry_flag = 1'b0;
            overflow_flag = 1'b0;
        end

        //OR
        3'b011 : begin
            result = logical_result;
            carry_flag = 1'b0;
            overflow_flag = 1'b0;
        end

        //XOR
        3'b100 : begin
            result = logical_result;
            carry_flag = 1'b0;
            overflow_flag = 1'b0;
        end

        //NAND
        3'b101 : begin
            result = logical_result;
            carry_flag = 1'b0;
            overflow_flag = 1'b0;
        end

        //Left shift 
        3'b110 : begin
            result = shift_result;
            carry_flag = shift_carry;
            overflow_flag = 1'b0;
        end

        //Right shift 
        3'b111 : begin
            result = shift_result;
            carry_flag = shift_carry;
            overflow_flag = 1'b0;
        end

        //default case 
        default : begin
            result = 8'b00000000;
            carry_flag = 1'b0;
            overflow_flag = 1'b0;
        end
    endcase
end 

assign zero_flag = (result == 8'b00000000);
assign negative_flag = result[7];

endmodule
