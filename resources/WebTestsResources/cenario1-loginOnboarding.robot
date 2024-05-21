*** Settings ***
Documentation    Automacao dos testes da tela de login e onboarding web
Library    Browser
Resource    ./recursosWebGerais.robot

*** Variables ***
# Variaveis relacionadas ao login em si
${userFieldId}    //input[@name="usuario"]
${psswdFieldId}    //input[@name="senha"]
${forgotPsswdLink}    //a[text()="Esqueceu a senha?"]
${loginBtn}    //button[@name="login"]

${loginErrorMessageId}    //div[@id="message"]
${loginErrorMessage}    Credenciais inválidas. Tente novamente.

# Variaveis relacionadas a tela de onboarding
${onboardingNextButtons}    //button[@name="seguinte"]
${agreeWithTermsBtnId}    //button[@name="agree"]
${goToFeedUpButtonId}    //button[@name="prosseguir"]
${3rdPageText}    "Expected Text on 3rd Page"
${3rdPageTextId}    //div[@id="page3"]

${onboardingGoBackButtons}    //button[@name="voltar"]

# Variaveis relacionadas ao feed


# Variaveis relacionadas a pagina de metricas
${botaoDeBuscaLiderancaId}    //button[@name="buscarLideranca"]
${campoDeBuscaDeUsuarioId}

*** Keywords ***
Preenche o campo de usuario
    [Documentation]    Preenche o email do usuario
    [Arguments]    ${user}
    Fill Text    ${userFieldId}    ${user}

Preenche o campo de senha
    [Documentation]    Preenche a senha do usuario
    [Arguments]    ${psswd}
    Fill Text    ${psswdFieldId}    ${psswd}

Clica no link de esqueci a senha
    [Documentation]    Clica no link de recuperar a senha
    Click    ${forgotPsswdLink}

Clica no botao de login
    [Documentation]    Clica no botao de logar
    Click    ${loginBtn}

Login completo
    [Documentation]    Preenche o email e senha do usuario e clica no botao de fazer login
    [Arguments]    ${username}    ${psswd}
    Preenche o campo de usuario    ${username}
    Preenche o campo de senha    ${psswd}
    Clica no botao de login

Checa o link de esqueci a senha
    [Documentation]    Checa se o link de esqueceu a senha direciona o usuario para tal pagina corretamente
    Clica no link de esqueci a senha
    Wait For Elements State    ${esqueciSenhaReferencia}    visible

Checa se o login foi bem sucedido
    [Documentation]    Checa se um dado elemento esta presente ao realizar o login
    [Arguments]    ${destinationReference}
    Wait For Elements State    ${destinationReference}    visible

# Palavras chave relacionadas a tela de onboarding
Vai para a ultima pagina de onboarding
    [Documentation]    Codigo que passa por todos os slides de onboarding e avaliacao de humor ate chegar no feed
    Checa se esta na pagina de onboarding 1
    Wait For Elements State    ${onboardingNextButtons}    visible
    Click    ${onboardingNextButtons}
    Checa se esta na pagina de onboarding 2
    Wait For Elements State    ${onboardingNextButtons}    visible
    Click    ${onboardingNextButtons}
    Checa se esta na pagina de onboarding 3
    Wait For Elements State    ${onboardingNextButtons}    visible
    Click    ${onboardingNextButtons}
    Checa se esta na pagina de onboarding 4

Clica para concordar com termos
    [Documentation]    Clica no botao de concordar com termos
    Wait For Elements State    ${agreeWithTermsBtnId}    visible
    Click    ${agreeWithTermsBtnId}

Clica para ir para feedup
    [Documentation]    Clica no botao do ultimo slide de onboarding para prosseguir para o aplicativo
    Wait For Elements State    ${goToFeedUpButtonId}    visible
    Click    ${goToFeedUpButtonId}

Checa se o feed foi atingido
    [Documentation]    Checa se um usuario e direcionado ao feed e pode ver um elemento exclusivo daquela tela, dado uma referencia, ao realizar o segundo login do dia
    Checa se o login foi bem sucedido    ${feedReferencia}

Clica no proximo botao de onboarding
    [Documentation]    Clica nos botoes de proximo durante o onboarding 
    Click    ${onboardingNextButtons}

Clica no botao de voltar
    [Documentation]    Clica no botao de voltar para o slide anterior no onboarding
    Wait For Elements State    ${onboardingGoBackButtons}    visible
    Click    ${onboardingGoBackButtons}

# Checar se IDs sao os mesmos ou se array e necessario
Testa botoes de voltar do onboarding
    [Documentation]    Passa por todos slides de onboarding e testa todos os botoes de voltar. No fim, checa se o texto exibido na tela coincide com o texto da 
    Clica no proximo botao de onboarding
    Checa se esta na pagina de onboarding 2
    Clica no botao de voltar
    Checa se esta na pagina de onboarding 1
    Clica no proximo botao de onboarding
    Clica no proximo botao de onboarding
    Checa se esta na pagina de onboarding 3
    Clica no botao de voltar
    Checa se esta na pagina de onboarding 2
    Clica no proximo botao de onboarding
    Clica no proximo botao de onboarding
    Checa se esta na pagina de onboarding 4
    Clica no botao de voltar
    Checa se esta na pagina de onboarding 3

Clica nas metricas
    [Documentation]    Clica no boato de metricas 
    Wait For Elements State    ${metricasID}    visible
    Click    ${metricasID}

Pesquisa sobre um usuario nas metricas
    [Documentation]    Procura pelo campo de pesquisa de usuario, pesquisa o nome de um usuario e verifica se seus dados estao sendo exibidos
    [Arguments]    ${usuario}    ${localizacaoDoNomePosBusca}
    Wait For Elements State    ${campoDeBuscaDeUsuarioId}    visible
    Fill Text    ${campoDeBuscaDeUsuarioId}    ${usuario}
    Click    ${botaoDeBuscaLiderancaId}
    Sleep    1s
    ${nomeNaTela}=    Get Text    ${localizacaoDoNomePosBusca}    
    Should Be Equal    ${usuario}    ${nomeNaTela}

Checa se feed contem metricas
    [Documentation]    Checa se o feed contem o link de metricas
    Get Elements    ${metricasID}

*** Comments ***

Checa se hamburguer nao contem metricas
    [Documentation]    Checa se o hamburguer nao contem o link de metricas
    Clica no hamburguer do feed
    Sleep    2s
    Get Elements    ${metricasHamburguerBtnId}

