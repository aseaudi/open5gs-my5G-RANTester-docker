echo "stop all dockers"
docker stop $(docker ps -a -q) 
echo "remove all dockers"
docker rm $(docker ps -a -q)
echo "docker ps -a"
docker ps -a
