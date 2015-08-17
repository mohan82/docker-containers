#!/usr/bin/env bash
sudo docker ps -a -q |xargs sudo docker rm
sudo docker rmi $(sudo docker images | grep "<none>" | awk '{print($3)}')
