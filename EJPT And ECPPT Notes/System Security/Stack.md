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

### Procedures & Functions
• Now that we know more about the Stack, we will investigate how procedures and functions work. It is important to know that procedures and functions alter the normal flow of the process.
• When a procedure or a function terminates, it returns control to the statement or instruction that called the function.
• Functions contain two important components, the prologue and the epilogue, which we will discuss later, but here is a very quick overview.
• The prologue prepares the stack to be used, similar to putting a bookmark in a book. When the function has completed, the epilogue resets the stack to the prologue settings.
• The Stack consists of logical stack frames (portions/areas of the Stack), that are PUSHed when calling a function and POPped when returning a value.
• When a subroutine, such as a function or procedure, is started, a stack frame is created and assigned to the current ESP location (top of the stack); this allows the subroutine to operate independently in its own location in the stack.
• When the subroutine ends, two things happen:
• The program receives the parameters passed from the subroutine.
• The Instruction Pointer (EIP) is reset to the location at the time of the initial call.
• In other words, the stack frame keeps track of the location where each subroutine should return the control when it terminates.
• We will break down this process in a more specific example for you to better understand how stack frames work.
• First, we will explain the operations, and then we will illustrate how it happens in an actual program. When this program is run, the following process occurs.
![image](https://github.com/user-attachments/assets/587f615f-ea4a-4d55-be2b-0fac92d5ffc8)

