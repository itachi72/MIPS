# MIPS
A MIPS processor on FPGA using verilog

MIPS (an acronym for Microprocessor without Interlocked Pipeline Stages) is a reduced instruction set computer (RISC) instruction set architecture (ISA) developed by MIPS Technologies (formerly MIPS Computer Systems). The early MIPS architectures were 32-bit, with 64-bit versions added later. There are multiple versions of MIPS: including MIPS I, II, III, IV, and V; as well as five releases of MIPS32/64 (for 32- and 64-bit implementations, respectively). As of April 2017, the current version is MIPS32/64 Release 6. 

MIPS is a modular architecture supporting up to four coprocessors (CP0/1/2/3). In MIPS terminology, CP0 is the System Control Coprocessor (an essential part of the processor that is implementation-defined in MIPS I–V), CP1 is an optional floating-point unit (FPU) and CP2/3 are optional implementation-defined coprocessors (MIPS III removed CP3 and reused its opcodes for other purposes). For example, in the PlayStation video game console, CP2 is the Geometry Transformation Engine (GTE), which accelerates the processing of geometry in 3D computer graphics.

MIPS I has thirty-two 32-bit general-purpose registers. Register $0 is hardwired to zero and writes to it are discarded. Register $31 is the link register. For integer multiplication and division instructions, which run asynchronously from other instructions, a pair of 32-bit registers, HI and LO, are provided. There is a small set of instructions for copying data between the general-purpose registers and the HI/LO registers.

The program counter has 32 bits. The two low-order bits always contain zero since MIPS I instructions are 32 bits long and are aligned to their natural word boundaries.

Instruction formats
Instructions are divided into three types: R, I and J. Every instruction starts with a 6-bit opcode. In addition to the opcode, R-type instructions specify three registers, a shift amount field, and a function field; I-type instructions specify two registers and a 16-bit immediate value; J-type instructions follow the opcode with a 26-bit jump target.
