module alu(A, B, alu_control, result, overflow, carry, negative, zero);
    input [31:0] A, B; // 32-bit input
    input [2:0] alu_control;
    output [31:0] result;
    output overflow, carry, negative, zero;

    wire [31:0] b_mux;
    wire [31:0] sum_mux;
    wire c_out;
    wire zero_ext;
    
    assign b_mux = (alu_control[0] == 1'b1) ? ~B : B;
    // we use concatenation, as if the answer is more than 32 bits, 
    // the remaining digts will carry over to c_out
    assign {c_out, sum_mux} = A + b_mux + alu_control[0]; 

    assign zero_ext = {31{1'b0}, sum[31]};
    always @(*) begin
        case (alu_control)
            3'b011: result = A | B;
            3'b010: result = A & B;
            3'b101: result = zero_ext;
            default: result = sum_mux; 
        endcase
    end

    // flags
    assign overflow = ~(A[31] ^ B[31] ^ alu_control[0]) & (A[31] ^ sum_mux[31]) & ~(alu_control[1]);
    assign carry = ~(alu_control[1]) & c_out;
    assign negative = result[31];
    // it checks if the answer is 0.
    // example: if a = 1101, ~a = 0010, and it results in 0,
    // if a = 0000, ~a = 1111, and it results in 1.
    // &a checks on itself, if all the digits are the same or not
    assign zero = &(~result);

endmodule