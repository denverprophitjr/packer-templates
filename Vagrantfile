# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "virtualbox" do |node|
    node.vm.hostname = "centos73-virtualbox"
    node.vm.box = "./boxes/centos-7.3-x86_64-virtualbox.box"

    node.vm.synced_folder ".", "/vagrant", disabled: true

    config.vm.provider :virtualbox do |v|
      v.memory = 1024
      v.cpus = 1
    end
  end

  config.vm.define "libvirt" do |node|
    node.vm.hostname = "centos73-libvirt"
    node.vm.box = "./boxes/centos-7.3-x86_64-libvirt.box"

    node.vm.synced_folder ".", "/vagrant", disabled: true

    config.vm.provider :libvirt do |v|
      v.memory = 1024
      v.cpus = 1
    end
  end

  config.vm.define "vmware" do |node|
    node.vm.hostname = "centos73-vmware"
    node.vm.box = "./boxes/centos-7.3-x86_64-vmware.box"

    node.vm.synced_folder ".", "/vagrant", disabled: true

    config.vm.provider :vmware_workstation do |v|
      v.vmx["memsize"] = "1024"
      v.vmx["numvcpus"] = "1"
    end
  end

end
