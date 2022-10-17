#!/bin/bash

echo "start docker container : sshd_file_test"
docker restart -t 1 sshd_file_test

sleep 3

ip=`ifconfig | grep inet | grep -v grep | grep -v inet6 | grep -v 127.0.0.1 | awk -F' ' '{print $2}'`
echo "ip = "$ip

echo "ssh docker"
ssh -i ~/.ssh/id_rsa root@$ip -p 10184 -y
