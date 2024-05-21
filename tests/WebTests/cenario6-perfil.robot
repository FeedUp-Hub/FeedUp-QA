*** Settings ***
Documentation    Suite de testes para o perfil do usuario
Resource    ../../resources/WebTestsResources/cenario6-perfil.robot

*** Variables ***
#Contas
${user}
${psswd}


*** Test Cases ***
CT-1 Botao home
    Chega no perfil    ${user}    ${psswd}
    Clica no botao de inicio
    Checa se esta no feed

CT-2 Botao de feedback
    Chega no perfil    ${user}    ${psswd}
    Clica no botao de post
    Checa se esta na pagina de post

CT-3 Botao de cultura
    Chega no perfil    ${user}    ${psswd}
    Clica no botao de cultura
    Checa se esta na pagina de cultura

CT-4 Botao de perfil
    Chega no perfil    ${user}    ${psswd}
    Clica no botao de perfil
    Checa se esta na pagina de perfil

CT-6 Ver termos
    Chega no perfil    ${user}    ${psswd}
    Clica em termos
    Checa se esta na pagina de termos

CT-7 Logout
    Chega no perfil    ${user}    ${psswd}
    Clica em logout
    Checa se esta na tela de login

CT-8 Metricas
    Chega no perfil    ${user}    ${psswd}
    Clica em termos
    Checa se esta na pagina de termos
