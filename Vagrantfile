# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  # config.vm.box = "generic/debian10"
  config.vm.box = "generic/ubuntu2010"

  config.vm.network "private_network", ip: "192.168.130.200"

  config.vm.provider :vmware_desktop do |v|
    v.vmx["memsize"] = "4096"
    v.vmx["numvcpus"] = "2"
    v.vmx["cpuid.coresPerSocket"] = "1"
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y sshpass
  SHELL
end
