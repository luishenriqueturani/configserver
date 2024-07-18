# configserver-luis-felipe-hubner
 Para a configuração dos servidores


## Configurando interação com os comandos

Para que haja uma interação com o terminal, o terminal te pede algo e você precisa responder a ele, é necessário o pacote expect.

```
sudo apt install expect
```

Cria-se um arquivo com os comandos que deve ser executado e é colocado respostas esperadas para cada pergunta do programa.

Como o arquivo não possui uma extensão reconhecido para executar, deve-se dar esta permissão a ele:

```
sudo chmod +x /caminho_do_arquivo/nome_do_arquivo.expect
```

E para finalmente ter ele iniciando com o sistema ele pode então ser adicionado ao script de startup do sistema.


## Para configurar o PM2 

Para configurar os projetos que rodam no pm2 para iniciar com o sistema, este pacote possui o comando:

```
pm2 startup
```

Ele varre o sistema em busca do systemd, que é o responsável por estes serviços, ele então cria um script específico para o seu sistema, como este: 

```
sudo env PATH=$PATH:/usr/bin /usr/local/lib/node_modules/pm2/bin/pm2 startup systemd -u teste --hp /home/teste
```

Este comando define variável de ambiente ao mesmo tempo que coloca o pm2 para iniciar o projeto com o sistema.


## Para a criação do serviço

Crie um arquivo de serviço novo em: /etc/systemd/system/

```
sudo nano /etc/systemd/system/startup.service
```

Neste arquivo deve ser adicionado o conteúdo do arquivo startup.service deste repositório. CTRL+O para salvar e CTRL+X para sair.

Recarregue os serviços já existentes e execute o novo com o comando enable para ativá-lo na reinicialização do sistema.

```
sudo systemctl daemon-reload
sudo systemctl enable startup.service
```

Para verificar o status

```
sudo systemctl status startup.service
```

Para ver os logs

```
journalctl -u startup.service
```