module mux(a, b, s, c, d, y);
    input [1:0] a, b, c, d, s;
    output reg [1:0] y; // it needs to be reg because y would be inside an always block

    always @(*) begin
        case (s)
            2'b00 : begin y <= a; end
            2'b01 : begin y <= b; end
            2'b10 : begin y <= c; end
            2'b11 : begin y <= d; end
            default : begin y <= 2'b00; end // if none match
        endcase
    end
endmodule