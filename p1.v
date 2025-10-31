module mux4_1(
    input [15:0] R0, R1, R2, R3,  // 4 registers
    input [1:0] sel,              
    output reg [15:0] BusOut
);
    

always @(*) begin
    case (sel)
        2'b00: BusOut = R0;
        2'b01: BusOut = R1;
        2'b10: BusOut = R2;
        2'b11: BusOut = R3;
        default: BusOut = 16'b0;
    endcase
end

    
endmodule  