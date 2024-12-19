// y will be equal depending on what s is. if s = 1, y = b; s = 0, y = a

module mux (A, B, S, Y);
    // A and B are 2 bits ([max bit: min bit])
    input[1:0] A, B;

    input S;
    output[1:0] Y;

    // Ternary Operator (if else)
    // (condition) ? first_value (True) : second_value (False)
    // 1'b0 because S is one bit
    assign Y = (S == 1'b0) ? A : B;
endmodule