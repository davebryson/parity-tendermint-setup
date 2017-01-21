Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.network "forwarded_port", guest: 8540, host: 8540
  config.vm.network "forwarded_port", guest: 8541, host: 8541

  config.vm.provision "shell", path: "vagrant/setup-parity.sh"
  config.vm.synced_folder "setup/", "/home/ubuntu/setup"

  config.vm.provider "virtualbox" do |v|
    v.memory = 3072
  end
end
