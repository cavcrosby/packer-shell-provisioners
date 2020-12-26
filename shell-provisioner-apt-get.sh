#!/bin/bash

sleep 30
echo "!!! Start of provisioner script !!!"
echo $SSH_PASSWORD | sudo -S apt-get update
echo $SSH_PASSWORD | sudo -S apt-get dist-upgrade --assume-yes
wget "http://$PACKER_HTTP_ADDR/packerbuild.conf"
echo $SSH_PASSWORD | sudo -S mv ./packerbuild.conf /etc/
echo "!!! End of provisioner script !!!"