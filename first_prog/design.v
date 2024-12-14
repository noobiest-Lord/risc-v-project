module gate(A, B, Y); // a function for "and" gate
// A and B are the inputs, Y is the output

    input A, B; // declaring input
    output Y; // declaring output

    // defining what gate it is
    // syntax:
    // function name (port list)
    //               (output, inputs)
    and (Y, A, B); // output comes first
endmodule

// create a testbench.v
// run iverilog -o (file name u want.vvp) testbench.v design.v
// vvp file name u want.vvp
// run surfer
