module Decoder (A, Y_0, Y_1, Y_2, Y_3, E);
    input [1:0] A;
    input E;

    output Y_0, Y_1, Y_2, Y_3;

    assign Y_0 = E & (A == 2'b00); // or u can write (~A[0] & ~A[1]) as each bit can be accessed from a list
    assign Y_1 = E & (A == 2'b01);
    assign Y_2 = E & (A == 2'b10);
    assign Y_3 = E & (A == 2'b11);

endmodule