#!/bin/bash

# Criando Grupos
groupadd admin_group
groupadd dev_group
groupadd hr_group

# Criando Usuários e atribuindo-os aos grupos
useradd -m -g admin_group -s /bin/bash admin
useradd -m -g dev_group -s /bin/bash developer
useradd -m -g hr_group -s /bin/bash hr_user

# Definindo Senhas para os Usuários
echo "admin:senha123" | chpasswd
echo "developer:senha123" | chpasswd
echo "hr_user:senha123" | chpasswd

# Criando Diretórios
mkdir -p /home/admin/files
mkdir -p /home/developer/projects
mkdir -p /home/hr_user/documents

# Atribuindo Permissões
chmod 700 /home/admin/files
chmod 755 /home/developer/projects
chmod 750 /home/hr_user/documents

# Atribuindo permissões aos usuários
chown admin:admin_group /home/admin/files
chown developer:dev_group /home/developer/projects
chown hr_user:hr_group /home/hr_user/documents

# Imprimir um resumo das operações realizadas
echo "Usuários criados: admin, developer, hr_user"
echo "Grupos criados: admin_group, dev_group, hr_group"
echo "Diretórios e permissões configuradas"
