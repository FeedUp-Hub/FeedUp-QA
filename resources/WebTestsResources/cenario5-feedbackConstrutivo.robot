*** Settings ***
Documentation    Recursos para os testes de feedback construtivo
Library    Browser
Resource    recursosWebGerais.robot
Resource    cenario3-feed.robot

*** Variables ***
${CONSTRUTIVO_BTN_ID}    your-selector-for-construtivo-btn
${USERNAME_FIELD_ID}    your-selector-for-username-field
${COMPORTAMENTOS_DROPDOWN_ID}    your-selector-for-comportamentos-dropdown
${FEEDBACK_FIELD_ID}    your-selector-for-feedback-field
${ANONIMO_BTN_ID}    your-selector-for-anonimo-btn
${ENVIAR_FEEDBACK_BTN_ID}    your-selector-for-enviar-feedback-btn
${RETORNAR_FEED_BTN_ID}    your-selector-for-retornar-feed-btn

*** Keywords ***
Chega na tela de feedback
    [Documentation]    Abre a aplicação, faz login, e direciona o usuário ao feed e depois à página de post
    [Arguments]    ${user}    ${psswd}
    Chega no feed    ${user}    ${psswd}
    Clica no botao de post
    Checa se esta na pagina de post

Seleciona feedback construtivo
    [Documentation]    Na página de escolha de tipo de feedback, seleciona o feedback construtivo
    Wait For Elements State    ${CONSTRUTIVO_BTN_ID}    visible
    Click    ${CONSTRUTIVO_BTN_ID}

Preenche nome do recipiente
    [Documentation]    Na página de feedback construtivo, preenche o nome de um dado recipiente do feedback
    [Arguments]    ${user}
    Wait For Elements State    ${USERNAME_FIELD_ID}    visible
    Fill Text    ${USERNAME_FIELD_ID}    ${user}

Seleciona comportamento
    [Documentation]    Na página de feedback construtivo, seleciona um dado comportamento
    [Arguments]    ${comportamento}
    Wait For Elements State    ${COMPORTAMENTOS_DROPDOWN_ID}    visible
    Click    ${COMPORTAMENTOS_DROPDOWN_ID}
    Sleep    1s
    Wait For Elements State    ${comportamento}    visible
    Click    ${comportamento}

Escreve comentario
    [Documentation]    Na página de feedback construtivo, escreve um comentário
    [Arguments]    ${text}
    Wait For Elements State    ${FEEDBACK_FIELD_ID}    visible
    Fill Text    ${FEEDBACK_FIELD_ID}    ${text}

Envia feedback
    [Documentation]    Clica no botão de enviar feedback
    Wait For Elements State    ${ENVIAR_FEEDBACK_BTN_ID}    visible
    Click    ${ENVIAR_FEEDBACK_BTN_ID}   

Clica no botao de anonimato
    [Documentation]    Clica no botão de feedback anônimo
    Wait For Elements State    ${ANONIMO_BTN_ID}    visible
    Click    ${ANONIMO_BTN_ID}

Verifica mensagem de erro
    [Documentation]    Compara uma dada mensagem de erro com a mensagem sendo exibida na tela
    [Arguments]    ${MSG_ID}    ${MSG}
    Wait For Elements State    ${MSG_ID}    visible
    ${textoNaTela}=    Get Text    ${MSG_ID}
    Should Be Equal    ${textoNaTela}    ${MSG}

Ir para o feed
    [Documentation]    Retorna para o feed da página, saindo da página de recompensa 
    Wait For Elements State    ${RETORNAR_FEED_BTN_ID}    visible
    Click    ${RETORNAR_FEED_BTN_ID}