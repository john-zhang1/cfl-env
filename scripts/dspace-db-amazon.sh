#!/bin/bash
. /vagrant/etc/conf.sh


# DSpace Client-Only Installation and Setup
yum install http://yum.postgresql.org/9.4/redhat/rhel-6-x86_64/pgdg-redhat94-9.4-1.noarch.rpm
yum install -y postgresql94 postgresql94-jdbc

# db admin account already exists, so no need to create that here. 

# Create DSPace Database

cat <<EOF | psql -U $DB_ADMIN -h $DB_HOST -d postgres
CREATE USER $DB_NAME WITH PASSWORD '$DB_PASS';
-- have to be a member of a role before we can give it a db 
GRANT $DB_NAME TO $DB_ADMIN;
CREATE DATABASE $DB_NAME WITH OWNER=$DB_NAME ENCODING='UNICODE';
REVOKE $DB_NAME FROM $DB_ADMIN;
EOF



