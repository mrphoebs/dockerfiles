#!/bin/bash

docker kill $1
docker rm $1
docker run --name $1 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:5.6
echo "Sleeping for 10 seconds to allow mysql to start up"
sleep 10
docker exec -i $1 mysql -uroot -proot -e "create database $2"
docker exec -i $1 mysql -uroot -proot $2 < $3
