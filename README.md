# bus_using_mux
Verilog implementation of a 4-register bus transfer system using multiplexers for data routing.

The design demonstrates how multiple registers (A, B, C, D) can transfer their data over a common bus using multiplexers (MUX) controlled by select lines.
Each bit of the bus is implemented using a 4×1 multiplexer, allowing one of the four register bits to be placed onto the bus at a time.

## Features

Four 4-bit registers: A, B, C, and D
A 4-line common bus that transfers data between registers
Multiplexer-based selection logic controlled by select lines
