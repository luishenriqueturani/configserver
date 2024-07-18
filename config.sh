sudo nano /etc/network/interfaces
##aqui eu pego os comandos que tem escrito dentro desse arquivo e executo (eu salvo nesse arquivo os comandos, mas se precisar salvar em outro não tem problema)

sudo nano /etc/resolv.conf
## nesse arquivo eu adiciono essas duas linhas aqui e salvo:
* nameserver 8.8.8.8
* nameserver 8.8.4.4


sudo surfshark-vpn
## aqui é ativando a vpn, que tem aqueles steps de digitar "20" e "enter""enter"...

su robo
#trocando pro usuario que tem os apps node

cd ~/applications/nodebot/
pm2 start index.js --name=nodebot --log-date-format 'DD-MM-YYYY HH:mm:ss'
cd ../wpp-api/
pm2 start app-multiple-account.js --name=wpp-api --log-date-format 'DD-MM-YYYY HH:mm:ss'
##inicializando os apps node por fim...