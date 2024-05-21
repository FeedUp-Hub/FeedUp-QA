*** Settings ***
Documentation    recursos utilizados pela 
Resource    recursosMobileGerais.robot

*** Variables ***
${esqueceuSenhaBtnID}

${goBackBtnID}
${emailField}
${sendEmailBtn}

${wrongEmail}

${erroMsg}    
${erroMsgID}

*** Keywords ***
Ir para pagina de recuperacao de senha
    [Documentation]     Vai para a pagina de recuperacao de senha a partir da pagina de login
    Wait Until Page Contains Element    ${esqueceuSenhaBtnID}
    Click Element    ${esqueceuSenhaBtnID}
    Sleep    2s

Checa mensagem de erro
    [Documentation]    Checa se a mensagem de erro de email invalido esta sendo exibida
    Wait Until Page Contains Element    ${erroMsgID}
    ${msgNaTela}=    Get Text    ${erroMsgID}
    Should Be Equal As Strings    ${msgNaTela}    ${erroMsg}

Preenche o campo de email
    [Documentation]    Preenche o campo de email da pagina de recuperacao de senha com um dado email
    [Arguments]    ${email}
    Wait Until Element Is Visible    ${emailField}
    Input Text    ${emailField}    ${email}

Preenche campo de email errado
    [Documentation]    Preenche o campo de email erroneamente
    Preenche o campo de email    ${wrongEmail}

Clica no botao de enviar email
    [Documentation]    Clica no botao de enviar email de recuperacao de senha na pagina de recuperacao de senha
    Wait Until Page Contains Element    ${sendEmailBtn}
    Click Element    ${sendEmailBtn}

Clica no botao de voltar para a tela de login
    [Documentation]    Clica no botao de voltar a tela de login na pagina de recuperacao de senha
    Wait Until Page Contains Element    ${goBackBtnID}
    Click Element    ${goBackBtnID}
