Cenário: Botão de início (CT-1)
    Quando o usuário está no feed
    E clica no botão de home
    Então o usuário deve ser permanecer na home

Cenário: Botão de cultura (CT-2)
    Quando o usuário está no feed
    E clica no botão de cultura
    Então o usuário deve ser direcionado para a tela de cultura

Cenário: Botão de perfil (CT-3)
    Quando o usuário está no feed
    E clica no botão de perfil
    Então o usuário deve ser direcionado para a tela de perfil

Cenário: Botão de criar feedback (CT-4)
    Quando o usuário está no feed
    E clica no botão de feedback
    Então o usuário deve ser direcionado para a tela de criação de feedbacks

Cenário: Dar like no post (CT-5)
    Dado o usuário está no feed
    Quando clica no botão de like
    Então contagem de likes deverá aumentar em 1

Cenário: Clicar duas vezes no like (CT-6)
    Dado o usuário está no feed
    Quando clica no botão de like duas vezes
    Então contagem de likes deverá permanecer a mensagem

Cenário: Comentar num post (CT-7)
    Dado que o usuário seleciona um post
    E o usuário clica no botão de escrever comentário
    Quando o usuário insere um comentário com no máximo 250 caracteres
    E o usuário clica no botão de comentar
    E o usuário clica novamente no botão de ver comentários
    Então o usuário deve ver o comentário adicionado

Cenário: Comentar num post com mais de 250 caracteres (CT-8)
    Dado que o usuário seleciona um post
    E o usuário clica no botão de escrever comentário
    Quando o usuário insere um comentário com mais de 250 caracteres
    E o usuário clica no botão de comentar
    Então uma mensagem de erro deve ser exibida

Cenário: Hamburguer exibe todos os icones (CT-9 -- Mobile only)
    Dado que o usuário está no feed
    Quando ele clicar no Hamburguer
    Então os links da ioasys shop, métricas, logout e termos deverão estar visíveis

Cenário: Ver termos (CT-10)
    Dado que o usuário está no feed
    Quando o usuário clicar no link para a tela de termos
    Então ele deverá ser direcionado à tela de termos

Cenário: Ioasys shop (CT-11)
    Dado que o usuário está no feed
    Quando o usuário clicar no link para a tela da Ioasys Shop
    Então ele deverá ser direcionado à tela da Ioasys shop

Cenário: Logout (CT-12)
    Dado que o usuário está no feed
    Quando o usuário clicar no link de logout
    Então ele deverá ser direcionado à tela de login

Cenário: Fechar ícone de hambúrguer (CT-13)
    Dado que o usuário está no feed
    Quando o usuário clicar no link para a tela de termos
    Então ele deverá ser direcionado à tela de termos

Cenário: Checar hora do post (CT-14)
    Dado que o usuário está no feed
    Quando o usuário realizar um post
    Então o usuário deverá verificar se o horário do post está correto

Cenário: Remover post (CT-15)
    Dado que o usuário fez um post
    E está no feed
    Quando o usuário clicar em deletar o comentário
    Então o comentário deverá ser deletado

Cenário: Leaderboard dinâmica (CT-16)
    Dado que o usuário está no feed
    Quando o usuário fizer posts suficientes
    Então usuário deve alterar a posição dos usuários na leaderboard e remover pelo menos um deles ao se inserir nela

    