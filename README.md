

# 🧺 Automatic Washing Machine 

This project implements a **Finite State Machine (FSM)** based **Automatic Washing Machine Controller** using **Verilog HDL** in **Xilinx Vivado**.  
It simulates the automatic washing process — from checking the door to spinning the clothes — and can also be implemented on an **Artix-7 (Nexys4 DDR)** FPGA board.

---

## ⚙️ Features

- Designed using **6 FSM states**:
  1. `check_door`  
  2. `fill_water`  
  3. `add_detergent`  
  4. `cycle`  
  5. `drain_water`  
  6. `spin`
- Handles the full wash sequence with inputs such as:
  - `start`, `door_close`, `filled`, `detergent_added`, `cycle_timeout`, `drained`, `spin_timeout`
- Controls outputs:
  - `motor_on`, `door_lock`, `fill_value_on`, `drain_value_on`, `soap_wash`, `water_wash`, and `done`

---

## 📁 Files Included

| File | Description |
|------|--------------|
| `automatic_washing_machine.v` | Main Verilog FSM design |
| `new_test.v` | Testbench for simulation in Vivado |
| `washing_machine_nexys4ddr.xdc` | Constraint file for Artix-7 FPGA (switches & LEDs mapping) |
| `state_diagram.png` | FSM state diagram used for project visualization |

---

## 💻 Tools & Language

- **Tool:** Xilinx Vivado  
- **Language:** Verilog HDL  
- **Target Device:** Artix-7 (Nexys4 DDR FPGA Board)

---

## 🧠 Simulation & Hardware Implementation

- Simulate the design using **Vivado Simulator** to observe state transitions and signal changes.
- Synthesize and implement on **Nexys4 DDR FPGA** using the provided `.xdc` file.
- Hardware connections:
  - **Inputs** → Switches (`start`, `door_close`, `filled`, `drained`, etc.)
  - **Outputs** → LEDs (`motor_on`, `door_lock`, `done`, etc.)

---

## 📷 State Diagram

![State Diagram](state_diagram.png)

---

### 🧾 Summary

This project demonstrates how FSM-based control logic can automate real-world sequential processes like washing machines using **Verilog HDL** on **Xilinx Vivado**.
