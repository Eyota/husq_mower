Build a docker container which launches a webserver that connects to Husqvarna API and gets the mower's information (on json format) or sends commands to the mower
Usage:
docker build . -t mower 
docker run -e LOGIN="yourAPIkey" -e PASSWORD="yourToken" -p [public port]:80 -d --restart=always mower
In a browser, type one of the following URL
[address]:[port]/status
[address]:[port]/start
[address]:[port]/park

Credits to chrisz for the original script, updated by myself for the lastest Husqvarna API
https://github.com/chrisz/pyhusmow/blob/master/pyhusmow/husmow.py 