# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "hashicorp/packstack-liberty"
  
  # forward used ports
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.network "forwarded_port", guest: 6080, host: 6080
  config.vm.network "forwarded_port", guest: 8777, host: 8777
  config.vm.network "forwarded_port", guest: 8774, host: 8774


  config.vm.provider "virtualbox" do |vm|
    vm.name = "openstack-dev"
    vm.memory = 8192
    vm.cpus = 2
  end
  config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
  config.vm.provision "shell", path: "configure_openstack.sh"
  
end
