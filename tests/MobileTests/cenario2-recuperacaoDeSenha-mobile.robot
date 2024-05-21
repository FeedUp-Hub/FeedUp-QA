*** Settings ***
Documentation    Suite de testes com os testes do cenario de recuperacao de senha
Resource    ../../resources/MobileTestsResources/cenario2-recuperarSenhaMobile.robot

*** Test Cases ***
CT-2 Envio de email para email não registrado
    Ir para pagina de recuperacao de senha
    Preenche campo de email errado
    Clica no botao de enviar email
    Checa mensagem de erro

CT-4 Botão de voltar para a página de login
    Ir para pagina de recuperacao de senha
    Clica no botao de voltar para a tela de login
    Checa se esta na tela de login
    