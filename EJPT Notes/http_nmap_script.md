## HTTP
```
nmap --script http-enum
nmap --script http-headers
nmap --script http-methods --script-args http-methods.url-path=/webdav/
```

## others
```
msfconsole auxillary/scanner/http/http_version
msfconsole auxillary/scanner/http/brute_dirs
```
