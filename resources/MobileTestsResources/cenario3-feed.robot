*** Settings ***
Documentation    Recursos utilizados para os testes do feed
Resource    recursosMobileGerais.robot
Resource    cenario1-loginOnboardingMobile.robot

*** Keywords ***
#adicionar palavra chave para ir ao feed
Chega no feed
    [Documentation]    Palavra chave para que o usuario consiga abrir aplicacao com um dado usuario que ja tenha sido logado anteriormente e chegar ao feed
    [Arguments]    ${email}    ${senha}
    Chegar na pagina de login
    Login completo    ${email}    ${senha}
    Checa se esta no feed

#Palavras chave sobre posts
Dar like
    [Documentation]    Dado o id de um botao de like, clica no botao de like
    [Arguments]    ${likeID}
    Wait Until Element Is Visible    ${likeID}
    Click Element    ${likeID}

Verifica contagem de likes sobe
    [Documentation]    Verifica se os likes aumentaram apos um dado like
    [Arguments]    ${contagemDeLikesID}    ${likeID}
    ${likes}=    Get Text    ${contagemDeLikesID}
    ${esperado}=    Evaluate    ${likes} + 1
    Dar like    ${likeID}
    ${likesPosLike}=    Get Text    ${contagemDeLikesID}  
    Should Be Equal As Numbers    ${likesPosLike}    ${esperado}

Verifica contagem de likes desce
    [Documentation]    Verifica se os likes aumentaram apos um dado like
    [Arguments]    ${contagemDeLikesID}    ${likeID}
    Dar like    ${likeID}
    ${likes}=    Get Text    ${contagemDeLikesID}
    ${esperado}=    Evaluate    ${likes} - 1
    Dar like    ${likeID}
    ${likesPosDislike}=    Get Text    ${contagemDeLikesID}  
    Should Be Equal As Numbers    ${likesPosDislike}    ${esperado}

Comentar num post
    [Documentation]    Dado os IDs do botao de ver comentarios, campo de comentario, botao de comentar e o texto, faz um comentario num post
    [Arguments]    ${seeCommentBtn}    ${commentField}    ${commentBtn}    ${text}    ${seletorPosComentario}
    Wait Until Element Is Visible    ${seeCommentBtn}
    Click Element    ${seeCommentBtn}
    Sleep    1s
    Element Should Be Visible    ${commentField}
    Element Should Be Visible    ${commentBtn}
    Input Text    ${commentField}    ${text}
    Click Element    ${commentBtn}
    Sleep    1s
    Click Element    ${seeCommentBtn}
    Element Should Be Visible    ${seletorPosComentario}

Comentar com texto grande demais
    [Documentation]    Dado os IDs do botao de ver comentarios, campo de comentario, botao de comentat, o texto e id de erro, faz um comentario num post com mais de 250 caracteres e verifica a mensagem de erro
    [Arguments]    ${seeCommentBtn}    ${commentField}    ${commentBtn}    ${text}    ${erroID}
    Wait Until Element Is Visible    ${seeCommentBtn}
    Click Element    ${seeCommentBtn}
    Sleep    1s
    Element Should Be Visible    ${commentField}
    Element Should Be Visible    ${commentBtn}
    Input Text    ${commentField}    ${text}
    Click Element    ${commentBtn}
    Sleep    1s
    Element Should Be Visible    ${erroID}

Deletar post
    [Documentation]    Dado a localizacao do botao de deletar, deleta o post
    [Arguments]    ${deleteID}
    Wait Until Element Is Visible    ${deleteID}
    Click Element    ${deleteID}
    Sleep    2s
    Page Should Contain Element    ${deleteID}
    


