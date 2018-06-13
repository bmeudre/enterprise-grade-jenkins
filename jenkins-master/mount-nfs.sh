#!/bin/bash

sudo mount -t $MOUNT_TYPE -o $MOUNT_OPTIONS $MOUNT_VOLUME /var/jenkins_home

sudo chmod -R 777 /var/jenkins_home

/usr/local/bin/jenkins.sh $@
