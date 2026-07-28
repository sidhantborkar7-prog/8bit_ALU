```{=html}
<p align="center">
```
`<img src="Images/Project_banner.png" alt="8-bit ALU Banner" width="100%">`{=html}
```{=html}
</p>
```
```{=html}
<h1 align="center">
```
8-bit ALU Design in Verilog
```{=html}
</h1>
```
```{=html}
<p align="center">
```
RTL Design • Verilog HDL • Digital Design • FPGA • Icarus Verilog •
GTKWave
```{=html}
</p>
```

------------------------------------------------------------------------

## Project Overview

An RTL implementation of an **8-bit Arithmetic Logic Unit (ALU)**
designed entirely in **Verilog HDL**.

This project follows a **bottom-up RTL design methodology**, beginning
with a **Half Adder** and progressively integrating reusable modules
into a complete **8-bit ALU**. Each module is developed, simulated, and
verified independently before final integration.

------------------------------------------------------------------------

## Features

### Arithmetic Operations

-   8-bit Addition
-   8-bit Subtraction

### Logical Operations

-   AND
-   OR
-   XOR
-   NAND

### Shift Operations

-   Logical Left Shift
-   Logical Right Shift

### Status Flags

-   Carry Flag
-   Overflow Flag
-   Zero Flag
-   Negative Flag

------------------------------------------------------------------------

## Opcode Table

   Opcode  Operation
  -------- ---------------------
   `000`   Addition
   `001`   Subtraction
   `010`   AND
   `011`   OR
   `100`   XOR
   `101`   NAND
   `110`   Logical Left Shift
   `111`   Logical Right Shift

------------------------------------------------------------------------

## ALU Architecture

```{=html}
<p align="center">
```
`<img src="Images/ALU_Architecture.png" width="850">`{=html}
```{=html}
</p>
```

------------------------------------------------------------------------

## Design Hierarchy

```{=html}
<p align="center">
```
`<img src="Images/Design_Hierarchy.png" width="650">`{=html}
```{=html}
</p>
```

------------------------------------------------------------------------

## 📈 Development Process

```{=html}
<p align="center">
```
`<img src="Images/Development_Process.png" width="650">`{=html}
```{=html}
</p>
```

------------------------------------------------------------------------

## Project Structure

``` text
8-bit-ALU/
│
├── Images/
│   ├── Project_banner.png
│   ├── ALU_Architecture.png
│   ├── Design_Hierarchy.png
│   ├── Development_Process.png
│   ├── ALU_TB_output.png
│   └── ALU_with_flags_TB_output.png
│
├── rtl/
│   ├── half_adder.v
│   ├── full_adder.v
│   ├── ripple_adder_4bit.v
│   ├── ripple_adder_8bit.v
│   ├── arithmetic_unit.v
│   ├── logical_unit.v
│   ├── shift_unit.v
│   └── alu.v
│
├── tb/
│   ├── Half_adder_TB.v
│   ├── full_adder_TB.v
│   ├── ripple_adder_4bit_TB.v
│   ├── ripple_adder_8bit_TB.v
│   ├── arithmetic_unit_TB.v
│   ├── logical_unit_TB.v
│   ├── shift_unit_TB.v
│   └── alu_TB.v
│
├── sim/
├── wave/
├── LICENSE
└── README.md
```

------------------------------------------------------------------------

## ALU Interface

### Inputs

``` verilog
input  [7:0] A;
input  [7:0] B;
input  [2:0] opcode;
```

### Outputs

``` verilog
output [7:0] result;
output carry_flag;
output overflow_flag;
output zero_flag;
output negative_flag;
```

------------------------------------------------------------------------

## Module Verification Status

  ---------------------------------------------------------------------------
  Module                   RTL   Testbench   Simulation   GTKWave    Status
  ----------------------- ----- ----------- ------------ --------- ----------
  Half Adder               ✅       ✅           ✅         ✅      VERIFIED

  Full Adder               ✅       ✅           ✅         ✅      VERIFIED

  4-bit Ripple Carry       ✅       ✅           ✅         ✅      VERIFIED
  Adder                                                            

  8-bit Ripple Carry       ✅       ✅           ✅         ✅      VERIFIED
  Adder                                                            

  Arithmetic Unit          ✅       ✅           ✅         ✅      VERIFIED

  Logical Unit             ✅       ✅           ✅         ✅      VERIFIED

  Shift Unit               ✅       ✅           ✅         ✅      VERIFIED

  Top ALU                  ✅       ✅           ✅         ✅      VERIFIED
  ---------------------------------------------------------------------------

------------------------------------------------------------------------

## Simulation Results

The ALU has been verified using custom Verilog testbenches.

### Operations Verified

-   Addition
-   Subtraction
-   AND
-   OR
-   XOR
-   NAND
-   Logical Left Shift
-   Logical Right Shift

### Flags Verified

-   Carry Flag
-   Overflow Flag
-   Zero Flag
-   Negative Flag

Waveforms were analyzed using **GTKWave**.

### ALU Testbench Output

```{=html}
<p align="center">
```
`<img src="Images/ALU_TB_output.png" width="900">`{=html}
```{=html}
</p>
```

------------------------------------------------------------------------

### ALU with Flags

```{=html}
<p align="center">
```
`<img src="Images/ALU_with_flags_TB_output.png" width="900">`{=html}
```{=html}
</p>
```

------------------------------------------------------------------------

## Running the Simulation

### Compile

``` bash
iverilog -o sim/alu.out rtl/*.v tb/*.v
```

### Run

``` bash
vvp sim/alu.out
```

### Open GTKWave

``` bash
gtkwave wave/alu.vcd
```

------------------------------------------------------------------------

## Tools Used

-   Verilog HDL
-   Icarus Verilog
-   GTKWave
-   Visual Studio Code
-   Git
-   GitHub

------------------------------------------------------------------------

## Future Improvements

### Phase 2

-   4-bit Opcode ALU
-   Multiplication
-   Division
-   Increment
-   Decrement
-   Compare
-   Rotate Left
-   Rotate Right

### Phase 3

-   Parameterized ALU
-   Carry Lookahead Adder (CLA)
-   Barrel Shifter
-   Signed Arithmetic
-   Randomized Testbench
-   Functional Coverage
-   SystemVerilog Assertions (SVA)

------------------------------------------------------------------------

## Key Learning Outcomes

-   Hierarchical RTL Design
-   Modular Verilog Design
-   Arithmetic Circuit Design
-   Logical Circuit Design
-   Ripple Carry Adder Design
-   Flag Generation
-   Functional Verification
-   GTKWave Analysis
-   Git & GitHub Workflow

------------------------------------------------------------------------

## Author

**Sidhant Borkar**

Electronics & Telecommunication Engineer

**Areas of Interest**

-   RTL Design
-   Digital Design
-   FPGA Design
-   VLSI Design
-   Verilog/SystemVerilog

------------------------------------------------------------------------

::: {align="center"}
If you found this project useful, consider giving it a **Star** on
GitHub.
:::
