# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"
#VM_BOX = "ubuntu/precise64"
#VM_BOX = "ubuntu/trusty64"
#VM_BOX = "ubuntu/xenial64"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "puppet" do |puppet|
    puppet.vm.box = VM_BOX
    puppet.vm.hostname = "puppet"
    puppet.vm.network "private_network", ip: "192.168.50.40"
    puppet.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
    end
    puppet.vm.provision "shell", path: "provision.sh"
    puppet.vm.provision "shell", path: "master.sh"
  end

  config.vm.define "agent" do |agent|
    agent.vm.box = VM_BOX
    agent.vm.hostname = "agent"
    agent.vm.network "private_network", ip: "192.168.50.42"
    agent.vm.provision "shell", path: "provision.sh"
    agent.vm.provision "shell", path: "agent.sh"
  end
end