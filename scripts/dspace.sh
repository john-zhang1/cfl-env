#!/bin/bash

. /vagrant/etc/conf.sh


# make the dspace web app and data dirs
mkdir -p "$DSPACE_RUN"
mkdir -p "$DSPACE_DATA" 
chown -R tomcat:tomcat "$DSPACE_RUN" "$DSPACE_DATA"

# point tomcat at the dspace web app location
cp -r /vagrant/etc/Catalina/localhost/*.xml /usr/share/tomcat/conf/Catalina/localhost

# build the dspace install as the vagrant user
cd "$DSPACE_SRC" 
sudo -u vagrant  /vagrant/bin/build.sh

# restart tomcat
systemctl restart tomcat







