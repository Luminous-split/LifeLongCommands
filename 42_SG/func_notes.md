# C Standard Library Functions

## 1. **Input/Output Functions (`stdio.h`)
```c
#include <stdio.h>
```
- `printf()` - Prints formatted output
- `scanf()` - Reads formatted input
- `putchar()` - Writes a character to stdout
- `getchar()` - Reads a character from stdin
- `puts()` - Writes a string to stdout
- `gets()` - Reads a string from stdin (unsafe, deprecated)
- `fopen()` - Opens a file
- `fclose()` - Closes a file
- `fread()` - Reads from a file
- `fwrite()` - Writes to a file
- `fprintf()` - Writes formatted data to a file
- `fscanf()` - Reads formatted data from a file
- `fseek()` - Moves the file pointer to a specific location
- `ftell()` - Returns the current position in the file
- `rewind()` - Moves the file pointer to the beginning

## 2. **String Handling Functions (`string.h`)
```c
#include <string.h>
```
- `strlen()` - Returns the length of a string
- `strcpy()` - Copies one string to another
- `strncpy()` - Copies a specified number of characters from one string to another
- `strcmp()` - Compares two strings
- `strncmp()` - Compares a specified number of characters in two strings
- `strcat()` - Concatenates two strings
- `strncat()` - Concatenates a specified number of characters
- `strchr()` - Finds the first occurrence of a character in a string
- `strrchr()` - Finds the last occurrence of a character in a string
- `strstr()` - Finds a substring in a string
- `strtok()` - Tokenizes a string (splits it into parts)

## 3. **Memory Management Functions (`stdlib.h`)
```c
#include <stdlib.h>
```
- `malloc()` - Allocates memory dynamically
- `calloc()` - Allocates and initializes memory dynamically
- `realloc()` - Resizes dynamically allocated memory
- `free()` - Frees dynamically allocated memory

## 4. **Mathematical Functions (`math.h`)
```c
#include <math.h>
```
- `pow()` - Computes the power of a number
- `sqrt()` - Computes the square root
- `ceil()` - Rounds a number up
- `floor()` - Rounds a number down
- `fabs()` - Returns the absolute value of a float
- `log()` - Computes the natural logarithm
- `exp()` - Computes e raised to a given power
- `sin(), cos(), tan()` - Trigonometric functions
- `asin(), acos(), atan()` - Inverse trigonometric functions

## 5. **Character Handling Functions (`ctype.h`)
```c
#include <ctype.h>
```
- `isalpha()` - Checks if a character is alphabetic
- `isdigit()` - Checks if a character is a digit
- `isalnum()` - Checks if a character is alphanumeric
- `islower()` - Checks if a character is lowercase
- `isupper()` - Checks if a character is uppercase
- `tolower()` - Converts uppercase to lowercase
- `toupper()` - Converts lowercase to uppercase

## 6. **Time and Date Functions (`time.h`)
```c
#include <time.h>
```
- `time()` - Returns the current time
- `ctime()` - Converts time to a human-readable string
- `difftime()` - Computes the difference between two times
- `clock()` - Returns processor time used
- `asctime()` - Converts time structure to a string
- `strftime()` - Formats time as a string

## 7. **Standard Utility Functions (`stdlib.h`)
- `exit()` - Terminates the program
- `system()` - Executes a system command
- `atoi()` - Converts a string to an integer
- `atof()` - Converts a string to a floating-point number
- `rand()` - Generates a random number
- `srand()` - Seeds the random number generator

## 8. **Process Control Functions (`stdlib.h` and `unistd.h`)
- `abort()` - Aborts the program execution
- `atexit()` - Registers a function to be called at program exit
- `getpid()` - Gets the process ID
- `fork()` - Creates a new process (Unix/Linux)
- `exec()` - Replaces the current process with a new one
- `_exit()` - Terminates the process immediately

## 9. **Error Handling Functions (`errno.h`)
```c
#include <errno.h>
```
- `perror()` - Prints a description of the last error
- `strerror()` - Returns a string describing the error
- `errno` - Global variable storing the last error code

## 10. **Signal Handling Functions (`signal.h`)
```c
#include <signal.h>
```
- `signal()` - Sets a signal handler
- `raise()` - Raises a signal
- `kill()` - Sends a signal to a process
- `alarm()` - Sets a timer to raise a signal
- `pause()` - Waits for a signal

---
### Notes:
- Some functions are platform-specific (e.g., `fork()` works on Unix/Linux but not on Windows).
- `gets()` is **deprecated** due to security risks; use `fgets()` instead.
- Dynamic memory functions (`malloc()`, `free()`) should be used carefully to avoid memory leaks.

This document provides an overview of standard C functions for reference. Let me know if you need more details on any specific function!

