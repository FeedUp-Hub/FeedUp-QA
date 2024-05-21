*** Settings ***
Documentation    Automacao dos testes da tela de login e onboarding mobile
Library    AppiumLibrary
Resource    ./recursosMobileGerais.robot


*** Variables ***
#Variaveis relacionadas ao login em si
${userFieldId}    //android.widget.EditText[@text="Usuário"]
${psswdFieldId}    //android.widget.EditText[@text="Senha"]
${forgotPsswdLink}    //android.widget.TextView[@text="Esqueceu a senha?"]
${loginBtn}    //android.view.ViewGroup[@content-desc="Login"]

${loginErrorMessageId}    android:id/message
${loginErrorMessage}    Credenciais inválidas. Tente novamente.

#Variaveis relacionadas a tela de onboarding
${onboardingNextButtons}    //android.view.ViewGroup[@content-desc="Seguinte"]    
${agreeWithTermsBtnId}    agreeBtn
${goToFeedUpButtonId}    //android.view.ViewGroup[@content-desc="Prosseguir para a Home"]
${3rdPageText}      
${3rdPageTextId}

${onboardingGoBackButtons}    //android.widget.ImageView[@index="0"]    

#Variaveis relacionadas ao feed
${feedHamburguerBtn}
${metricasHamburguerBtnId}
${rhMetricasIndividuaisBtnId}
${rhMetricasColetivasBtnId}
${searchUserFieldLiderancaId}

#Variaveis relacionadas a pagina de metricas
${botaoDeBuscaLiderancaId}

*** Keywords ***
###Palavras chave relacionadas a tela de login
Preenche o campo de usuario
    [Documentation]    Preenche o email do usuario
    [Arguments]    ${user}
    Input Text    ${userFieldId}    ${user}


Preenche o campo de senha
    [Documentation]    Preenche a senha do usuario
    [Arguments]    ${psswd}
    Input Text    ${psswdFieldId}    ${psswd}


Clica no link de esqueci a senha
    [Documentation]    Clica no link de recuperar a senha
    Click Element    ${forgotPsswdLink}


Clica no botao de login
    [Documentation]    Clica no botao de logar
    Click Element    ${loginBtn} 


Login completo
    [Documentation]    Preenche o email e senha do usuario e clica no botao de fazer login
    [Arguments]    ${username}    ${psswd}
    Preenche o campo de usuario    ${username}
    Preenche o campo de senha    ${psswd}
    Clica no botao de login


Checa o link de esqueci a senha
    [Documentation]    Checa se o link de esqueceu a senha direciona o usuario para tal pagina corretamente
    Clica no link de esqueci a senha
    Wait Until Element Is Visible    ${esqueciSenhaReferencia}


Checa se o login foi bem sucedido
    [Documentation]    Checa se um dado elemento esta presente ao realizar o login
    [Arguments]    ${destinationReference}
    Wait Until Element Is Visible    ${destinationReference}


Checa mensagem de erro
    [Documentation]    Compara se a mensagem de erro em uma localizacao espefica esta de acordo com a mensagem pre-definida
    [Arguments]    ${messageId}    ${messageText}
    ${textoNaTela}=    Get Text    ${messageId}
    Should Be Equal As Strings    ${textoNaTela}    ${messageText}

Checa mensagem de erro do login
    [Documentation]    Checa a mensagem de erro da tela de login ao se preencher um campo errôneamente
    Checa mensagem de erro    ${loginErrorMessageId}    ${loginErrorMessage}

#Palavras chave relacionadas a tela de onboarding

Vai para a ultima pagina de onboarding
    [Documentation]    Codigo que passa por todos os slides de onboarding e avaliacao de humor ate chegar no feed    
    Checa se esta na pagina de onboarding 1
    Wait Until Element Is Visible    ${onboardingNextButtons}
    Click Element    ${onboardingNextButtons}
    Checa se esta na pagina de onboarding 2
    Wait Until Element Is Visible    ${onboardingNextButtons}
    Click Element    ${onboardingNextButtons}
    Checa se esta na pagina de onboarding 3
    Wait Until Element Is Visible    ${onboardingNextButtons}
    Click Element    ${onboardingNextButtons}
    Checa se esta na pagina de onboarding 4

Clica para concordar com termos
    [Documentation]    Clica no botao de concordar com termos
    Wait Until Element Is Visible    ${agreeWithTermsBtnId}
    Click Element    ${agreeWithTermsBtnId}


Clica para ir para feedup
    [Documentation]    Clica no botao do ultimo slide de onboarding para prosseguir para o aplicativo
    Wait Until Element Is Visible    ${goToFeedUpButtonId}
    Click Element    ${goToFeedUpButtonId}

Checa se o feed foi atingido
    [Documentation]    Checa se um usuario e direcionado ao feed e pode ver um elemento exclusivo daquela tela, dado uma referencia, ao realizar o segundo login do dia
    Checa se o login foi bem sucedido    ${feedReferencia}


Clica no proximo botao de onboarding
    [Documentation]    Clica nos botoes de proximo durante o onboarding 
    Click Element    ${onboardingNextButtons}

Checa se o botao de ir para feedup esta desativado
    [Documentation]    Verifica se o botao de prosseguir para feedup esta desabilitado 
    ${ativado}=     Get Element Attribute    ${goToFeedUpButtonId}    enabled
    Should Be Equal As Strings    ${ativado}    false

Clica no botao de voltar
    [Documentation]    Clica no botao de voltar para o slide anterior no onboarding
    Wait Until Element Is Visible    ${onboardingGoBackButtons}
    Click Element    ${onboardingGoBackButtons}

#Checar se IDs sao os mesmos ou se array e necessario
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

#Palavras chave do feed
Clica no hamburguer do feed
    [Documentation]    Clica no hamburguer do feed
    Click Element    ${feedHamburguerBtn}

Checa se hamburguer nao contem metricas
    [Documentation]    Checa se o hamburguer nao contem o link de metricas
    Clica no hamburguer do feed
    Sleep    2s
    Page Should Not Contain Element    ${metricasHamburguerBtnId}

Checa se hamburguer contem metricas
    [Documentation]    Checa se o hamburguer contem o link de metricas
    Clica no hamburguer do feed
    Sleep    2s
    Page Should Contain Element    ${metricasHamburguerBtnId}

Clica nas metricas
    [Documentation]    Clica no boato de metricas dentro do hamburguer
    Wait Until Element Is Visible    ${metricasHamburguerBtnId}
    Click Element    ${metricasHamburguerBtnId}

Pesquisa sobre um usuario nas metricas
    [Documentation]    Procura pelo campo de pesquisa de usuario, pesquisa o nome de um usuario e verifica se seus dados estao sendo exibidos
    [Arguments]    ${usuario}    ${localizacaoDoNomePosBusca}
    Wait Until Element Is Visible    ${searchUserFieldLiderancaId}
    Input Text    ${searchUserFieldLiderancaId}    ${usuario}
    Click Element    ${botaoDeBuscaLiderancaId}
    Sleep    1s
    ${nomeNaTela}=    Get Text    ${localizacaoDoNomePosBusca}    
    Should Be Equal As Strings    ${usuario}    ${nomeNaTela}