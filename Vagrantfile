# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.network "forwarded_port", guest: 5000, host: 8080
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "fumaki-api"
  end
end
