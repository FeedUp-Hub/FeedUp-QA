Cenário: Feedback de reconhecimento (CT-1)
    Dado que estou na página de feedback
    Quando clico na opção de feedback de reconhecimento
    E preencho o campo com o nome do alvo do feedback, seleciono um comportamento atribuído e escrevo o feedback
    E clico no botão para enviar feedback
    Então devo ser direcionado para a página de recompensa
    E clicar para voltar ao feedback
    E ser capaz de visualizar o post

Cenário: Feedback de reconhecimento sem recipiente (CT-2)
    Dado que estou na página de feedback
    Quando clico na opção de feedback de reconhecimento
    E seleciono um comportamento atribuído
    E escrevo um feedback
    E clico no botão para enviar feedback
    Então devo ver uma mensagem de erro exigindo que eu preencha todos os campos
    E devo permanecer na mesma tela

Cenário: Feedback de reconhecimento sem comportamento (CT-3)
    Dado que estou na página de feedback
    Quando clico na opção de feedback de reconhecimento
    E seleciono um recipiente
    E escrevo um feedback
    E clico no botão para enviar feedback
    Então devo ver uma mensagem de erro exigindo que eu preencha todos os campos
    E devo permanecer na mesma tela

Cenário: Feedback de reconhecimento sem texto (CT-4)
    Dado que estou na página de feedback
    Quando clico na opção de feedback de reconhecimento
    E seleciono um comportamento atribuído
    E escrevo um feedback
    E clico no botão para enviar feedback
    Então devo ver uma mensagem de erro exigindo que eu preencha todos os campos
    E devo permanecer na mesma tela

Cenário: Feedback de reconhecimento com texto longo demais (CT-5)
    Dado que estou na página de feedback
    Quando clico na opção de feedback de reconhecimento
    E preencho o campo com o nome do alvo do feedback
    E seleciono um comportamento atribuído
    E escrevo um feedback com mais de 250 caracteres
    E clico no botão para enviar feedback
    Então devo ver uma mensagem de erro informando que o limite de caracteres foi excedido
    E devo permanecer na mesma tela

Cenário: Feedback de reconhecimento com usuário inexistente (CT-6)
    Dado que estou na página de feedback
    Quando clico na opção de feedback de reconhecimentos
    E preencho o campo com um nome inexistente de um alvo para o feedback
    E seleciono um valor atribuído
    E escrevo o feedback
    E clico no botão para enviar feedback
    Então devo ver uma mensagem de erro informando que o usuário não foi encontrado
    E devo permanecer na mesma tela

Cenário: Feedback de reconhecimento anônimo (CT-7)
    Dado que preenchi todos os campos de feedback de reconhecimento corretamente
    Quando clico no botão de anonimato
    E envio o feedback
    E logo com a conta do recipiente
    Então o recipiente não deve conseguir visualizar o autor do feedback

Cenário: Verifica se feedback aumentou numero de nozes (CT-8)
    Dado que o usuário fez um post
    Então verifica se o número de nozes aumentou em 200






