*** Settings ***
Documentation    Recursos para o cenario de testes da pagina de cultura
Resource    recursosMobileGerais.robot
Resource    cenario3-feed.robot


*** Keywords ***
Chega em cultura
    [Documentation]    Abre o app, faz login com os dados usuario e chega na pagina de cultura
    [Arguments]    ${user}    ${psswd}
    Chega no feed    ${user}    ${psswd}
    Clica no botao de cultura
    Checa se esta na pagina de cultura
