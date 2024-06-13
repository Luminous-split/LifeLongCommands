# Routing
## In msfconsole
Autoroute (outside meterpreter session)
"/usr/share/metasploit-framework/modules/post/multi/manage/autoroute.rb"
```
run autoroute -s 10.10.10.0/20 3
```
route add (Inside meterpreter session)
"/usr/share/metasploit-framework/lib/rex/post/meterpreter/extensions/stdapi/net/route.rb"
```
route add 10.10.10.0 255.255.255.0 1,2,3(session id)
```


# Proxy
## Metasploit 



# SSH Port Forwarding 

## Discovering Alive Hosts from Compormised Machine
```
metasploit windows/gather/arp_scanner
```
### Window
powershell
```
1..254 | ForEach-Object { $ip = "192.168.1.$_"; if (Test-Connection -ComputerName $ip -Count 1 -Quiet) { Write-Output "$ip is reachable" } else { Write-Output "$ip is unreachable" } }
```

### Linux
```
for i in {1..254}; do (ping -c 1 192.168.1.${i} | grep "bytes from" &); done;
```


# Important!!
- Please take note 192.168.1.100 as attacking machine(my machine) , 192.168.1.110 as compromised machine(victim 1), 192.168.2.100 as internal machine(victim 2)
## Direct 
- You want to access a web server running on 192.168.2.100 on port 80 through compromised machine 192.168.1.100
- Take note that !!! 8080 "-L 8080:" !!! is ssh command executing machine localhost port 
```
ssh -L 8080:192.168.2.100:80 compromised_machine@192.168.1.100
```

## Reverse

- You want to make a localhost port 80 on your "ssh command executing machine" accessible from 192.168.1.100 on port 8080.

```
ssh -R 8080:localhost:80 compromised_machine@192.168.1.100
```

## 
