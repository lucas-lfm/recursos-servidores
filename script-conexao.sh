#!/bin/bash

### BEGIN INIT INFO 
# Provides: script-conexao 
# Default-Start: 2 3 4 5 
# Default-Stop: 0 1 6
# Short-Description: Script de compartilhamento de conexão
# Description: Habilita o compartilhamento de conexão para a rede interna
### END INIT INFO

# Ativar módulos
modprobe iptable_nat

# Ativar roteamento de pacotes entre as interfaces
echo 1 > /proc/sys/net/ipv4/ip_forward

# Redirecionar conexões
sudo iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -o enp0s3
