dns=$(aws ec2 --region eu-west-1 describe-instances --instance-ids i-0ab017e47f45d583c --query 'Reservations[].Instances[].PublicDnsName')

dns=`echo "$dns" | cut -d'"' -f 2 | cut -d'[' -f 1 | cut -d']' -f 1 |  cut -d\  -f 2`

ssh_hostname=''
ssh_hostname="ubuntu@$(echo "$dns"|tr -d '\n')"
echo "ssh host name is: $ssh_hostname and is available under variable named ssh_hostname"

: '
Notes for when revisiting script later:

-d is delimiter - i.e. the char we want to filter
-f is number of occurances to delete for - i.e delete next 2 occurances of double-quote
Then, were just piping together the commands to remove the double-quotes, as well as opening and closing square-bracket. (response we get back from the request is a double-quoted string, wrapped in square-brackets, hence the above parsing

'

