### Assemblers
- There are several types of assemblers that depend on the target system's ISA (Instruction Set Architecture):
- Microsoft Macro Assembler (MASM), x86 assembler that uses the Intel syntax for MS-DOS and Microsoft Windows
- GNU Assembler (GAS), used by the GNU Project, default back-end of GCC.
- Netwide Assembler (NASM), x86 architecture used to write 16-bit, 32-bit (IA-32) and 64-bit (x86-64) programs, one of the most popular assemblers for Linux
- Flat Assembler (FASM), x86, supports Intel-style assembly language on the IA-32 and x86-64

### How Assemblers Work
• When source code is assembled, the resulting file is called an object file.
It is a binary representation of the program.
• While the assembly instructions and the machine code have a one-to-one correspondence, and the translation process may be simple, the assembler does some further operations such as assigning memory location to variables and instructions and resolving symbolic names.
• Once the assembler has created the object file, a linker is needed in order to create the actual executable file. What a linker does is take one or more object files and combine them to create the executable file.

![image](https://github.com/user-attachments/assets/fea18533-9567-4fd0-b98d-573fd3df3876)

### Compilers
• A compiler is a software tool used in computer programming to translate source code written in a high-level programming language into machine code or executable code that can be directly executed by a computer's
CPU.
• The compiler is similar to the assembler. It converts high-level source code (such as C) into low-level code or directly into an object file.
• Therefore, once the output file is created, the previous process will be executed on the file. The end result is an executable file.


