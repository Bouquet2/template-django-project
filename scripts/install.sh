#/usr/bin/env bash

admin_user="admin"
admin_pwd="password"
admin_email="$admin_user@example.com"

print_help () {
  echo "#################################################"
  echo "                     HELP                        "
  echo "#################################################"
  echo "You can connect to the VM by taping 'vagrant ssh'"
  echo "You can shutdown the VM by typing 'vagrant halt'"
  echo "You can relaunch the VM by typing 'vagrant up'"
  echo "You can delete the VM by typing 'vagrant destroy'"
  echo "You can verify that packages are up to date by typing 'vagrant provision'\n"
  echo "Django admin informations"
  echo "Username = $admin_user"
  echo "Password = $admin_pwd"
  # TODO Add help for launching Django application from command line
  # TODO Add help for migrating database 
  # TODO Add help for importing database
  # TODO ...
}

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get -y upgrade

# Installation de python et Django
apt-get install -y python3.5
apt-get install -y python3-pip  
pip3 install --upgrade pip
pip3 install django
pip3 install psycopg2

# Installation de postgresql
apt install -y python-dev
apt install -y libpq-dev 
apt install -y postgresql 
apt install -y postgresql-contrib

# Configuration de la BDD postgresql
DB_USER=moulinetteuser
DB_PWD=moulinette
DB_NAME=moulinette

service postgresql restart
sudo su - postgres -c psql <<EOF
CREATE DATABASE $DB_NAME;
CREATE USER $DB_USER WITH PASSWORD '$DB_PWD';

ALTER ROLE $DB_USER SET client_encoding TO 'utf8';
ALTER ROLE $DB_USER SET default_transaction_isolation TO 'read committed';
ALTER ROLE $DB_USER SET timezone TO 'UTC';

GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;
ALTER USER $DB_USER CREATEDB;
EOF

# Mise à jour de la base de données
/usr/bin/python3.5 /vagrant/manage.py makemigrations
/usr/bin/python3.5 /vagrant/manage.py migrate

# Create user admin
echo "from django.contrib.auth.models import User; User.objects.filter(email='$admin_email').delete(); User.objects.create_superuser('$admin_user', '$admin_email', '$admin_pwd')" |/usr/bin/python3.5 /vagrant/manage.py shell


print_help
