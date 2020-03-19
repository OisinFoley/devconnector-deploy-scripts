# should be run as part of 'update_devconnector_ec2_instance.sh'

# stop and restart both pm2 and nginx
gnome-terminal --working-directory='Downloads' -e "bash -c 'cd \"AWS_pem_key\";ssh -i mern_devconnector.pem $ssh_hostname \"cd deploy; pm2 stop LONG_RUNNING_TASK; pm2 delete LONG_RUNNING_TASK; sudo systemctl stop nginx; sudo systemctl start nginx; NODE_ENV=production pm2 start --no-autorestart --name LONG_RUNNING_TASK npm -- run server; \"; exec $SHELL'"

