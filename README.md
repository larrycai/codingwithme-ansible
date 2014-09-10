== Introduction ==

this is local development environment for ansible 

Inside boot2docker, use fig to start the env. ansible + ubuntu base

    $ fig -f fig-ansible.yml run ansible bash

Inside ansible
    
    $ ./update.sh # update hosts/id_rsa for permssion
    $ ansible all -m setup 
 
