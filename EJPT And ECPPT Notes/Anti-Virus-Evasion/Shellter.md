## Shellter
- Install Shellter
```
sudo apt-get install shellter
```
- Manually from
```
https://www.shellterproject.com/download/
```


- Install wine
```
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo mv winehq.key /usr/share/keyrings/winehq-archive.key
```
```
wget -nc https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources
sudo mv winehq-bullseye.sources /etc/apt/sources.list.d/
```
```
echo "deb http://ftp.us.debian.org/debian bullseye main " | sudo tee -a /etc/apt/sources.list
sudo apt update
```
```
sudo apt install --install-recommends winehq-stable
```
- If error occurs, install the dependencies
```
sudo apt install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libxml2:i386 libasound2-plugins:i386 libsdl2-2.0-0:i386 libfreetype6:i386 libdbus-1-3:i386 libsqlite3-0:i386
```
```
wine --version
winecfg
```
- And we are gtg

- UPX encode
```
upx --best --ultra-brute -f backdoor.exe -o backdoor.exe
```
