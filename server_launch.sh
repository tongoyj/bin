#!/bin/sh -eix

email="my@email.com" # The email address for your RightScale 
pswd="password" # Your User's password 
account="0001" # Account ID

curl -v -S -s -i -H X_API_VERSION:1.5 -c mycookie -X POST -d "email=$email" -d "password=$pswd" -d account_href=/api/accounts/"$account" https://us-3.rightscale.com/api/session

sleep 5

echo "Launching Server Now..."

curl -i -H X_API_VERSION:1.5 -b mycookie -X POST https://my.rightscale.com/api/servers/1059099003/launch.xml

echo "Server is booting and will be operational shortly..."
