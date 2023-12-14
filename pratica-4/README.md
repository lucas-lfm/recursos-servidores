# INSTRUÇÕES PARA A REALIZAÇÃO DA PRÁTICA 4 - SERVIDOR WEB APACHE

Nesse ponto da disciplina vamos aprender a instalar e configurar um servidor Web para hospedar sites e recursos Web em nossa máquina servidora. Vamos trabalhar com o Apache HTTP Server em nosso servidor Ubuntu Server, entendendo como podemos configurá-lo de forma básica para prover recursos e sites Web dentro de nossa rede interna (o mesmo procedimento é feito em serviços de hospedagem online).

Neste repositório, na pasta [`sites`](pratica-4/sites) vocês encontrarão dois diretórios com exemplos de sites para utilizarem como teste de hospedagem em nosso servidor. Então, inicialmente atualizem o repositório local com o comando `git pull` dentro do diretório `recursos-servidores` na máquina virtual servidora. Após isso, prossigam com a realização desta prática, seguindo os passos abaixo:

1. Atualize os repositórios do sistema: `$ sudo apt update`

2. Instale o Apache HTTP Server: `$ sudo apt install apache2`

3. Verifique o status do serviço apache2: `$ systemctl status apache2`
   
> A saída deve ser semelhante à imagem abaixo, mostrando que o serviço está em execução.
<img src="/pratica-4/imagens/apache1.png">

4. Agora seria o momento de criar os diretórios para armazernar e organizar os recursos dos nossos sites. No Unbuntu Server, esses diretórios devem ser colocados na pasta `/var/www/`. Então, se queremos hospedar um site chamado `site1.com` devemos criar um diretório para ele dentro dessa pasta, como por exemplo: `/var/www/site1.com/`. No entanto, vocês podem simplesmente copiar os diretórios presentes neste repositório, na pasta `sites`:

> Dentro da pasta `recursos-servidores`, com o repositório atualizado:
>> `$ sudo cp pratica-4/sites/`
