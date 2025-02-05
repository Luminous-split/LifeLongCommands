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

## 3. strlen

**Declaration:**
```c
size_t strlen(const char *str);
```

**Example:**
```c
#include <stdio.h>
#include <string.h>

int main() {
    char text[] = "Hello";
    printf("Length: %lu\n", strlen(text));
    return 0;
}
```

---

## 4. strcpy

**Declaration:**
```c
char *strcpy(char *dest, const char *src);
```

**Example:**
```c
#include <stdio.h>
#include <string.h>

int main() {
    char src[] = "Hello";
    char dest[10];
    strcpy(dest, src);
    printf("Copied: %s\n", dest);
    return 0;
}
```

---

## 5. strcat

**Declaration:**
```c
char *strcat(char *dest, const char *src);
```

**Example:**
```c
#include <stdio.h>
#include <string.h>

int main() {
    char str1[20] = "Hello, ";
    char str2[] = "World!";
    strcat(str1, str2);
    printf("Concatenated: %s\n", str1);
    return 0;
}
```

---

## 6. strcmp

**Declaration:**
```c
int strcmp(const char *str1, const char *str2);
```

**Example:**
```c
#include <stdio.h>
#include <string.h>

int main() {
    char str1[] = "Hello";
    char str2[] = "World";
    
    if (strcmp(str1, str2) == 0)
        printf("Strings are equal.\n");
    else
        printf("Strings are different.\n");
    
    return 0;
}
```

---

## 7. malloc

**Declaration:**
```c
void *malloc(size_t size);
```

**Example:**
```c
#include <stdio.h>
#include <stdlib.h>

int main() {
    int *arr = (int *)malloc(5 * sizeof(int));
    if (arr == NULL) {
        printf("Memory allocation failed\n");
        return 1;
    }
    for (int i = 0; i < 5; i++) arr[i] = i * 10;
    for (int i = 0; i < 5; i++) printf("%d ", arr[i]);
    free(arr);
    return 0;
}
```

---

## 8. free

**Declaration:**
```c
void free(void *ptr);
```

**Example:**
```c
#include <stdio.h>
#include <stdlib.h>

int main() {
    int *ptr = (int *)malloc(sizeof(int));
    *ptr = 100;
    printf("Value: %d\n", *ptr);
    free(ptr);
    return 0;
}
```

---

## 9. fopen

**Declaration:**
```c
FILE *fopen(const char *filename, const char *mode);
```

**Example:**
```c
#include <stdio.h>

int main() {
    FILE *file = fopen("test.txt", "w");
    if (file) {
        fprintf(file, "Hello, File!\n");
        fclose(file);
    }
    return 0;
}
```

---

## 10. fclose

**Declaration:**
```c
int fclose(FILE *stream);
```

**Example:**
```c
#include <stdio.h>

int main() {
    FILE *file = fopen("test.txt", "r");
    if (file) {
        fclose(file);
    }
    return 0;
}
