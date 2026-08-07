# Verilog Basics

This repository contains basic Verilog HDL implementations and testbenches for common digital logic circuits.

## Included Circuits

- AND Gate
- XNOR Gate
- 2:1 Multiplexer
- 4:1 Multiplexer
- 16:1 Multiplexer
- 1:2 Demultiplexer
- 2:4 Decoder
- 3:8 Decoder
- 8:3 Encoder
- 8:3 Priority Encoder

## Tools Used

- Verilog HDL
- Icarus Verilog (iverilog)
- GTKWave
- Visual Studio Code

## How to Run

1. Open the project folder in Visual Studio Code.
2. Open the terminal.
3. Compile the Verilog design and testbench:
```bash
iverilog -o sim design_file.v testbench_file.v
```
4. Run the simulation:
```bash
vvp sim
```
5. If a VCD file is generated, open it in GTKWave:
```bash
gtkwave output.vcd
```


## Author

ECE Student | Learning Verilog and Digital Design