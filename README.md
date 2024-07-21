<h1>Compiler Design - Assignments</h1>

This repository contains group assignments for the course <a href="https://www.vorlesungen.ethz.ch/Vorlesungsverzeichnis/lerneinheit.view?lerneinheitId=172030&semkez=2023W&ansicht=ALLE&lang=en">252-0210-00 Compiler Design</a> at ETH Zurich. The assignments consist of six tasks, five of which (Tasks 2-6) are graded and contribute 50% to the final course grade. Together, these five tasks develop a complete compiler that translates a fictional high-level language called Oat, which has C-like syntax, into X86-Lite machine code. Each task builds upon the previous one to complete a layer of the compiler. The coursework is implemented in OCaml.

## Assignments
### HW2: Simulator for X86-Lite
In this assignment, we developed an assembler and simulator for the X86-Lite machine code, based on the specifications of X86. The simulator emulates typical machine operations such as arithmetic operations and memory access operations, including stack push and pop.

### HW3: Compiler Backend
We implemented a basic compiler backend that translates LLVM IR into X86 machine code. The source language is a 64-bit, simplified subset of LLVM IR, which we refer to as LLVMlite. At this stage, no optimizations were implemented.

### HW4: Compiler Frontend
In this assignment, we developed the frontend of a compiler that translates simple imperative language features, including boolean, integer, string, and array types, as well as top-level, mutually recursive functions and global variables, into LLVM instructions.

### HW5: Type System Enhancement
We upgraded our compiler from HW4 by completing the type system for an extended version of Oat, which includes "possibly null" and "definitely not null" references.

### HW6: Optimizations and Dataflow Analysis
In the final assignment, we applied several simple dataflow analysis techniques and optimizations to our LLVMlite intermediate representation. These optimizations aim to improve the size and number of memory accesses in the generated X86 code.
