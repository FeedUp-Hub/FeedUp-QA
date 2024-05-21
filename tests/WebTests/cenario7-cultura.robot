*** Settings ***
Documentation    Suite de testes para a pagina de cultura
Resource    ../../resources/WebTestsResources/cenario7-cultura.robot

*** Variables ***
#Contas
${userCultura}
${psswdCultura}

*** Test Cases ***
CT-1 Botao de home
    Chega em cultura    ${userCultura}    ${psswdCultura}
    Clica no botao de inicio
    Checa se esta no feed

CT-2 Botao de feedback
    Chega em cultura    ${userCultura}    ${psswdCultura}
    Clica no botao de post
    Checa se esta no feed

CT-3 Botao de cultura
    Chega em cultura    ${userCultura}    ${psswdCultura}
    Clica no botao de cultura
    Checa se esta na pagina de cultura

CT-4 Botao de perfil
    Chega em cultura    ${userCultura}    ${psswdCultura}
    Clica no botao de perfil
    Checa se esta na pagina de perfil

CT-6 Checa botao de metricas
    Chega em cultura    ${userCultura}    ${psswdCultura}
    Clica em metricas
    Checa se esta na pagina de metricas

CT-7 Checa botao de termos
    Chega em cultura    ${userCultura}    ${psswdCultura}
    Clica em termos
    Checa se esta na pagina de termos

CT-8 Checa logout
    Chega em cultura    ${userCultura}    ${psswdCultura}
    Clica em logout
    Checa se esta na tela de login
    