#!/bin/bash
#script rapidinho serve pra ver o q tem pra comer como prato principal no bandeco da Unicamps =)


wget --tries=2 --connect-timeout=5 -q https://www.prefeitura.unicamp.br/apps/site/cardapio.php -O cardapio
#-s se arquivo existe e nao é nulo
if [ -s cardapio ]; 
	then
	cat cardapio | sed -i '/PRINCIPAL/!d' cardapio 
	python ~/scripts/bandeco/remove_all.py
	rm cardapio


else
	echo "Sem net"
	rm ./--tries=1
fi

exit
