# Verilog Digital IC Learning Repository
This repository documents my Verilog and digital circuit learning for EDA/DFT job preparation.

## Overview
This repo contains synthesizable Verilog RTL designs, testbenches, simulation waveforms and learning notes.
I learned combinational & sequential logic, Finite State Machine(FSM), bus/vector operations, and implemented a complete UART controller project.
All codes follow industrial coding specifications, laying the foundation for subsequent DFT learning.

## Repository Structure
verilog_learning/
├── hdlbits/                # HDLBits exercise codes
│   ├── week1/
│   │   ├── rtl/            # Verilog RTL source files
│   │   ├── tb/             # Testbench files
│   │   ├── waveform/      # Simulation waveform screenshots
│   │   └── notes/          # Learning notes & bug records
│   ├── week2/
│   ├── week3/
│   └── week4/
├── uart_project/           # Core project: UART controller
│   ├── rtl/                # uart_tx, uart_rx, baud_gen, uart_top
│   ├── tb/                 # Testbench for UART full system
│   ├── sim/                # Simulation output & VCD files
│   └── doc/                # Protocol docs, timing diagram
├── docs/                   # Learning plans, checklists, bug log
└── README.md

## Main Content
1. **HDLBits Exercises**
   - Combinational logic: basic logic gates, MUX, decoder, encoder, ALU
   - Sequential logic: D flip-flop, shift register, counter
   - FSM (Moore & Mealy), state encoding (binary / one-hot)
   - Vector / bus operation, bit selection, concatenation & replication operator

2. **UART Controller Project**
   - Specification: 8 data bits, 1 start bit, 1 stop bit, no parity
   - Modules:
     - `baud_gen`: Baud rate clock divider
     - `uart_tx`: Transmitter module with FSM & parallel-to-serial conversion
     - `uart_rx`: Receiver module with 16x oversampling & serial-to-parallel conversion
     - `uart_top`: Top module to instantiate and connect all submodules
   - Complete testbench for end-to-end simulation and waveform validation

## Coding Rules (Followed in all RTL code)
- Sequential logic inside `always @(posedge clk)`: use non-blocking assignment `<=`
- Combinational logic inside `always @(*)`: use blocking assignment `=`
- Add `default` in case statement to avoid unintended latch
- Snake_case naming convention, no meaningless variable names
- Comment for each module: function description & port explanation
- Every RTL module is equipped with corresponding testbench

## Toolchain
- Editor: VS Code + Verilog-HDL plugin
- Simulator: ModelSim / Icarus Verilog + GTKWave
- Online practice: HDLBits

## Knowledge Coverage
- Combinational and sequential digital logic design
- Vector bus manipulation, bit slice and concatenation
- Moore & Mealy finite state machine design
- Full UART communication module design, simulation and debugging

## Next Stage: DFT Study
- Timing analysis: Setup time & Hold time
- Scan chain fundamentals
- ATPG & stuck-at fault model
- Build small DFT demo

## Contact
Feel free to review the code. Suggestions are welcome.

