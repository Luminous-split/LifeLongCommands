# Tshark
```
tshard -D (list interfaces)
tshark -r "pcapfile.pcap"

```
## Filtering Rules
```
tshark -r HTTP_traffic.pcap -Y 'ip.src==192.168.252.128 && ip.dst==52.32.74.91'
tshark -r HTTP_traffic.pcap -Y 'http.request.method==GET' -Tfields -e frame.time -e ip.src -e http.request.full_uri
tshark -r HTTP_traffic.pcap -Y 'http contains password'
tshark -r HTTP_traffic.pcap -Y 'http.request.method=GET && http.host=www.nytimes.com' -Tfields -e ip.dst
tshark -r HTTP_traffic.pcap -Y 'ip.src==192.168.252.128 && http' -Tfields -e http.user_agent
```
## Wifi Pentesting
```
shark -r WiFi_traffic-pcap -Y 'wlan.fc.type_subtype==0x000c'
tshark -r WiFi_traffic-pcap -Y 'wlan. fc. type_subtype==8' -Tfields -e wlan. ssid -e wlan.bssid
tshark -r WiFi_traffic.pcap -Y 'wlan.ssid=LazyArtists' -Tfields -e wlan.bssid
tshark -r WiFi_traffic.pcap -Y 'wlan.ssid==Home_Network' -Tfields -e wlan_radio.channel
tshark -r WiFi_traffic.pcap -Y 'wlan.fc.type_subtype==0x000c' -Tfields -e wlan.ra
tshark -r WiFi_traffic.pcap -Y 'wlan. ta==5c:51:88:31:a0:3b && http' -Tfields -e http.user_agent
```

