# Predefined Macros in C

C provides several predefined macros that can be used to obtain useful information about the program and the environment it is being compiled in.

## Standard Predefined Macros

### 1. `__FILE__`
- Expands to the name of the current file as a string.
- Example:
  ```c
  printf("Current file: %s\n", __FILE__);
  ```

### 2. `__LINE__`
- Expands to the current line number in the source file.
- Example:
  ```c
  printf("Current line: %d\n", __LINE__);
  ```

### 3. `__DATE__`
- Expands to the compilation date in the format "MMM DD YYYY".
- Example:
  ```c
  printf("Compilation date: %s\n", __DATE__);
  ```

### 4. `__TIME__`
- Expands to the compilation time in the format "HH:MM:SS".
- Example:
  ```c
  printf("Compilation time: %s\n", __TIME__);
  ```

### 5. `__STDC__`
- Defined as `1` if the compiler complies with the ANSI C standard.
- Example:
  ```c
  #ifdef __STDC__
  printf("ANSI C compliant\n");
  #endif
  ```

### 6. `__STDC_VERSION__`
- Expands to a long integer indicating the C standard version.
- Common values:
  - `199409L` (C90 with amendment)
  - `199901L` (C99)
  - `201112L` (C11)
  - `201710L` (C17)
- Example:
  ```c
  printf("C Standard version: %ld\n", __STDC_VERSION__);
  ```

### 7. `__STDC_HOSTED__`
- Defined as `1` if the implementation is a hosted environment (has full standard library support).
- Example:
  ```c
  printf("Hosted environment: %d\n", __STDC_HOSTED__);
  ```

## Compiler-Specific Predefined Macros

### GCC-Specific Macros
- `__GNUC__` - Defined if GCC is being used.
- `__GNUC_MINOR__` - Minor version of GCC.
- `__GNUC_PATCHLEVEL__` - Patch level of GCC.

Example:
```c
#ifdef __GNUC__
printf("GCC version: %d.%d.%d\n", __GNUC__, __GNUC_MINOR__, __GNUC_PATCHLEVEL__);
#endif
```

### MSVC-Specific Macros
- `_MSC_VER` - Defines the version of Microsoft Visual C++.

Example:
```c
#ifdef _MSC_VER
printf("MSVC version: %d\n", _MSC_VER);
#endif
```

## Conclusion
Predefined macros in C are useful for debugging, conditional compilation, and obtaining environment details. Compiler-specific macros help write portable code by checking compiler versions and capabilities.

