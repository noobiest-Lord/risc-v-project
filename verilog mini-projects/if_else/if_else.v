module if_else(i0, i1, sel, out);
    input i0, i1, sel;
    output [1:0] out;

    assign out = sel ? (i1 * i0) : (i0 + i1);
endmodule