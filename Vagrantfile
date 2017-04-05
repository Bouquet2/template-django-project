VAGRANT_FILE_API_VERSION = '0.1.0'

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network :forwarded_port, guest: 8000, host: 8000
  config.vm.hostname = "moulinette"
  
  # Vagrant is syncing current folder by default
  # TODO specify project folder on user machine	
  # config.vm.synced_folder "/home/valentin/PycharmProjects/supertest", "/home/moulinette/supertest"

  config.vm.provision 'shell', path: 'scripts/install.sh'
  # config.vm.provision 'shell', path: 'scripts/init_database.sh
end
