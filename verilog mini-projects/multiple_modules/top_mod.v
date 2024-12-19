`include "mod_1.v"
`include "mod_2.v"

module top_mod(a, b, c, d, z, clk, rst);
    input a, b, c, d, clk, rst;
    output z;
    wire [1:0] wire_reg;
    reg [1:0] register;

    mod_1 mod_1(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .out_1_1(wire_reg[0]),
        .out_2_1(wire_reg[1])
    );

    mod_2 mod_2(
        .inp_1(register[0]),
        .inp_2(register[1]),
        .z(z)
    );

    always @(posedge clk) begin
    if (rst) 
        register <= 2'b00;
    
    else begin
        register[0] <= wire_reg[0];
        register[1] <= wire_reg[1];
        end
    end
endmodule;
