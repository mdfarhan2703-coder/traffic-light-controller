# Traffic Light Controller Using Verilog (FSM)

## Project Overview
This project implements a **Traffic Light Controller** using Verilog HDL and a Finite State Machine (FSM). It controls traffic signals for two road directions:

- North–South (NS)
- East–West (EW)

The controller moves through four states in sequence. At any time, one direction receives the green or yellow signal while the other direction remains red.

## Objective
- Design a traffic light controller using Verilog HDL.
- Implement the controller using a 2-bit FSM.
- Simulate the state transitions using a Verilog testbench.
- Observe the output waveforms using a VCD file.
- Generate a synthesized Verilog design using Yosys.

## Tools Used
- Verilog HDL
- Icarus Verilog – simulation
- GTKWave – waveform viewing
- Yosys – logic synthesis
- Graphviz – FSM and logic diagrams
- HTML, CSS and JavaScript – visual demonstration

## Working Principle

The controller uses four states:

| State | North–South Signal | East–West Signal |
|---|---|---|
| `NS_GREEN_EW_RED` | Green | Red |
| `NS_YELLOW_EW_RED` | Yellow | Red |
| `NS_RED_EW_GREEN` | Red | Green |
| `NS_RED_EW_YELLOW` | Red | Yellow |

The state sequence repeats continuously:

1. North–South Green, East–West Red
2. North–South Yellow, East–West Red
3. North–South Red, East–West Green
4. North–South Red, East–West Yellow
5. Returns to the first state

The controller uses a clock input and an active-high asynchronous reset. When reset is asserted, the FSM returns to `NS_GREEN_EW_RED`.

## Output Encoding

Each direction has a 2-bit output:

| Output | Meaning |
|---|---|
| `2'b00` | Red |
| `2'b01` | Yellow |
| `2'b10` | Green |

## Project Files

| File | Description |
|---|---|
| `traffic_light_controller.v` | Main Verilog FSM design |
| `tb_traffic_light.v` | Testbench for simulation |
| `traffic_light_tb.vcd` | Generated waveform data |
| `traffic_light_tb.vvp` | Compiled simulation file |
| `synth_traffic_light.v` | Yosys synthesized Verilog design |
| `traffic_light_fsm.png` | FSM diagram |
| `traffic_light_block.png` | Block diagram |
| `logic_circuit.png` | Logic circuit diagram |
| `traffic_light_fsm.dot` | FSM Graphviz source |
| `traffic_light_block.dot` | Block diagram Graphviz source |
| `logic_circuit.dot` | Logic circuit Graphviz source |
| `traffic_light_visual.html` | Browser-based traffic light visual demo |
| `Waveform.png` | Simulation waveform screenshot |
| `Screenshot From 2026-11-14 12-37-19.png` | Project screenshot |
| `Screencast From 2026-11-14 12-49-43.webm` | Project demonstration recording |
| `Working simulation.webm` | Simulation recording |

## How to Run the Verilog Simulation

Make sure Icarus Verilog is installed.

### 1. Compile the design and testbench

```bash
iverilog -o traffic_light_tb.vvp traffic_light_controller.v tb_traffic_light.v
```

### 2. Run the simulation

```bash
vvp traffic_light_tb.vvp
```

The terminal displays the North–South and East–West signal values at each simulation time.

### 3. View the waveform

```bash
gtkwave traffic_light_tb.vcd
```

## Run the Visual Demonstration

Open `traffic_light_visual.html` in a web browser. It displays the North–South and East–West traffic signals and cycles through the four signal combinations.

**Note:** The HTML page is a visual demonstration of the same four-state sequence. It is a separate browser animation, not a live connection to the Verilog simulation.

## Expected Result

The simulation should show the following repeating sequence:

- NS Green – EW Red
- NS Yellow – EW Red
- NS Red – EW Green
- NS Red – EW Yellow

The controller returns to the initial state after completing the sequence.

## Conclusion

The Traffic Light Controller was designed using Verilog HDL with a 2-bit Finite State Machine. The design was simulated using a testbench, and its output transitions can be inspected through the generated waveform. A synthesized Verilog file and a browser-based visual demonstration are also included.

---

**Project:** Traffic Light Controller Using Verilog (FSM)  
**Project Type:** Digital Design / Verilog HDL  
