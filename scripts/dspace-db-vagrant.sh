# DSpace Server Installation and Setup
. /vagrant/etc/conf.sh

# install PostgreSQL (client+server)
yum install -y postgresql-server
postgresql-setup initdb;

# configure authentication 
cp /vagrant/etc/pg_hba.conf /var/lib/pgsql/data/pg_hba.conf
chown postgres:postgres /var/lib/pgsql/data/pg_hba.conf

# start up as a service
systemctl enable postgresql.service
systemctl start  postgresql.service

# create admin user, and dspace db
cat <<EOF | su - postgres -c psql
CREATE USER $DB_ADMIN WITH PASSWORD $DB_ADMIN_PASS SUPERUSER;
CREATE USER $DB_NAME WITH PASSWORD '$DB_PASS';
CREATE DATABASE $DB_NAME WITH OWNER=$DB_NAME ENCODING='UNICODE'
EOF

