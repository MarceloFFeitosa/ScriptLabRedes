#!/bin/bash

# Loop para criar usuários
while true; do
    read -p "Digite o nome do usuário a ser criado: " username

    read -s -p "Digite a senha para o usuário $username: " password
    echo
    # Cria o usuário
    useradd -m -s /bin/bash "$username"
    
    echo "$username:$password" | chpasswd

    echo "Usuário $username criado com sucesso."
done
