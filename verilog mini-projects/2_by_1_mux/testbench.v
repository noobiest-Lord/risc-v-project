module tb();

    reg [1:0] A, B; // because A, B has been declared as 2 bits
    reg S;

    wire [1:0] Y;

    mux dut(
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)   
    );

    initial begin
        A <= 2'b01; // because A is 2 bit and i want 1
        B <= 2'b11; // this is 3
        #100;

        S <= 1'b0; // in running through both s to check what value will print out
        #100;
        S <= 1'b1; 
        #100;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end
endmodule