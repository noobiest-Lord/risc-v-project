module tb();
    
    // declare variables
    reg A, B; // reg = input
    wire Y; // wire = output

    // call design
    // syntax:
    // module_name user_name signals
    gate dut ( // call signals using ."var_name"
        .A(A), // A in bracket is different from .A() 
        .B(B),
        .Y(Y)
    );

    // Provide Stimulus: like a do while loop
    initial begin // do
      A <= 1'b0; // 1' = saying it is one bit; b = binary number system; 0 = value we want to input
      B <= 1'b0;
      // to visualize, add delay, # means delay for how much time
      #100;
    

      A <= 1'b0;
      B <= 1'b1;
      #100;

      A <= 1'b1;
      B <= 1'b0;
      #100;

      A <= 1'b1;
      B <= 1'b1;
      #100;
    end // while

    initial begin
        $dumpfile("dump.vcd"); // creates the file to visualize
        $dumpvars(0); // add all the variables into dump.vcd
    end
endmodule