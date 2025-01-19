## Projeto de Administração de Sistemas Abertos

- **Professor**: Pedro Filho
- **Instituição**: IFPB - Campus João Pessoa
- **Curso**: Redes de Computadores P4/6
- **Alunos**: Júlio Caio Rodrigues do Santos e Ryan de Morais Correia

## 🔍 Sobre o Projeto:

**Estrutura**:
```bash
.
├── playbooks
│   ├── ansible.cfg
│   ├── inventory.ini
│   ├── main.yaml
│   ├── Passwords.txt
│   └── tasks
│       ├── conf_LVM
│       ├── conf_NFS
│       ├── conf_SSH
│       ├── conf_Sys
│       └── conf_users
├── README.md
└── Vagrantfile

```
### 💻 Tecnologias Utilizadas:

![Debian](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white)
![Vagrant](https://img.shields.io/badge/vagrant-%231563FF.svg?style=for-the-badge&logo=vagrant&logoColor=white) ![VirtualBox](https://img.shields.io/badge/VirtualBox-2F61B4.svg?style=for-the-badge&logo=VirtualBox&logoColor=white)![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)![Bash Script](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)

<br>

## 🚀 Como funciona?

<p>Nosso projeto automatiza a configuração de sistemas através de Vagrant e Ansible, permitindo a criação e gerenciamento de máquinas virtuais (VMs) e a configuração de diversos serviços de forma automatizada.
<br>
O playbook principal orquestra a execução das tasks responsáveis pela configuração do sistema, com a sequência lógica destas tarefas a serem aplicadas, garantindo uma automação eficiente e sem erros.
</p>
<main class="container">

**Como o Playbook Gerencia a Automação**

O playbook é projetado ao ser executado cria uma máquina virtual e faz o provisionamento dos recursos e configuração, desde a instalação de seus pacotes à criação de acessos, via senha e SSH. A execução do playbook segue as etapas abaixo:

**Privilégios de superusuário**: Usando a flag become: true, o playbook garante que todas as tarefas que exigem privilégios elevados (como instalação de pacotes e configuração de serviços) sejam executadas sem restrições.

Execução das Tasks: 
    O playbook invoca as tasks de maneira sequencial, conforme necessário para configurar a infraestrutura. As tasks executadas são:
    1. **conf_Sys**: Atualiza e configura o sistema básico, como pacotes essenciais e configurações de rede.<br>
    2. **conf_users**: Criação e configuração de usuários definidos no arquivo de variáveis, incluindo permissões para acesso via SSH.<br>
    3. **conf_SSH**: Ajustes no serviço SSH para garantir que as configurações de segurança estejam corretas.<br>
    4. **conf_LVM**: Gerenciamento de volumes lógicos, configurando o armazenamento e partições.<br>
    5. **conf_NFS**: Configuração do serviço NFS para compartilhamento de arquivos entre máquinas da mesma rede interna.<br>
    6. **monit.sh**: Arquivo para registrar logs de acesso ao servidor NFS, em **conf_NFS/monit.sh**
<br>
</main>

### ⬆️ Fazendo o deploy...

1. **Baixe o VirtualBox e instale o Vagrant**
    - <a href="https://developer.hashicorp.com/vagrant/install?product_intent=vagrant">Vagrant Docs</a>
    - <a href="https://www.virtualbox.org/wiki/Downloads">Virtual Box</a>

2. **Instale a box "generic/debian12"**  
   Comandos:  
   ```bash
   vagrant box add generic/debian12 --provider virtualbox
   vagrant up

---
## 🔑 Chaves dos Usuários & Acessos

Todas as chaves SSH possuem passphrases
    * A passphrase do user "julio" é "julio"
    * A passphrase do user "ryan" é "ryan"
    * Os usuários possuem senhas nativas, se for necessário é só utilizar o arquivo "Passwords.txt"

## 🌐 Collaborators:

- [![LinkedIn](https://img.shields.io/badge/-Júlio_Caio-blue?style=for-the-badge&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/julio-caio-r-santos/)](https://www.linkedin.com/in/julio-caio-r-santos/)
- [![LinkedIn](https://img.shields.io/badge/-Ryan_de_Morais-blue?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ryan-morais-correia-0abb94277) <br>

<br>
