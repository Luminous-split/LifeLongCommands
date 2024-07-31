## CPU Explained
• The Central Processing Unit (CPU) is the device in charge of executing the machine code of a program.

- Each instruction is a primitive command that performs a specific operation such as moving data between registers, working with memory, changing the execution flow of a program, and performing arithmetic and more.
- As a rule, each CPU has its own instruction set architecture (ISA).
- CPU instructions are represented in hexadecimal (HEX) format. Due the inherent unreadable nature and complexity, it is impossible for humans to read or utilize it in its natural format.

## ASSEMBLY Language
- Assembly language is closely tied to the architecture of the target CPU.
- Different CPU architectures have their own instruction sets and assembly languages.
- For example, x86 assembly language is used for Intel and AMD processors, while ARM assembly language is used for ARM-based processors.

![image](https://github.com/user-attachments/assets/afe7d4e9-754d-4d1e-9318-5a82a23da950)

##  CPU Components
- Control Unit (CU)
• The Control Unit is responsible for coordinating and controlling the operations of the CPU.
• It fetches instructions from memory, decodes them, and manages the execution of instructions by directing data movement and control flow within the CPU

- Arithmetic Logic Unit (ALU)
• The Arithmetic Logic Unit is the component responsible for performing arithmetic and logical operations.
• It can perform basic operations like addition, subtraction, multiplication, division, as well as logical operations like AND, OR, and NOT

- Registers
• Registers are small, high-speed storage locations within the CPU used to store data temporarily during processing. Some common types of registers include:
• Program Counter (PC): Holds the memory address of the next instruction to be fetched. Instruction Register (IR): Holds the currently executing instruction.
• Accumulator: Stores the result of arithmetic and logic operations. General-Purpose Registers: Used to store intermediate values and operands during instruction execution.

## CPU Instruction Set Architecture (ISA)
- Each CPU has its own instruction set architecture (ISA). The ISA is the set of instructions that a programmer (or a compiler) must understand and use to write a program correctly for that specific CPU and machine.
- In other words, ISA is what a programmer can see: memory, registers, instructions, etc. It provides all the necessary information for who wants to write a program in that machine language.
- The most common ISA is the x86 instruction set (or architecture) which originated from the Intel 8086 processor.
- The x86 acronym identifies 32-bit processors, while x64 (aka x86_64 or
AMD64) identifies the 64-bit versions.

