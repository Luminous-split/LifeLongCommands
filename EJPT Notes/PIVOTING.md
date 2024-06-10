# SSH Port Forwarding 

## Wompormised Window
create bat file
```
@echo off
for /L %%i in (1,1,254) do (
    start "" ping -n 1 192.168.1.%%i | find "Reply"
)

```





## Direct 
```
You want to access a web server running on 192.168.1.100 on port 80 through an SSH server ssh.example.com.


ssh -L 8080:192.168.1.100:80 user@ssh.example.com
```


## Reverse
```
You want to make a local web server running on localhost port 3000 accessible from ssh.example.com on port 8080.


ssh -R 8080:localhost:3000 user@ssh.example.com
```
