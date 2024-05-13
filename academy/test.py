import requests

while 1:
    x = requests.get("http://94.237.49.138:50837/lucky.php/").text
    print(x)
