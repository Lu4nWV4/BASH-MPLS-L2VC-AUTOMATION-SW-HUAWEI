#!/bin/bash
#
# Author: Luan Andrade
#
#Linkedin: https://www.linkedin.com/in/luan-william-vieira-de-andrade-5a8110197/
#
echo ""
echo -e "\033[44;1;37mPREENCHA COM AS INFORMACOES SOLICITADAS\033[0m"
echo ""
echo -e "\033[1;32mIP de MPLS da ponta A:\033[0m"
read pontaA
echo ""
echo -e "\033[1;32mInterface ponta A:\033[0m"
read interfaceA
echo ""
echo -e "\033[1;32mDescricao da interface ponta A:\033[0m"
read intdescA
echo ""
echo -e "\033[1;31mIP de MPLS da ponta B:\033[0m"
read pontaB
echo ""
echo -e "\033[1;31mInterface ponta B:\033[0m"
read interfaceB
echo ""
echo -e "\033[1;31mDescricao da interface ponta B:\033[0m"
read intdescB
echo ""
echo -e "\033[1;36mVLAN para fechar comunicacao:\033[0m"
read vlan
echo ""
echo -e "\033[1;36mDescricao da VLAN:\033[0m"
read descvlan
echo ""
echo ""
echo -e "\033[46;1;37mINICIANDO CONFIGURACAO\033[0m"
echo ""
echo ""

./l2vc.sh $pontaA luan labl2vc $pontaB $vlan $descvlan $interfaceA $intdescA
./l2vc.sh $pontaB luan labl2vc $pontaA $vlan $descvlan $interfaceB $intdescB

echo ""
echo ""
echo -e "\033[42;1;37mCONFIGURACAO FINALIZADA\033[0m"
echo ""
