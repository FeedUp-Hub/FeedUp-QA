*** Settings ***
Documentation    Recursos para testes nos perfis de usuario
Resource    recursosMobileGerais.robot
Resource    cenario3-feed.robot

*** Keywords ***
Chega no perfil
    [Documentation]    Palavra chave para ir para o perfil do usuario
    [Arguments]    ${user}    ${psswd}
    Chega no feed    ${user}    ${psswd}
    Clica no botao de perfil
    Checa se esta na pagina de perfil




