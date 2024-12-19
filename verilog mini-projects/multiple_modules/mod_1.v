module mod_1(a, b, c, d, out_1_1, out_2_1);
    input a, b, c, d;
    output out_1_1, out_2_1;

    assign out_1_1 = ((a | b) & c) | ~(a & b);
    assign out_2_1 = d;
endmodule;