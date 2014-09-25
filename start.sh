echo "Prepare for the ansible env: dockerfile/ansible and several ubuntu hosts"
echo "run 'stop.sh' if they already started before"
echo "You will enter into bash for ansible environment (inside docker container)"
echo ""
docker run -d --name haproxy -p :1080 -p :80 larrycai/ubuntu-sshd 
docker run -d --name web1 larrycai/ubuntu-sshd 
docker run -d --name web2 larrycai/ubuntu-sshd 
docker run -d --name database larrycai/ubuntu-sshd 
docker run -it --link haproxy:haproxy_1 \
               --link web1:web1_1 \
               --link web2:web2_1 \
               --link database:database_1 \
               --volume `pwd`:/data \
               dockerfile/ansible
               
