# VAGRANT, ANSIBLE
Projeto de Administração de Sistemas Abertos
Professor = Pedro Filho
Instituição = IFPB \ Campus João Pessoa
Alunos = Júlio Caio Rodrigues do Santos e Ryan de Morais Correia

# CHAVES
Todas as chaves SSH possuem passphrases
A passphrase do user "julio" é "julio"
A passphrase do user "ryan" é "ryan"
Os usuários possuem senhas nativas, se for
necessário é só utilizar o arquivo "senhas"

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
Ele faz a chamada dos 5 playbooks, a baixo, dentro do VagrantFile
A configuração do Ansible está distribuída em 4 playbooks,
são eles: "conf-lvm.yaml", "conf-nfs.yaml", "conf-sistema.yaml", "conf-usuarios.yaml" e "conf-ssh.yaml"
1. O arquivo "conf-lvm.yaml" possui toda a configuração dos volumes lógicos. 
2. O arquivo "conf-nfs.yaml" possui toda a configuração do sistema de arquivos.
3. O arquivo "conf-sistema.yaml" possui a configuração de atualização do sistema
   operacional e do hostname. 
4. O arquivo "conf-usuarios.yaml" possui a configuração de "criação de users, grupos, 
   SUDO".
5. O arquivo "conf-ssh.yaml" possui toda a configuração do SSH. 

# PONTOS DO PROJETO
1. Nós temos que tornar o arquivo "monitoramento.sh" executável já dentro dos playbook "conf-sistema.yaml"
2. O usuário que o Ansible utilizar para rodar os comandos não pode ter senha, para automatizar. 
3. Tem que criar o arquivo "inventory.yaml" para o Ansible acessar as máquinas
4. O arquivo de monitoramento já está feito, porém ele foi realocado para o arquivo de configuração do NFS
5. Tudo está configurado até o tópico 2.5.5 
6. O arquivo reload.sh foi usado para destruir e construir a máquina
7. O diretório "chaves" foi criado para armazenar todas as chaves SSH
