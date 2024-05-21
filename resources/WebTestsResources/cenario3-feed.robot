*** Settings ***
Documentation    Recursos para os testes no feed
Resource    recursosWebGerais.robot
Resource    cenario1-loginOnboarding.robot

*** Keywords ***
#adicionar palavra chave para ir ao feed
Chega no feed
    [Documentation]    Palavra chave para que o usuario consiga abrir aplicacao com um dado usuario que ja tenha sido logado anteriormente e chegar ao feed
    [Arguments]    ${email}    ${senha}
    Abrir o site
    Login completo    ${email}    ${senha}
    Checa se esta no feed

#Palavras chave sobre posts
Dar like
    [Documentation]    Dado o id de um botao de like, clica no botao de like
    [Arguments]    ${likeID}
    Wait For Elements State    ${likeID}    visible
    Click    ${likeID}

Verifica contagem de likes sobe
    [Documentation]    Verifica se os likes aumentaram apos um dado like
    [Arguments]    ${contagemDeLikesID}    ${likeID}
    ${likes}=    Get Text    ${contagemDeLikesID}
    ${esperado}=    Evaluate    ${likes} + 1
    Dar like    ${likeID}
    ${likesPosLike}=    Get Text    ${contagemDeLikesID}  
    Should Be Equal As Numbers    ${likesPosLike}    ${esperado}

Verifica contagem de likes desce
    [Documentation]    Verifica se os likes diminuíram apos um dado dislike
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
    Wait For Elements State    ${seeCommentBtn}    visible
    Click    ${seeCommentBtn}
    Sleep    1s
    Wait For Elements State    ${commentField}    visible
    Wait For Elements State    ${commentBtn}    visible
    Fill Text    ${commentField}    ${text}
    Click    ${commentBtn}
    Sleep    1s
    Click    ${seeCommentBtn}
    Wait For Elements State    ${seletorPosComentario}    visible

Comentar com texto grande demais
    [Documentation]    Dado os IDs do botao de ver comentarios, campo de comentario, botao de comentat, o texto e id de erro, faz um comentario num post com mais de 250 caracteres e verifica a mensagem de erro
    [Arguments]    ${seeCommentBtn}    ${commentField}    ${commentBtn}    ${text}    ${erroID}
    Wait For Elements State    ${seeCommentBtn}    visible
    Click    ${seeCommentBtn}
    Sleep    1s
    Wait For Elements State    ${commentField}    visible
    Wait For Elements State    ${commentBtn}    visible
    Fill Text    ${commentField}    ${text}
    Click    ${commentBtn}
    Sleep    1s
    Wait For Elements State    ${erroID}    visible

Deletar post
    [Documentation]    Dado a localizacao do botao de deletar, deleta o post
    [Arguments]    ${deleteID}
    Wait For Elements State    ${deleteID}    visible
    Click    ${deleteID}