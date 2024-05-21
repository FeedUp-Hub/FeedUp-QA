*** Settings ***
Documentation    Recursos para os testes de feedback de reconhecimento
Resource    recursosWebGerais.robot
Resource    cenario3-feed.robot

*** Variables ***
${RECONHECIMENTO_BTN_ID}    your-selector-for-reconhecimento-btn
${USERNAME_FIELD_ID}    your-selector-for-username-field
${COMPORTAMENTOS_DROPDOWN_ID}    your-selector-for-comportamentos-dropdown
${FEEDBACK_FIELD_ID}    your-selector-for-feedback-field
${ANONIMO_BTN_ID}    your-selector-for-anonimo-btn
${ENVIAR_FEEDBACK_BTN_ID}    your-selector-for-enviar-feedback-btn
${VOLTAR_PRO_FEED_BTN_ID}    your-selector-for-voltar-pro-feed-btn

*** Keywords ***
Chega na tela de feedback
    [Documentation]    Abre a aplicação, faz login, e direciona o usuário ao feed e depois à página de post
    [Arguments]    ${user}    ${psswd}
    Chega no feed    ${user}    ${psswd}
    Clica no botao de post
    Checa se esta na pagina de post

Seleciona feedback de reconhecimento
    [Documentation]    Seleciona o feedback de reconhecimento a partir do 
    Checa se esta na pagina de post
    Wait For Elements State    ${RECONHECIMENTO_BTN_ID}    visible
    Click    ${RECONHECIMENTO_BTN_ID}

Preenche nome do destinatario
    [Documentation]    Preenche um dado nome de usuário 
    [Arguments]    ${user}
    Wait For Elements State    ${USERNAME_FIELD_ID}    visible
    Fill Text    ${USERNAME_FIELD_ID}    ${user}

Seleciona comportamento
    [Documentation]    Seleciona um dado comportamento
    [Arguments]    ${COMPORTAMENTO}
    Wait For Elements State    ${COMPORTAMENTOS_DROPDOWN_ID}    visible
    Click    ${COMPORTAMENTOS_DROPDOWN_ID}
    Wait For Elements State    ${COMPORTAMENTO}    visible
    Click    ${COMPORTAMENTO}

Escreve feedback
    [Documentation]    Preenche o campo de feedback dado um texto
    [Arguments]    ${text}
    Wait For Elements State    ${FEEDBACK_FIELD_ID}    visible
    Fill Text    ${FEEDBACK_FIELD_ID}    ${text}

Clica no botao de anonimato
    [Documentation]    Clica no botão de feedback anônimo
    Wait For Elements State    ${ANONIMO_BTN_ID}    visible
    Click    ${ANONIMO_BTN_ID}

Clica para enviar feedback
    [Documentation]    Clica para enviar feedback
    Wait For Elements State    ${ENVIAR_FEEDBACK_BTN_ID}    visible
    Click    ${ENVIAR_FEEDBACK_BTN_ID}

Verifica mensagem de erro
    [Documentation]    Compara uma dada mensagem de erro com a mensagem sendo exibida na tela
    [Arguments]    ${MSG_ID}    ${MSG}
    Wait For Elements State    ${MSG_ID}    visible
    ${textoNaTela}=    Get Text    ${MSG_ID}
    Should Be Equal    ${textoNaTela}    ${MSG}

Verifica se post esta no feed
    [Documentation]    Verifica se o post se encontra no feed
    [Arguments]    ${referenciaDoPost}
    Wait For Elements State    ${referenciaDoPost}    visible

Voltar para o feed
    [Documentation]    Na tela de recompensa, aperta o botão para ir para o feed
    Wait For Elements State    ${VOLTAR_PRO_FEED_BTN_ID}    visible
    Click    ${VOLTAR_PRO_FEED_BTN_ID}
