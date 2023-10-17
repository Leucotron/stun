#!/bin/sh


IF1=$(basename -a /sys/class/net/* | grep -v docker | grep -v lo | tr '\n' ':' | awk -F':' '{print $1}')
IF2=$(basename -a /sys/class/net/* | grep -v docker | grep -v lo | tr '\n' ':' | awk -F':' '{print $2}')


if [ "$IF1" = "" ]
then
	echo "Não foi encontrada a primeira interface de rede"
elif [ "$IF2" = "" ]
then
	echo "Não foi encontrada a segunda interface de rede"
else
	IP1=$(ifconfig  ${IF1} | grep inet | awk '{print $2}'| tr '\n' ';'| awk -F';' '{print $1}')
	IP2=$(ifconfig  ${IF2} | grep inet | awk '{print $2}'|tr '\n' ';' | awk -F';' '{print $1}')
	if [ "$IP1" = "" ]
	then
		echo "Não foi encontrado nenhum IP atribuido a interface $IF1"
	elif [ "$IP2" = "" ]
	then
		echo "Não foi encontrado nenhum IP atribuido a interface $IF2"
	else
		if [ -e /opt/stund/server ]
		then
			/opt/stund/server -h $IP1 -a $IP2
		else
			echo "Servidor STUN não foi encontrado"
		fi
	fi
fi



