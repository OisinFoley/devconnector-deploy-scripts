# devconnector-deploy-scripts

## Scripts to automatically update the codebase for a running devconnector repo on an EC2 instance, including uploading static assets and restarting PM2 and nginx.

To run, go to the root of this repo and run `index.sh`

If you're not the author and wish to use this yourself, you will need to update the instanceId specified in `fetch_ec2_ssh_hostname.sh` as well as the directories specified in each of the 4 scripts in the `/scripts` directory.
