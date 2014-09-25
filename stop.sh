echo "remove docker container 'larrycai/ubuntu-sshd'"
docker ps -a | grep larrycai/ubuntu-sshd | awk '{ print $1 }' | xargs docker rm -f 
