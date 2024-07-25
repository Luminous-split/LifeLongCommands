## VBA Macro Development
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
