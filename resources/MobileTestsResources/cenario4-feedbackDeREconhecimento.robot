*** Settings ***
Documentation    Recursos para os testes de feedback de reconhecimento
Resource    recursosMobileGerais.robot
Resource    cenario3-feed.robot

*** Variables ***
${RECONHECIMENTO-BTN-ID}
${USERNAME-FIELD-ID}
${COMPORTAMENTOS-DROPDOWN-ID}
${FEEDBACK-FIELD-ID}
${ANONIMO-BTN-ID}
${ENVIAR-FEEDBACK-BTN-ID}
${VOLTAR-PRO-FEED-BTN-ID}

*** Keywords ***
Chega na tela de feedback
    [Documentation]    Abre a aplicacao, faz login, e direciona o usuario ao feed e depois a pagina de post
    [Arguments]    ${user}    ${psswd}
    Chega no feed    ${user}    ${psswd}
    Clica no botao de post
    Checa se esta na pagina de post

Seleciona feedback de reconhecimento
    [Documentation]    Seleciona o feeddback de reconhecimento a partir do 
    Checa se esta na pagina de post
    Wait Until Element Is Visible    ${RECONHECIMENTO-BTN-ID}
    Click Element    ${RECONHECIMENTO-BTN-ID}

Preenche nome do destinatario
    [Documentation]    Preenche um dado nome de usuario 
    [Arguments]    ${user}
    Wait Until Element Is Visible    ${USERNAME-FIELD-ID}
    Input Text    ${USERNAME-FIELD-ID}    ${user}

Seleciona comportamento
    [Documentation]    Seleciona um dado  comportamento
    [Arguments]    ${COMPORTAMENTO}   
    Wait Until Element Is Visible    ${COMPORTAMENTOS-DROPDOWN-ID}
    Click Element    ${COMPORTAMENTOS-DROPDOWN-ID}
    Element Should Be Visible    ${COMPORTAMENTO}
    Click Element    ${COMPORTAMENTO}

Escreve feedback
    [Documentation]    Preenche o campo de feedback dado um texto
    [Arguments]    ${text}
    Wait Until Element Is Visible    ${FEEDBACK-FIELD-ID}
    Input Text    ${FEEDBACK-FIELD-ID}    ${text}

Clica no botao de anonimato
    [Documentation]    Clica no botao de feedback anonimo
    Wait Until Element Is Visible    ${ANONIMO-BTN-ID}
    Click Element    ${ANONIMO-BTN-ID}

Clica para enviar feedback
    [Documentation]    Clica para enviar feedback
    Wait Until Element Is Visible    ${ENVIAR-FEEDBACK-BTN-ID}
    Click Element    ${ENVIAR-FEEDBACK-BTN-ID}

Verifica mensagem de erro
    [Documentation]    Compara uma dada mensagem de erro com a mensagem sendo exibida na tela
    [Arguments]    ${MSG-ID}    ${MSG}
    Element Should Be Visible    ${MSG-ID}
    ${textoNaTela}=    Get Text    ${MSG-ID}
    Should Be Equal As Strings    ${textoNaTela}    ${MSG}

Verifica se post esta no feed
    [Documentation]    Verifica se o post se encontra no feed
    [Arguments]    ${referenciaDoPost}
    Page Should Contain Element    ${referenciaDoPost}

Voltar para o feed
    [Documentation]    Na tela de recompensa, aperta o botao para ir para o feed
    Wait Until Element Is Visible    ${VOLTAR-PRO-FEED-BTN-ID}