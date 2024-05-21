Cenário: Botão de home (CT-1)
    Dado que o usuário está na página de perfil
    Quando o usuário clicar no botão de home
    Então ele deverá ser direcionado para a página de home

Cenário: Botão de feedback (CT-2)
    Dado que o usuário está na página de perfil
    Quando o usuário clicar no botão de feedback
    Então ele deverá ser direcionado à página de feedback

Cenário: Botão de cultura (CT-3)
    Dado que o usuário está na página de perfil
    Quando o usuário clicar no botão de cultura
    Então ele deverá ser direcionado à página de cultura

Cenário: Botão de perfil (CT-4)
    Dado que o usuário está na página de perfil
    Quando o usuário clicar no botão de perfil
    Então ele deverá permanecer na página de perfil

Cenário: Checar informações do perfil (CT-5)
    Dado O usuário está logado no sistema
    Quando O usuário acessa sua página de perfil
    Então O sistema exibe as informações do perfil do usuário
    E O nome do usuário está correto
    E A equipe do usuário está correta
    E O número de feedbacks do usuário está correto
    E A posição no ranking do usuário está correta
    E O número de nozes do usuário está correto

Cenário: Ver termos (CT-6)
    Dado que o usuário está na página de perfil
    Quando o usuário clicar no link de termos
    Então o usuário deverá ser direcionado para a página de termos

Cenário: Logout (CT-7)
    Dado que o usuário está na página de perfil
    Quando o usuário clicar no link de logout
    Então o usuário deverá ser direcionado para a página de login

Cenário: Métricas (CT-8)
    Dado que o usuário está na página de perfil
    Quando o usuário clicar no link de métricas
    Então o usuário deverá ser direcionado para a página métricas

Cenário: Fechar ícone do hambúrguer (CT-9 -- Mobile only)
    Dado que o usuário está na página de perfil
    Quando o usuário clicar no hambúrguer duas vezes
    Então o aside do hambúrguer não deverá estar visível



