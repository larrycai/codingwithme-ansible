echo "Prepare for the ansible env"
docker run -d --name haproxy larrycai/ubuntu-sshd 
docker run -d --name web1 larrycai/ubuntu-sshd 
docker run -d --name web2 larrycai/ubuntu-sshd 
docker run -d --name database larrycai/ubuntu-sshd 
docker run -it --link haproxy:haproxy_1 \
               --link web1:web1_1 \
               --link web2:web2_1 \
               --link database:database_1 \
               --volume `pwd`:/data \
               dockerfile/ansible
               
