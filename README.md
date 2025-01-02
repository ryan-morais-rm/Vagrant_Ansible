# Vagrant, Ansible
Projeto de Administração de Sistemas Abertos
Professor = Pedro Filho
Instituição = IFPB \ Campus João Pessoa
Alunos = Júlio Caio e Ryan de Morais


# VAGRANT
Para configuração do vagrant, realize os seguintes pontos:
1. Instale a box, "generic/debian12"
   Comandos: 
   vagrant box add generic/debian12 --provider virtualbox
   vagrant up 
2. Verifique se existe a box no sistema
   vagrant box list


# PLAYBOOKS
Foi realizada a adoção de um playbook mestre, chamado "playbook-principal.yaml"
Ele faz a chamada dos 4 playbooks, a baixo, dentro do VagrantFile
A configuração do Ansible está distribuída em 4 playbooks,
são eles: "conf-lvm.yaml", "conf-nfs.yaml", "conf-sistema.yaml", "conf-usuarios.yaml"

1. O arquivo "conf-lvm.yaml" possui toda a configuração dos volumes lógicos. 
2. O arquivo "conf-nfs.yaml" possui toda a configuração do sistema de arquivos.
3. O arquivo "conf-sistema.yaml" possui a configuração de atualização do sistema
   operacional e do hostname. 
4. O arquivo "conf-usuarios.yaml" possui a configuração de "criação de users, grupos, 
   SUDO, SSH e a mensagem de saudação."


