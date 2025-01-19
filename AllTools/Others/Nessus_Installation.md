## Use binutils in arch
sudo pacman -S binutils

## .deb
ar x Nessus-<version>-debian6_arm64.deb

## 
tar -xvf data.tar.gz -C /tmp/nessus
mv /tmp/nessus/* /opt/nessus

## Dependencies
sudo pacman -S lib32-glibc lib32-openssl lib32-zlib

## Create service
```[Unit]
Description=Nessus Daemon
After=network.target

[Service]
ExecStart=/opt/nessus/sbin/nessusd
Restart=always

[Install]
WantedBy=multi-user.target
```

## Enable and start
```sudo systemctl enable --now nessus
```
