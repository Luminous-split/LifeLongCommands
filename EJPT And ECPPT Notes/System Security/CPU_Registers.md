- CPU registers are small, high-speed storage locations located within the CPU (Central Processing Unit).
• They are used to temporarily hold data that is being processed or manipulated by the CPU.
• Registers play a crucial role in the execution of instructions and the management of data within the computer system.

- The architecture of the CPU (32-bit and 64-bit), refers to the width/size of the CPU registers.
• Each CPU has its fixed set of registers that are accessed when required.
• You can think of registers as temporary variables used by the CPU to retrieve and store data.
• For the purpose of this course, we will focus on a specific group of registers: General Purpose Registers (GPRs).

## General Purpose Registers

• General-purpose registers are used to store data temporarily during program execution.
• They are versatile and can hold various types of data, such as integers, memory addresses, or intermediate results of arithmetic/logical operations.
• Examples of general-purpose registers include:
- EAX, EBX, ECX, EDX: Used for general data manipulation and arithmetic operations.
- ESI, EDI: Often used for string manipulation operations.
- ESP, EBP: Used for managing the stack (ESP for stack pointer, EBP for base pointer).
- In 64-bit architectures (x64), the general-purpose registers are extended to 64 bits (RAX, RBX, RCX, RDX, etc.), providing increased addressable memory space and support for larger data types.

![image](https://github.com/user-attachments/assets/7aed79de-ae9b-4e87-9eb6-03701550f442)

#### EAX (Accumulator Register)
- The EAX register is the primary accumulator register used for arithmetic and logic operations. It is often used to store operands and receive results of computations. In certain contexts, it holds function return values and is used as a scratch register for intermediate calculations.
#### EBX (Base Register)
- The EBX register, also known as the base register, is typically used as a pointer to data in memory or as a base address for memory operations. It can also serve as a general-purpose register for storing data temporarily during computations.
#### ECX (Counter Register)
• The ECX register, known as the counter register, is commonly used for loop control and iteration counting. It is often used in conjunction with the LOOP instruction to implement loops and repetitive tasks.
#### EDX (Data Register)
• The EDX register, or data register, is used in conjunction with EAX for certain arithmetic operations that require a wider range of data storage (e.g., 64-bit multiplication and division). It can also serve as a general-purpose register for storing data. 
#### ESI (Source Index Register)
• The ESI register, known as the source index register, is commonly used in string manipulation operations. It typically holds the starting address of the source data or the source string during operations like copying, comparing, or searching strings.
#### EDI (Destination Index Register)
• The EDI register, or destination index register, complements the ESI register in string manipulation operations. It usually holds the starting address of the destination data or the destination string during string operations like copying or concatenation.
#### ESP (Stack Pointer Register)
• The ESP register, or stack pointer register, points to the top of the stack in memory. It is used to manage the stack, a special area of memory used for storing function parameters, local variables, return addresses, and other data during program execution.
#### EBP (Base Pointer Register)
• The EBP register, known as the base pointer register, is commonly used in conjunction with the ESP register to access parameters and local variables within function calls. It serves as a reference point for accessing data stored on the stack.

![image](https://github.com/user-attachments/assets/99e29a76-d5d9-4532-8c13-86a865c9f8a1)

## EIP
• In addition to the eight general purposes registers, there is also another register that will be important for what we will be doing in this course, the ElP (x86 naming convention).
• The Instruction Pointer (EIP) controls the program execution by storing a pointer to the address of the next instruction (machine code) that will be
