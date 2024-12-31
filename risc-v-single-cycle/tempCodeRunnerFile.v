    // flags
    assign overflow = ~(A[31] ^ B[31] ^ alu_control[0]) & (A[31] ^ sum_mux[31]) & ~(alu_control[1]);
    assign carry = ~(alu_control[1]) & c_out;
    assign negative = result[31];
    // it checks if the answer is 0.
    // example: if a = 1101, ~a = 0010, and it results in 0,
    // if a = 0000, ~a = 1111, and it results in 1.
    // &a checks on itself, if all the digits are the same or not
    assign zero = &(~result);
