# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :forwarded_port, guest: 3000, host: 3001
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.ssh.forward_agent = true
  config.vm.provision :shell, path: "scripts/base_packages.sh"
  config.vm.provision :shell, path: "scripts/databases.sh"
  config.vm.provision :shell, path: "scripts/rubies.sh"

  # `personal.sh` can be commented out if someone else
  # is using this box, though you should look to see
  # if there's anything you'd like out of it
  config.vm.provision :shell, path: "scripts/personal.sh"
end
