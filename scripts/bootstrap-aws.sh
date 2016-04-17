#!/bin/bash


# Set up AWS utils
yum install -y python-pip
pip install awscli

# Set up hostname prompt
curl -o /etc/profile.d/prompt.sh https://raw.githubusercontent.com/OULibraries/ltp-utils/master/aws/prompt.sh



# yum install -y postfix

# cat <<EOF >> /etc/postfix/main.cf
# myorigin = ou.edu
# relayhost = asmtp.ou.edu
# inet_interfaces = loopback-only
# EOF
