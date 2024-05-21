*** Settings ***
Documentation    Recursos utilizados nos testes da pagina de esqueceu a senha
Resource    recursosWebGerais.robot

*** Variables ***
${esqueceuSenhaBtnID}    css=#esqueceuSenhaBtn
${goBackBtnID}           css=#goBackBtn
${emailField}            css=#emailField
${sendEmailBtn}          css=#sendEmailBtn
${wrongEmail}            invalid@example.com
${erroMsg}               Your email address is invalid
${erroMsgID}             css=#erroMsg

*** Keywords ***

Ir para pagina de recuperacao de senha
    [Documentation]     Vai para a pagina de recuperacao de senha a partir da pagina de login
    Wait For Elements State    ${esqueceuSenhaBtnID}    visible
    Click    ${esqueceuSenhaBtnID}
    Sleep    2s

Preenche o campo de email
    [Documentation]    Preenche o campo de email da pagina de recuperacao de senha com um dado email
    [Arguments]    ${email}
    Wait For Elements State    ${emailField}    visible
    Fill Text    ${emailField}    ${email}

Preenche campo de email errado
    [Documentation]    Preenche o campo de email erroneamente
    Preenche o campo de email    ${wrongEmail}

Clica no botao de enviar email
    [Documentation]    Clica no botao de enviar email de recuperacao de senha na pagina de recuperacao de senha
    Wait For Elements State    ${sendEmailBtn}    visible
    Click    ${sendEmailBtn}
