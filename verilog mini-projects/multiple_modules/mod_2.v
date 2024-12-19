module mod_2(inp_1, inp_2, z);
    input inp_1, inp_2;
    output z;

    assign z = ~((inp_1 || inp_2) & (inp_1 & inp_2));
endmodule;