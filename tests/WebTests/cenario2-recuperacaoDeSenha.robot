*** Settings ***
Documentation    Suite de testes com testes para a tela de recuperacao de senha
Resource    ../../resources/WebTestsResources/cenario2-recuperacaoDeSenha.robot

*** Variables ***
${erroMsg}               Your email address is invalid
${erroMsgID}             css=#erroMsg

*** Test Cases ***
CT-2 Envio de email para email não registrado
    Ir para pagina de recuperacao de senha
    Preenche campo de email errado
    Clica no botao de enviar email
    Checa mensagem de erro    ${erroMsgID}    ${erroMsg}
