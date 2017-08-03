# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.synced_folder "fumaki/", "/home/ubuntu/fumaki"
# config.vm.provision "shell", path: "provision.sh"
end
