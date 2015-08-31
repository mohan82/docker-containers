# Port forward port 22 to 8022 as ssh ports are blocked normally

docker run  -p 8082:22 -d --name server-b ssh-server

#Run ssh  client 
docker run  -d --name server-a ssh-client
