### What is Stack
- The stack is a fundamental data structure in computer science and plays a crucial role in the execution of programs.
- In the context of process memory management, the stack is a region of memory allocated for storing function call frames, local variables, function parameters, and return addresses during program execution.

### LIFO (Last-In-First-Out)
• The stack follows the Last-In-First-Out (LIFO) principle, meaning that the last item pushed onto the stack is the first one to be popped off
• This makes the stack an ideal data structure for managing function calls and storing temporary data that needs to be accessed in reverse order of its insertion.
• You can think of the stack as an array used for saving a function's return addresses, passing function arguments, and storing local variables.
• The purpose of the ESP register (Stack Pointer) is to identify the top of the stack, and it is modified each time a value is pushed in (PUSH) or popped out (POP).

### The Stack Pointer
• The stack is managed by a special CPU register called the stack pointer (ESP in ×86 architectures, RSP in x64 architectures).
• The stack pointer points to the top of the stack, indicating the location in memory where the next item will be pushed or popped.
• As items are pushed onto the stack (e.g., during function calls), the stack pointer is decremented to allocate more space. Conversely, when items are popped off the stack (e.g., when functions return), the stack pointer is incremented to reclaim

• Before exploring how the stack works and how to operate on it, it is important to understand how the stack grows.
• Common sense would make you think that the stack grows upwards, towards higher memory addresses, but as you saw in the previous memory structure diagram, the stack grows downward, towards the lower memory addresses.
• This is probably due to historical reasons when the memory in old computers was limited and divided into two parts: Heap and Stack.
• Knowing the limits of the memory allowed the programmer to know how big the heap and/or the stack would be.

### STACK Frames

• A stack frame, also known as an activation record or call frame, is a data structure used by the CPU and the operating system to manage function calls and execution flow within a program.
• It contains information related to a single function call, including parameters, local variables, return address, and other relevant data.
