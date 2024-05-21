*** Settings ***
Documentation    Suite de testes para a pagina de cultura
Resource    ../../resources/WebTestsResources/cenario8-metricas.robot

*** Variables ***
#Contas
${userMetricas}
${psswd}

*** Test Cases ***
CT-1 Botao de home
    Chega na pagina de metricas    ${userMetricas}    ${psswd}
    Clica no botao de inicio
    Checa se esta no feed

CT-2 Botao de feedback
    Chega na pagina de metricas    ${userMetricas}    ${psswd}
    Clica no botao de post
    Checa se esta no feed

CT-3 Botao de cultura
    Chega na pagina de metricas    ${userMetricas}    ${psswd}
    Clica no botao de cultura
    Checa se esta na pagina de cultura

CT-4 Botao de perfil
    Chega na pagina de metricas    ${userMetricas}    ${psswd}
    Clica no botao de perfil
    Checa se esta na pagina de perfil

CT-6 Checa botao de metricas
    Chega na pagina de metricas    ${userMetricas}    ${psswd}
    Clica em metricas
    Checa se esta na pagina de metricas

CT-7 Checa botao de termos
    Chega na pagina de metricas    ${userMetricas}    ${psswd}
    Clica em termos
    Checa se esta na pagina de termos

CT-8 Checa logout
    Chega na pagina de metricas    ${userMetricas}    ${psswd}
    Clica em logout
    Checa se esta na tela de login