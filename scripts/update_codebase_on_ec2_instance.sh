# should be run as part of 'update_devconnector_ec2_instance.sh'

# update repository codebase on instance
gnome-terminal --working-directory='Downloads' -e "bash -c 'cd AWS_pem_key;ssh -i mern_devconnector.pem $ssh_hostname \"cd deploy; git pull origin master -f; cp ../prod_package.json/package.json ./; cd client; mkdir build; \"; exec $SHELL'"

