module decoder(Y0, Y1, Y2, Y3, A);
    input Y0, Y1, Y2, Y3;
    output[1:0] A;

    // my code
    // assign A[0] = (Y1 == 1'b1 || Y3 == 1'b1) ? 1 : 0;
    // assign A[1] = (Y2 == 1'b1 || Y3 == 1'b1) ? 1 : 0;

    assign A[0] = Y1 | Y3;
    assign A[1] = Y2 | Y3;
endmodule