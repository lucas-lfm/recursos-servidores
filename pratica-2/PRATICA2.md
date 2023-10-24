# INSTRUÇÕES PARA A REALIZAÇÃO DA PRÁTICA 2 - COMPARTILHAMENTO DE CONEXÃO

Para que as configurações de compartilhamento de conexão, realizadas na prática passada (configuração básica do Ubuntu), sejam sempre aplicadas na inicialização do sistema e não sejam perdidas, crie um serviço de inicialização. O script de configuração básica apresentado aqui é genérico, em um ambiente real você deve adequá-lo às necessidades de proteção da rede.

1. Dentro do diretório "pratica-2", copie o arquivo `script-conexao.sh` para o diretório `/etc/init.d/`: `$ sudo cp script-conexao.sh /etc/init.d/`

2. Adicione permissão de execução ao arquivo `script-conexao.sh` copiado para a pasta `/etc/init.d/`: `$ sudo chmod +x /etc/init.d/script-conexao.sh`

3. Ainda dentro do diretório "pratica-2", copie o arquivo `script-conexao.service` para o diretório `/etc/systemd/system/`: `$ sudo cp script-conexao.service /etc/systemd/system/`

4. Habilite e execute o serviço criado:
  `$ sudo systemctl enable script-conexao.service`
  `$ sudo systemctl daemon-reload`
  `$ sudo systemctl start script-conexao.service`
  `$ sudo systemctl status script-conexao.service`

5. Verifique se as configurações realizadas foram aplicadas após a execução do serviço criado: `$ sudo iptables -t nat -L`

6. Teste o compartilhamento de conexão a partir de uma máquina cliente conectada à rede interna. Teste também reiniciar o servidor para verificar se as configurações são mantidas.
