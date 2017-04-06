# Migrate database on moulinette VM

vagrant ssh -c "/usr/bin/python3.5 -u /vagrant/manage.py makemigrations"
vagrant ssh -c "/usr/bin/python3.5 -u /vagrant/manage.py migrate"

