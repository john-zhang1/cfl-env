# Java Environment
MAVEN_PROFILE=vagrant
MAVEN=mvn
ANT=ant
TOMCAT=/usr/share/tomcat
export ANT_OPTS="-Xms128m -Xmx800m"


# DSpace Paths
DSPACE_GIT="git@github.com:john-zhang1/cfl-dspace"
DSPACE_SRC=/vagrant/cfl-dspace
DSPACE_RUN=/srv/cfl/dspace
DSPACE_DATA="/mnt/cfldata/5x-assetstore0"

# DSpace Database Configuration
DB_HOST=localhost
DB_ADMIN=libacct
DB_ADMIN_PASS=libacct

# Currently using the same name for user and db
DB_NAME=dspace
DB_PASS=dspace

DB_EXPORT="/vagrant/downloads/cfl-${MAVEN_PROFILE}-dump.sql"
