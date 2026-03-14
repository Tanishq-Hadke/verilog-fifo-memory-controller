# FIFO Memory Controller in Verilog

## Project Overview

This project implements a **parameterized synchronous FIFO (First-In First-Out) memory controller** in Verilog. FIFO buffers are widely used in digital systems for temporary data storage and communication between modules operating at different speeds.

The design supports configurable **data width and memory depth** and includes status flags such as **FULL and EMPTY**.

This project was simulated using **Xilinx Vivado**.

---

## Features

* Parameterized FIFO depth and data width
* Synchronous read and write operations
* Full and empty detection
* Circular buffer memory implementation
* Verilog testbench for verification

---

## FIFO Architecture

Write data is stored in memory using a **write pointer**, and data is retrieved using a **read pointer**.

```
          +------------------+
Write --->|                  |
Data      |     FIFO RAM     |----> Read Data
          |                  |
          +------------------+
             ↑           ↑
        Write Pointer  Read Pointer
```

---

## Files

| File                        | Description                   |
| --------------------------- | ----------------------------- |
| `src/fifo.v`                | FIFO RTL design               |
| `tb/fifo_tb.v`              | Testbench for simulation      |
| `docs/architecture.md`      | Architecture explanation      |
| `sim/simulation_results.md` | Simulation output explanation |

---

## Simulation

Run simulation in **Vivado**:

```
Run Simulation → Run Behavioral Simulation
```

Expected output sequence:

```
Write: 10 20 30 40
Read : 10 20 30 40
```

---

## Tools Used

* Verilog HDL
* Xilinx Vivado Simulator

---

## Author

FPGA / VLSI Design Project
