# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|
  # Escolha da Box
  config.vm.box = "debian/bookworm64"

  # Configuração da VM
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = 1024
    vb.cpus = 2
  end

  # Configuração do nome da VM
  config.vm.define "p01-Julio01-Ryan02" do |aluno|
    aluno.vm.hostname = "Debian-Server-12"
    # Configuração de rede
    aluno.vm.network "private_network", ip: "192.168.57.10"
    aluno.vm.network "public_network", bridge: "enp2s0"

    aluno.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbooks/main.yaml"
      ansible.inventory_path = "playbooks/inventory.ini"
    end 
    
    aluno.vm.provider "virtualbox" do |vb|
      vb.name = "p01-Julio01-Ryan02"
    end
    
    # Configuração de discos da VM
    (0..2). each do |i|
      aluno.vm.disk :disk, size: "10GB", name: "disk-#{i}"
    end
  end
end
