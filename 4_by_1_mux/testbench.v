module tb();
    // Inputs
    reg [1:0] a, b, c, d, s;
    // Output
    wire [1:0] y;
    
    // Instantiate the mux
    mux dut(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .s(s),
        .y(y)
    );

    // For waveform generation
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

    // Test stimulus
    initial begin
         // Initialize inputs
        a = 2'b00; b = 2'b01; c = 2'b10; d = 2'b11;
        #10;
        // Test case 1: select a (s = 00)
        s = 2'b00;
        #10;
        
        // Test case 2: select b (s = 01)
        s = 2'b01;
        #10;
        
        // Test case 3: select c (s = 10)
        s = 2'b10;
        #10;
        
        // Test case 4: select d (s = 11)
        s = 2'b11;
        #10;
        
        // Change input values and repeat tests
        a = 2'b11; b = 2'b10; c = 2'b01; d = 2'b00;
    
        // Test case 5: select a (s = 00)
        s = 2'b00;
        #10;
        
        // Test case 6: select b (s = 01)
        s = 2'b01;
        #10;
        
        // Test case 7: select c (s = 10)
        s = 2'b10;
        #10;
        
        // Test case 8: select d (s = 11)
        s = 2'b11;
        #10;

        $finish;
    end
endmodule