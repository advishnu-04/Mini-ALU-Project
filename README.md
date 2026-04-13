# 🔧 4-bit Mini ALU (Verilog)

This project implements a simple **4-bit Arithmetic Logic Unit (ALU)** using Verilog HDL.  
It performs basic arithmetic and logical operations based on a 2-bit select line.

---

## 📌 Features
- 4-bit input operands (A, B)
- 2-bit control signal (sel)
- Supports arithmetic and logical operations
- Carry/borrow output for arithmetic operations
- Testbench included with waveform support (GTKWave)

---

## ⚙️ Operations

| sel | Operation | Description |
|-----|----------|------------|
| 00  | ADD      | A + B      |
| 01  | SUB      | A - B      |
| 10  | AND      | A & B      |
| 11  | OR       | A \| B     |

---

## 🧠 Design Details
- Behavioral modeling using `always @(*)`
- Uses case statement for operation selection
- Concatenation `{carry, Y}` used for arithmetic operations

---

## 🧪 Simulation
- Testbench verifies all operations
- `$monitor` used for output tracking
- Waveform generated using GTKWave (`.vcd` file)

---

## 📂 Files Included
- `mini_alu.v` → ALU design
- `tb_mini_alu.v` → Testbench
- `alu.vcd` → Waveform dump file

---

## 🚀 How to Run

```bash
iverilog  alu_tb_mini.v mini_alu.v
vvp alu
gtkwave alu.vcd
