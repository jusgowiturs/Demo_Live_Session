
## 1. Compile the Design and Testbench

Use Icarus Verilog compiler:

```bash
iverilog -g2012 -o sim mycircuit.sv mycircuit_tb.sv
```
## 2. Run Simulation

Execute the generated simulation file:
```bash
vvp sim
```
After execution, the VCD waveform file will be generated VCD file


## 3. View Waveform using GTKWave

Open the waveform:
```bash
gtkwave Mywave.vcd
```
GTKWave will display:

- Input signals
- Output signals
- Signal transitions with respect to simulation time
## 4. Complete Flow

The complete simulation flow:
```
SystemVerilog Design
        |
        v
SystemVerilog Testbench
        |
        v
Icarus Verilog Compilation
        |
        v
Simulation using vvp
        |
        v
VCD waveform generation
        |
        v
Waveform analysis using GTKWave
```
## Example Commands
```bash
iverilog -g2012 -o sim mycircuit.sv mycircuit_tb.sv

vvp sim

gtkwave Mywave.vcd
```
