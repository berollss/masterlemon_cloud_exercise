#!/bin/bash

HOST="18.203.231.0"
USER="ec2-user"
KEY="../../lab_cloud_key2.pem"

ssh -i $KEY $USER@$HOST \
    "sudo yum install docker -y && sudo service docker start && sudo docker run -d -p 80:8888 bertollss/lab-app"
