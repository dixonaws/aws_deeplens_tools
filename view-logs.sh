#!/bin/bash

AWS_ACCOUNT=`aws sts get-caller-identity --output text --query 'Account'`
LOG_FILES="/opt/awscam/greengrass/ggc/var/log/user/us-east-1/$AWS_ACCOUNT/deeplens-object-detection.log /opt/awscam/greengrass/ggc/var/log/system/router.log /opt/awscam/greengrass/ggc/var/log/system/runtime.log"

echo Using AWS account ID: $AWS_ACCOUNT

# install follow if it doesnt exist
if [ ! -e "/usr/local/follow/follow.jar" ]; then
	mkdir -p /usr/local/follow
	wget https://github.com/downloads/HallwayTech/follow/follow-1.7.5.jar -O /usr/local/follow/follow.jar
fi

java -jar /usr/local/follow/follow.jar $LOG_FILES

#java -jar /usr/local/follow/follow.jar /opt/awscam/greengrass/ggc/var/log/system/router.log /opt/awscam/greengrass/ggc/var/log/system/runtime.log
