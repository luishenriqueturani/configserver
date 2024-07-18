sudo ./etc/network/interfaces.sh
##aqui eu pego os comandos que tem escrito dentro desse arquivo e executo (eu salvo nesse arquivo os comandos, mas se precisar salvar em outro não tem problema)

echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" >> /etc/resolv.conf
## nesse arquivo eu adiciono essas duas linhas aqui e salvo:
