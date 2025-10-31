module tb_bus_mux;
reg [15:0] R0, R1, R2, R3;
reg [1:0] sel;
wire [15:0] BusOut;

mux4_1 uut(R0, R1, R2, R3, sel, BusOut);

initial begin

    $dumpfile("bus_wave.vcd");   // name of the output waveform file
    $dumpvars(0, tb_bus_mux);    // dump all variables in the testbench
    
    R0 = 16'hAAAA; R1 = 16'hBBBB; R2 = 16'hCCCC; R3 = 16'hDDDD;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $stop;
end
endmodule
