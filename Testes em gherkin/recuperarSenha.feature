Cenário: Envio de email de recuperação de senha (CT-1)
    Dado que o usuário preenche um e-mail válido
    Quando o usuário clica no botão de enviar e-mail
    Então o e-mail deve receber uma mensagem de recuperação de senha

Cenário: Envio de email para email não registrado (CT-2)
    Dado que o usuário preenche um e-mail inválido
    Quando o usuário clica no botão de enviar e-mail
    Então o sistema deve exibir uma mensagem de erro indicando que o e-mail é inválido

Cenário: Checar a máscara de email (CT-3)
    Dado que o usuário abre a página de recuperação de e-mail
    Então o usuário deve ver uma máscara de e-mail no campo de e-mail

Cenário: Botão de voltar para a página de login (CT-4)
    Dado que o usuário abre página de recuperação de e-mail
    Então usuário deverá clicar no botão de retornar para a tela de login
