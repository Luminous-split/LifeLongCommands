### Memory Segmentation
- Process memory is typically divided into segments, each serving a specific purpose:
- Code Segment: Contains the executable code of the program.
- Data Segment: Stores initialized data, such as global variables and static variables.
- BSS Segment: Contains uninitialized data, initialized to zero during program execution.
- Heap Segment: Dynamically allocated memory for program data structures (e.g., heap memory allocated using functions like malloc() and free()).
- Stack Segment: Stores function call frames, local variables, and function parameters. The stack grows and shrinks dynamically as functions are called and return.

  ![image](https://github.com/user-attachments/assets/e5cf9239-c4d4-4cdb-acc6-b8f4f1b7a211)

- The Text region, or instruction segment, is fixed by the program and contains the program code (instructions).
- This region is marked as read-only since the program should not change during execution.
- The Data region is divided into initialized data and uninitialized data. Initialized data includes items such as static and global declared variables that are predefined and can be modified.
- The uninitialized data, named Block Started by Symbol (BSS), also initializes variables that are initialized to zero or do not have explicit initialization (ex. static int t).
- Next is the Heap, which starts right after the BSS segment. During the execution, the program can request more space in memory via brk and sbrk system calls, used by miloc, realloc and free.
- Hence, the size of the data region can be extended; this is not vital, but if you are very interested in a more detailed process, these may be topics to do your own research on.
- The last region of the memory is the Stack. For our purposes, this is the most important structure we will deal with.
