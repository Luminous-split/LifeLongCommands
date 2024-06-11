# SSH Port Forwarding 

## Compormised Window
powershell
```
1..254 | ForEach-Object { $ip = "192.168.1.$_"; if (Test-Connection -ComputerName $ip -Count 1 -Quiet) { Write-Output "$ip is reachable" } else { Write-Output "$ip is unreachable" } }


```

## Compromised Linux
```
for i in {1..254}; do (ping -c 1 192.168.1.${i} | grep "bytes from" &); done;
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

## 
