*** Settings ***
Documentation    Suite de testes para feedbacks construtivos
Resource    ../../resources/WebTestsResources/cenario5-feedbackConstrutivo.robot

*** Variables ***
#Contas
${userPostC}
${psswdPostC}

${RECIPIENTE-INEXISTENTE}    Iago Vicenzo
${RECIPIENTE}
${COMPORTAMENTO}
${FEEDBACK-CURTO}    Teste
${FEEDBACK-LONGO}    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.


${MENSAGEM-DE-ERRO-SEM-CAMPOS-ID}
${MENSAGEM-DE-ERRO-TEXTO-LONGO-DEMAIS-ID}
${MENSAGEM-DE-ERRO-USUARIO-INEXISTENTE-ID}

${MENSAGEM-DE-ERRO-SEM-CAMPOS}    Por favor, verifique se você preencheu todos os campos.
${MENSAGEM-DE-ERRO-TEXTO-LONGO-DEMAIS}
${MENSAGEM-DE-ERRO-USUARIO-INEXISTENTE}

*** Test Cases ***
CT-1 Feedback construtivo
    [Tags]    Terminar de fazer quando atalho para perfil for feito
    Chega na tela de feedback    ${userPostC}    ${psswdPostC}
    Seleciona feedback construtivo
    Preenche nome do recipiente    ${RECIPIENTE}
    Seleciona comportamento    ${COMPORTAMENTO}
    Escreve comentario    ${FEEDBACK-CURTO}
    Envia feedback
    Checa se esta na pagina de recompensa
    Ir para o feed
    Checa se esta no feed

CT-2 Feedback construtivo sem recipiente
    Chega na tela de feedback    ${userPostC}    ${psswdPostC}
    Seleciona feedback construtivo
    Seleciona comportamento    ${COMPORTAMENTO}
    Escreve comentario    ${FEEDBACK-CURTO}
    Envia feedback
    Verifica mensagem de erro    ${MENSAGEM-DE-ERRO-SEM-CAMPOS-ID}    ${MENSAGEM-DE-ERRO-SEM-CAMPOS}

CT-3 Feedback construtivo sem comportamento
    Chega na tela de feedback    ${userPostC}    ${psswdPostC}
    Seleciona feedback construtivo
    Preenche nome do recipiente    ${RECIPIENTE}
    Escreve comentario    ${FEEDBACK-CURTO}
    Envia feedback
    Verifica mensagem de erro    ${MENSAGEM-DE-ERRO-SEM-CAMPOS-ID}    ${MENSAGEM-DE-ERRO-SEM-CAMPOS}

CT-4 Feedback construtivo sem texto
    Chega na tela de feedback    ${userPostC}    ${psswdPostC}
    Seleciona feedback construtivo
    Preenche nome do recipiente    ${RECIPIENTE}
    Seleciona comportamento    ${COMPORTAMENTO}
    Envia feedback
    Verifica mensagem de erro    ${MENSAGEM-DE-ERRO-SEM-CAMPOS-ID}    ${MENSAGEM-DE-ERRO-SEM-CAMPOS}

CT-5 Feedback construtivo com texto longo de mais
    Chega na tela de feedback    ${userPostC}    ${psswdPostC}
    Seleciona feedback construtivo
    Preenche nome do recipiente    ${RECIPIENTE}
    Seleciona comportamento    ${COMPORTAMENTO}
    Escreve comentario    ${FEEDBACK-LONGO}
    Envia feedback    
    Verifica mensagem de erro    ${MENSAGEM-DE-ERRO-TEXTO-LONGO-DEMAIS-ID}    ${MENSAGEM-DE-ERRO-TEXTO-LONGO-DEMAIS}

CT-6 Feedback construtivo com usuario inexistente
    Chega na tela de feedback    ${userPostC}    ${psswdPostC}
    Seleciona feedback construtivo
    Preenche nome do recipiente    ${RECIPIENTE-INEXISTENTE}
    Seleciona comportamento    ${COMPORTAMENTO}
    Escreve comentario    ${FEEDBACK-CURTO}
    Envia feedback
    Verifica mensagem de erro    ${MENSAGEM-DE-ERRO-USUARIO-INEXISTENTE-ID}    ${MENSAGEM-DE-ERRO-USUARIO-INEXISTENTE}

CT-7 Feedback construtivo anonimo
    [Tags]    Terminar quando path pro perfil estiver feito
    Chega na tela de feedback    ${userPostC}    ${psswdPostC}
    Seleciona feedback construtivo
    Preenche nome do recipiente    ${RECIPIENTE}
    Seleciona comportamento    ${COMPORTAMENTO}
    Escreve comentario    ${FEEDBACK-CURTO}
    Clica no botao de anonimato
    Envia feedback
    Checa se esta na pagina de recompensa
    Ir para o feed