sudo apt-get update
echo "*** START POSTGRESQL"

sudo apt-get --yes install postgresql
sudo apt-get --yes install postgresql-contrib
sudo apt-get --yes install postgresql-client

service postgresql status
service postgresql start

su - postgres 
psql -U postgres -d postgres --command "create database prod;"
psql -U postgres -d postgres --command "alter user postgres with password 'foobar';"

# restart postgresql service for changes to take effect
sudo service postgresql restart

echo "*** DONE"
