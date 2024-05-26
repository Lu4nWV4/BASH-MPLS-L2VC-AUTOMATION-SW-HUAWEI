Passo 1:
Instalar biblioteca expect: apt-get install expect

Passo 2: 
Baixe os scripts 'l2vc.sh' e 'rotina-l2vc.sh'

Passo 3: 
Edite no script l2vc.sh a porta ssh definida (coloque a configurada no seu switch). Edite no script rotina-l2vc.sh o usuário e senha (coloque um usuário com permissão de edição no seu switch)

Passo 4:
Rode os comandos: "chmod +x l2vc.sh" e "chmod +x rotina-l2vc.sh"

Passo 5: Colete essas informações para configuração:

IP de MPLS da ponta A, Interface ponta A, Descricao da interface ponta A, IP de MPLS da ponta B, Interface ponta B, Descricao da interface ponta B, VLAN para fechar comunicacao, Descricao da VLAN.


Passo 6:
Rode o script rotina-l2vc.sh e responda o que é solicitado.













