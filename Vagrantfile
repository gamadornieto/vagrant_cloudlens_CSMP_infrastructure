# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Deploy Docker Registry .52
  config.vm.define "registry" do |r|
      r.vm.box = "ubuntu/bionic64"
      # Following line requires Vagrant vagrant-disksize plugin
      r.disksize.size = "60GB"
      r.vm.hostname = "registry"
      r.vm.network "private_network", ip: "192.168.241.52"
      config.vm.provider "virtualbox" do |v|
          v.memory = 4096
          v.cpus = 1
      end
      # This is to avoid SSH Permission denied (publickey,gssapi-keyex,gssapi-with-mic) error since Vagrant default overwrites ssh
      config.vm.synced_folder ".", "/opt/vagrant",  mount_options: ["dmode=775"]
      config.vm.provision :shell, path: "bootstrap_vm_U_1804_no_prerequisites.sh"
    end

    # Deploy N Machines to install CSMP Docker Swarm .53, .54 .55
    J = 3
    (1..J).each do |machine_id|
      config.vm.define "U#{machine_id}" do |u|
         u.vm.box = "ubuntu/bionic64"
         u.vm.hostname = "U#{machine_id}"
         u.vm.network "private_network", ip: "192.168.241.#{52+machine_id}"
         config.vm.provider "virtualbox" do |v|
             v.memory = 8192
             v.cpus = 4
         end
         config.vm.synced_folder ".", "/opt/vagrant",  mount_options: ["dmode=775"]
         config.vm.provision :shell, path: "bootstrap_vm_U_1804_no_prerequisites.sh"
      end
    end
end
