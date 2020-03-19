# should be run as part of 'update_devconnector_ec2_instance.sh'

#upload contents of dev machine's /build directory to the remote instance's /build directory
rsync -ravze "ssh -i ~/Downloads/AWS_pem_key/mern_devconnector.pem" ~/Documents/React/devconnector/client/build/* $ssh_hostname:/home/ubuntu/deploy/client/build
