#!/bin/bash

# install follow if it doesnt exist
if [ ! -e "/usr/local/follow/follow.jar" ]; then
	mkdir -p /usr/local/follow
	wget https://github.com/downloads/HallwayTech/follow/follow-1.7.5.jar -O /usr/local/follow/follow.jar
fi

java -jar /usr/local/follow/follow.jar /opt/awscam/greengrass/ggc/var/log/system/router.log /opt/awscam/greengrass/ggc/var/log/system/runtime.log
