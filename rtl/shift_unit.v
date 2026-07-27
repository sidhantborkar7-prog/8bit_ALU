`timescale 1ns/1ps 

module shift_unit(
    //input 
    input [7:0]A,
    input shift_op, //can be change for phase 2

    //output 
    output reg [7:0]result,
    output reg shift_carry
);

always @(*) begin
    case(shift_op)
        //left shift
        1'b0 : begin 
                result[7] = A[6];
                result[6] = A[5];
                result[5] = A[4];
                result[4] = A[3];
                result[3] = A[2];
                result[2] = A[1];
                result[1] = A[0];
                result[0] = 1'b0;
                shift_carry = A[7];
        end 
        //Right shift 
        1'b1 : begin                
                //or we can simply write result      = A << 1;   
                //                       shift_carry = A[7];       
                result[7] = 1'b0;
                result[6] = A[7];
                result[5] = A[6];
                result[4] = A[5];
                result[3] = A[4];
                result[2] = A[3];
                result[1] = A[2];
                result[0] = A[1];
                shift_carry = A[0];
        end 
        //default condition 
        default : begin 
                    result = 8'b00000000;
                    shift_carry = 1'b0;
        end 

    endcase
end
endmodule