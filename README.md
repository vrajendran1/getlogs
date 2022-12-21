# getlogs
bash script to get logs from an Cloud 2.0 environment

confluence link : https://provenir.atlassian.net/wiki/spaces/CE/pages/3535667984/Cloud+2.0+get+all+logs+from+Env+pods

Steps :
1) get into cloud 2.0 location specific docker eg: produs,prodsng1,etc
2) copy code into docker location
3) import kubectl config
4) run script with additional parameter for "environment/namespace"
command: sh getlogs.sh ce-uuiid-uuiid-uuuiidd
