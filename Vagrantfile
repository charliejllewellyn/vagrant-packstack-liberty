# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define "openstack-dev" do |pssjavabase|
  end
  
  config.vm.box = "openstackbasebox"

  # forward used ports
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.network "forwarded_port", guest: 8777, host: 8777
  config.vm.network "forwarded_port", guest: 8774, host: 8774


  config.vm.provider "virtualbox" do |vb|
    vb.name = "openstack-dev"
    vb.memory = 4096
  end
  config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
  config.vm.provision "file", source: "conf", destination: "/tmp/conf"
  config.vm.provision "shell", path: "configure_openstack.sh"
  
end
