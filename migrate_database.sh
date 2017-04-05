# Migrate database on moulinette VM

vagrant ssh -c "/usr/bin/python3.5 -u /vagrant/moulinette/manage.py migrate"
vagrant ssh -c "/usr/bin/python3.5 -u /vagrant/moulinette/manage.py makemigrations"

