*** Settings ***
Documentation    Recursos para testes dos feedbacks construtivos
Resource    recursosMobileGerais.robot
Resource    cenario3-feed.robot

*** Variables ***
${CONSTRUTIVO-BTN-ID}
${USERNAME-FIELD-ID}
${COMPORTAMENTOS-DROPDOWN-ID}
${FEEDBACK-FIELD-ID}
${ANONIMO-BTN-ID}
${ENVIAR-FEEDBACK-BTN-ID}
${RETORNAR-FEED-BTN-ID}

*** Keywords ***
Chega na tela de feedback
    [Documentation]    Abre a aplicacao, faz login, e direciona o usuario ao feed e depois a pagina de post
    [Arguments]    ${user}    ${psswd}
    Chega no feed    ${user}    ${psswd}
    Clica no botao de post
    Checa se esta na pagina de post

Seleciona feedback construtivo
    [Documentation]    Na pagina de escolha de tipo de feedback, seleciona o feedback construtivo
    Wait Until Element Is Visible    ${CONSTRUTIVO-BTN-ID}
    Click Element    ${CONSTRUTIVO-BTN-ID}

Preenche nome do recipiente
    [Documentation]    Na pagina de feedback construtivo, preenche o nome de um dado recipiente do feedback
    [Arguments]    ${user}
    Wait Until Element Is Visible    ${USERNAME-FIELD-ID}
    Input Text    ${USERNAME-FIELD-ID}    ${user}

Seleciona comportamento
    [Documentation]    Na pagina de feedback construtivo, seleciona um dado comportamento
    [Arguments]    ${comportamento}
    Wait Until Element Is Visible    ${COMPORTAMENTOS-DROPDOWN-ID}
    Click Element    ${COMPORTAMENTOS-DROPDOWN-ID}
    Sleep    1s
    Wait Until Element Is Visible    ${comportamento}
    Click Element    ${comportamento}

Escreve comentario
    [Documentation]    Na pagina de feedback construtivo, escreve um comentario
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${FEEDBACK-FIELD-ID}
    Input Text    ${FEEDBACK-FIELD-ID}    ${text}

Envia feedback
    [Documentation]    Clica no botao de enviar feedback
    Wait Until Element Is Visible    ${ENVIAR-FEEDBACK-BTN-ID}
    Click Element    ${ENVIAR-FEEDBACK-BTN-ID}   

Clica no botao de anonimato
    [Documentation]    Clica no botao de feedback anonimo
    Wait Until Element Is Visible    ${ANONIMO-BTN-ID}
    Click Element    ${ANONIMO-BTN-ID}

Verifica mensagem de erro
    [Documentation]    Compara uma dada mensagem de erro com a mensagem sendo exibida na tela
    [Arguments]    ${MSG-ID}    ${MSG}
    Element Should Be Visible    ${MSG-ID}
    ${textoNaTela}=    Get Text    ${MSG-ID}
    Should Be Equal As Strings    ${textoNaTela}    ${MSG}

Ir para o feed
    [Documentation]    Retorna para o feed da pagina, saindo da pagina de recompensa 
    Wait Until Element Is Visible    ${RETORNAR-FEED-BTN-ID}
    Click Element    ${RETORNAR-FEED-BTN-ID}
