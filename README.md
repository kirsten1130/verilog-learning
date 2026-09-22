# Verilog Digital IC Learning Repository
This repository documents my Verilog and digital circuit learning for EDA/DFT job preparation.

## Overview
This repo contains synthesizable Verilog RTL designs, testbenches, simulation waveforms and learning notes.
Topics covered include combinational & sequential logic, Finite State Machine (FSM), vector/bus operations.
A complete UART controller project is implemented. All codes follow industrial coding specifications, laying the foundation for subsequent DFT learning.

## Main Content
### 1. HDLBits Exercises
- Combinational logic: basic gates, MUX, decoder, encoder, ALU
- Sequential logic: D flip-flop, shift register, counter
- FSM (Moore & Mealy), state encoding (binary / one-hot)
- Vector & bus operations: bit selection, concatenation, replication operator

### 2. UART Controller Project
Spec: 8 data bits, 1 start bit, 1 stop bit, no parity
- `baud_gen`: Baud rate clock divider
- `uart_tx`: Transmitter, FSM + parallel-to-serial conversion
- `uart_rx`: Receiver, 16x oversampling + serial-to-parallel conversion
- `uart_top`: Top module for submodule interconnection
- Complete testbench for end-to-end simulation & waveform validation

## Coding Rules
- Sequential logic (`always @(posedge clk)`): non-blocking assignment `<=`
- Combinational logic (`always @(*)`): blocking assignment `=`
- Add `default` in case statements to avoid unintended latches
- Snake_case naming convention
- Module header comment: function and port description
- Each RTL module comes with a testbench

## Toolchain
- Editor: VS Code + Verilog-HDL plugin
- Simulator: ModelSim / Icarus Verilog + GTKWave
- Online practice: HDLBits

## Knowledge Coverage
- Combinational & sequential digital logic design
- Vector bus manipulation, bit slice and concatenation
- Moore & Mealy finite state machine design
- UART module design, simulation and debugging

## Next Stage: DFT Study
- Timing analysis: Setup time & Hold time
- Scan chain fundamentals
- ATPG & stuck-at fault model
- Small DFT demo implementation
- 
Verilog digital IC learning repo for EDA/DFT job hunting. Includes HDLBits exercises and complete UART controller project with testbench and simulation.
