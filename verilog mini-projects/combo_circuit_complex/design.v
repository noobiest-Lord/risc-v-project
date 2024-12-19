module complex (A, B, C, Q);
    input A, B, C;
    output Q;
    // we can create wire variables as a storage (internal variable)
    assign Q = C & ~ (A & B) & ~ (A | B);
endmodule