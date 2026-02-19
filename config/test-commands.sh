#!/bin/bash
# Commands executed inside the PRIVATE instance (nat-test-instance) via bastion
# Expected checkip output: 63.182.23.234 (NAT Gateway Elastic IP)

curl http://checkip.amazonaws.com
curl -I https://www.google.com
ping -c 4 8.8.8.8

# Inbound test executed from local machine (should timeout):
# ssh -i ~/Downloads/lab-new-key.pem ec2-user@63.182.23.234
