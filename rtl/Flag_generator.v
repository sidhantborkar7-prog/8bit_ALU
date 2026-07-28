`timescale 1ns/1ps

module flag_generator(
    input carry,
    input [7:0]result,
    input  overflow,
    output carry_flag,
    output overflow_flag,
    output negative_flag,
    output zero_flag 
);

assign zero_flag = (result == 8'b00000000);
assign negative_flag = result[7];
assign carry_flag    = carry;
assign overflow_flag = overflow;

endmodule