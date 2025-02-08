# C Functions Reference

## 1. printf

**Declaration:**
```c
int printf(const char *format, ...);
```

**Example:**
```c
#include <stdio.h>

int main() {
    printf("Hello, %s! You are %d years old.\n", "Alice", 25);
    return 0;
}
```

---

## 2. scanf

**Declaration:**
```c
int scanf(const char *format, ...);
```

**Example:**
```c
#include <stdio.h>

int main() {
    int age;
    printf("Enter your age: ");
    scanf("%d", &age);
    printf("You entered: %d\n", age);
    return 0;
}
```

---

## 3. putchar

**Declaration:**
```c
int putchar(int character);
```

**Example:**
```c
#include <stdio.h>

int main() {
    putchar('A');
    return 0;
}
```

---

## 4. getchar

**Declaration:**
```c
int getchar(void);
```

**Example:**
```c
#include <stdio.h>

int main() {
    char ch;
    printf("Enter a character: ");
    ch = getchar();
    printf("You entered: %c\n", ch);
    return 0;
}
```

---

## 5. puts

**Declaration:**
```c
int puts(const char *str);
```

**Example:**
```c
#include <stdio.h>

int main() {
    puts("Hello, World!");
    return 0;
}
```

---

## 6. gets (Deprecated, Unsafe)

**Declaration:**
```c
char *gets(char *str);
```

**Example:**
```c
#include <stdio.h>

int main() {
    char str[100];
    printf("Enter a string: ");
    gets(str);
    printf("You entered: %s\n", str);
    return 0;
}
```

---
## fgets

**Declaration:**
```c
char *fgets(char *str, int n, FILE *stream);
```

**Example:**
```c
#include <stdio.h>

int main() {
    char buffer[100];
    printf("Enter a string: ");
    fgets(buffer, sizeof(buffer), stdin);
    printf("You entered: %s", buffer);
    return 0;
}
```

---

## 7. fread

**Declaration:**
```c
size_t fread(void *ptr, size_t size, size_t count, FILE *stream);
```

**Example:**
```c
#include <stdio.h>

int main() {
    FILE *file = fopen("test.bin", "rb");
    char buffer[100];
    fread(buffer, sizeof(char), 100, file);
    fclose(file);
    return 0;
}
```

---

## 8. fwrite

**Declaration:**
```c
size_t fwrite(const void *ptr, size_t size, size_t count, FILE *stream);
```

**Example:**
```c
#include <stdio.h>

int main() {
    FILE *file = fopen("test.bin", "wb");
    char data[] = "Hello, File!";
    fwrite(data, sizeof(char), sizeof(data), file);
    fclose(file);
    return 0;
}
```

---

## 9. fprintf

**Declaration:**
```c
int fprintf(FILE *stream, const char *format, ...);
```

**Example:**
```c
#include <stdio.h>

int main() {
    FILE *file = fopen("test.txt", "w");
    fprintf(file, "Formatted number: %d\n", 42);
    fclose(file);
    return 0;
}
```

---

## 10. fscanf

**Declaration:**
```c
int fscanf(FILE *stream, const char *format, ...);
```

**Example:**
```c
#include <stdio.h>

int main() {
    FILE *file = fopen("test.txt", "r");
    int num;
    fscanf(file, "%d", &num);
    printf("Read number: %d\n", num);
    fclose(file);
    return 0;
}
```

---

## 11. fseek

**Declaration:**
```c
int fseek(FILE *stream, long offset, int whence);
```

**Example:**
```c
#include <stdio.h>

int main() {
    FILE *file = fopen("test.txt", "r");
    fseek(file, 5, SEEK_SET);
    fclose(file);
    return 0;
}
```

---

## 12. ftell

**Declaration:**
```c
long ftell(FILE *stream);
```

**Example:**
```c
#include <stdio.h>

int main() {
    FILE *file = fopen("test.txt", "r");
    printf("Current position: %ld\n", ftell(file));
    fclose(file);
    return 0;
}
```

---

## 13. rewind

**Declaration:**
```c
void rewind(FILE *stream);
```

**Example:**
```c
#include <stdio.h>

int main() {
    FILE *file = fopen("test.txt", "r");
    rewind(file);
    fclose(file);
    return 0;
}
```

---

## 14. write

**Declaration:**
```c
ssize_t write(int file_descriptor, const void *buff, size_t count); (file descriptor --> 1 for stdout, 2 for stderr)
```

**Example:**
```c
#include <stdio.h>

int main() {
    write(1, ,
    fclose(file);
    return 0;
}
```
