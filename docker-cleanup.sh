echo "Current disk usage:"
df $(fdisk -l | grep -o '^/dev/sd[a-z][0-9]' | head -n 1) -h
 
echo ""
echo "Removing old containers"
docker rm $(docker ps -qa --no-trunc --filter "status=exited" --filter "status=created") > /dev/null 2>&1

echo "Removing dangling images"
docker rmi $(docker images -f "dangling=true" -q) > /dev/null 2>&1

echo "Removing untaged images"
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi > /dev/null 2>&1

echo "Removing dangling volumes"
docker volume rm $(docker volume ls -qf dangling=true) > /dev/null 2>&1

echo ""
echo "---------------------------------"
echo "Disk usage after cleanup"
df $(fdisk -l | grep -o '^/dev/sd[a-z][0-9]' | head -n 1) -h
