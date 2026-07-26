# 8-bit ALU Design in Verilog

An RTL implementation of an **8-bit Arithmetic Logic Unit (ALU)** written completely in **Verilog HDL**.

This project is being developed from scratch following the same methodology used in semiconductor companies—starting from basic combinational blocks and gradually integrating them into a complete ALU.

---

# Features

## Phase 1 (Current)

- 8-bit Addition
- 8-bit Subtraction
- Bitwise AND
- Bitwise OR
- Bitwise XOR
- Bitwise NOT
- Logical Left Shift
- Logical Right Shift

using a **3-bit Opcode**.

---

# Opcode Table

| Opcode | Operation |
|---------|-----------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT |
| 110 | Left Shift |
| 111 | Right Shift |

---

# Project Architecture

```
                +----------------+
 A -----------> |                |
                |                |
 B -----------> |   8-bit ALU    |------> Result[7:0]
                |                |
 Opcode ------> |                |
                +----------------+
                       |
                       |
        +--------------+-------------+
        |              |             |
 Arithmetic Unit   Logic Unit   Shift Unit
        |
 Ripple Carry Adder
        |
 Full Adders
        |
 Half Adders
```

---

# Project Structure

```
8bit_ALU/

│
├── rtl/
│   ├── half_adder.v
│   ├── full_adder.v
│   ├── ripple_adder_4bit.v
│   ├── ripple_adder_8bit.v
│   ├── arithmetic_unit.v
│   ├── logic_unit.v
│   ├── shift_unit.v
│   ├── flag_generator.v
│   └── alu_8bit.v
│
├── tb/
│   ├── Half_adder_TB.v
│   ├── full_adder_TB.v
│   ├── ripple_adder_4bit_TB.v
│   ├── ripple_adder_8bit_TB.v
│   ├── arithmetic_unit_TB.v
│   ├── logic_unit_TB.v
│   ├── shift_unit_TB.v
│   ├── alu_8bit_TB.v
│
├── wave/
│   ├── half_adder.vcd
│   ├── Full_adder.vcd
│   ├── Ripple_adder_4bit.vcd
│   ├── Ripple_adder_8bit.vcd
│
├── sim/
│
└── README.md
```

---

# ALU Inputs

```verilog
input  [7:0] A;
input  [7:0] B;
input  [2:0] opcode;
```

---

# ALU Outputs

```verilog
output [7:0] result;

output carry;
output zero;
output overflow;
output negative;
```

---

# Design Methodology

The ALU is designed hierarchically.

```
Half Adder
      ↓
Full Adder
      ↓
4-bit Ripple Carry Adder
      ↓
8-bit Ripple Carry Adder
      ↓
Arithmetic Unit
      ↓
Logic Unit
      ↓
Shift Unit
      ↓
Flag Generator
      ↓
8-bit ALU
```

---

# Development Progress

| Module | RTL | TB | Simulation | GTKWave | Status |
|--------|:---:|:---:|:----------:|:--------:|:------:|
| Half Adder | ✅ | ✅ | ✅ | ✅ | VERIFIED |
| Full Adder | ✅ | ✅ | ✅ | ✅ | VERIFIED |
| 4-bit Ripple Carry Adder | ✅ | ✅ | ✅ | ✅ | VERIFIED |
| 8-bit Ripple Carry Adder | ✅ | ✅ | ✅ | ✅ | VERIFIED |
| Arithmetic Unit | ✅ | ✅ | ✅ | ✅ | VERIFIED |
| Logic Unit | ✅ | ✅ | ✅ | ✅ | VERIFIED |
| Shift Unit | ⬜ | ⬜ | ⬜ | ⬜ | Pending |
| Flag Generator | ⬜ | ⬜ | ⬜ | ⬜ | Pending |
| Top ALU | ⬜ | ⬜ | ⬜ | ⬜ | Pending |

---

# Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code
- Git
- GitHub

---

# Simulation

Compile

```bash
iverilog -o sim/alu.out rtl/*.v tb/*.v
```

Run

```bash
vvp sim/alu.out
```

Open waveform

```bash
gtkwave wave/alu.vcd
```

---

# Future Improvements

## Phase 2

- 4-bit Opcode
- Multiplication
- Division
- Increment
- Decrement
- Compare
- Rotate Left
- Rotate Right

---

## Phase 3

- Parameterized ALU
- Barrel Shifter
- Carry Lookahead Adder
- Signed Arithmetic
- Test Coverage
- Randomized Testbench
- SystemVerilog Assertions

---

# Author

**Sidhant Borkar**

Electronics & Telecommunication Engineer

Verilog • Digital Design • RTL Design • FPGA