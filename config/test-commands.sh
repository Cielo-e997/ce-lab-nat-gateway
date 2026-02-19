#!/bin/bash
# Commands executed INSIDE the private EC2 instance (nat-test-instance)
# to validate outbound access through the NAT Gateway.

curl http://checkip.amazonaws.com
curl -I https://www.google.com
ping -c 4 8.8.8.8

# Inbound test executed from local machine (should timeout):
# ssh -i ~/Downloads/lab-new-key.pem ec2-user@63.182.23.234
