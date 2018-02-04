#!/bin/bash
#script rapidinho serve pra ver o q tem pra comer como prato principal no bandeco da Unicamps =)


wget --tries=1 --connect-timeout=1 -q https://www.prefeitura.unicamp.br/apps/site/cardapio.php -O cardapio
#-s se arquivo existe e nao é nulo
if [ -s cardapio ]; 
	then
	cat cardapio | grep -o '<td><strong>PRATO PRINCIPAL:</strong> <br>.*</td>' | sed 's@<td><strong>PRATO PRINCIPAL:</strong> <br>@@g' | sed 's@<td>@@g' | sed 's@</td>@@g'| sed 's/\(<tr>\|<\/tr>\)//g' 
	rm cardapio

else
	echo "Sem net"
	rm ./--tries=1
fi

exit
