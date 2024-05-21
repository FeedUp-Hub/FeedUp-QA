*** Settings ***
Documentation    este arquivo contem palavras chaves e bibliotecas que serao utilizadas em quase todos os cenarios de testes
Library    AppiumLibrary
Library     OperatingSystem
Library    Process

*** Variables ***
${EXPO-URL}    exp://192.168.15.67:8081

#Referencias de cada tela
${loginReferencia}    //android.widget.TextView[@text="Bem vindo ao FeedUp!"]
${esqueciSenhaReferencia}
${onboarding1Referencia}    //android.widget.TextView[@text="FeedUp é uma plataforma desenvolvida para feedbacks entre colaboradores"]
${onboarding2Referencia}    //android.widget.TextView[@text="A realização de feedbacks pelo FeedUp não tem o intuito de descartar avaliações formais de desempenho"]
${onboarding3Referencia}    //android.widget.TextView[@text="Feedbacks construtivos são incentivados, mas procure sempre manter o respeito com outros colaboradores"]
${onboarding4Referencia}    //android.widget.TextView[@text="Engajar com os feedbacks te proporciona bonificações e maior prestígio na plataforma"]

#${mapaDeHumorReferencia}

${feedReferencia}
${postReferencia}
${postReconhecimentoReferencia}
${postConstrutivoReferencia}
${postRecompensaReferencia}
${feedbackReconhecimentoReferencia}
${feedbackConstrutivoReferencia}
${culturaReferencia}    //android.widget.TextView[@text="Quais são os comportamentos que compartilhamos?"]
${perfilReferencia}
${termosReferencia}
${ioasysShopReferencia}
${metricasReferencia}

#Localizadores da navbar
${homeButtonID}      //android.view.View[@content-desc="Home"]  
${cultureButtonID}    //android.view.View[@content-desc="Cultura"]
${profileButtonID}    //android.view.View[@content-desc="Perfil"]
${postButtonID}    //android.view.View[@content-desc="Feedback"]

#Localizadores do hamburguer
${hamburguerID}    //android.widget.Button[@index="0"]
${termosID}    //android.widget.Button[@content-desc="Termos de Uso"]
${metricasID}    //android.widget.Button[@content-desc="Métricas"]
${logoutID}    //android.widget.Button[@content-desc="Logout"]
${ioasysTradeID}    //android.widget.Button[@content-desc="Ioasys Trade (soon)"]


*** Keywords ***
Abrir o expo no emulador
    Run Process  adb  shell  am  start  -a  android.intent.action.VIEW  -d  exp://192.168.15.67:8081
    Sleep     10s

Abrir o app
    [Tags]    abrir
    Open Application       http://127.0.0.1:4723    platformName=Android    platformVersion=11    deviceName=emulator-5554    appPackage=host.exp.exponent    appActivity=host.exp.exponent.LauncherActivity   automationName=Uiautomator2

Chegar na pagina de login
    [Documentation]    Abre o app e o direciona a tela de login
    Abrir o app
    Abrir o expo no emulador
    Sleep    2s

#Verificacoes de que usuario atingiu certa tela
Checa se identificador existe
    [Documentation]    Verifica se um dado elemento existe
    [Arguments]    ${element}
    Element Should Be Visible    ${element}

Checa se esta na tela de login
    [Documentation]    Verifica se o usuario esta na tela de login
    Checa se identificador existe    ${loginReferencia}

Checa se esta no feed
    [Documentation]    Verifica se usuario esta no feed
    Checa se identificador existe    ${feedReferencia}

Checa se esta na pagina de cultura
    [Documentation]    Verifica se o usuario esta na pagina de cultura
    Checa se identificador existe    ${culturaReferencia}

Checa se esta na pagina de post
    [Documentation]    Verifica se o usuario esta na pagina de post
    Checa se identificador existe    ${postReferencia}

Checa se esta na pagina de perfil
    [Documentation]    Verifica se o usuario esta na pagina de perfil
    Checa se identificador existe    ${perfilReferencia}

Checa se esta na pagina de termos
    [Documentation]    Verifica se o usuario esta na pagina de termos
    Checa se identificador existe    ${termosReferencia}

Checa se esta na ioasys shop
    [Documentation]    Verifica se o usuario esta na pagina da ioasys shopt
    Checa se identificador existe    ${ioasysShopReferencia}

Checa se esta na pagina de feedback de reconhecimento
    [Documentation]    Verifica se o usuario esta na tela de realziar feedback de reconhecimento
    Checa se identificador existe    ${postReconhecimentoReferencia}

Checa se esta na pagina de feedback construtivo
    [Documentation]    Verifica se o usuario esta na tela de realziar feedback de reconhecimento
    Checa se identificador existe    ${postConstrutivoReferencia}
 
Checa se esta na pagina de recompensa
    [Documentation]    Verifica se usuario esta na pagina de recompensa por feedback
    Checa se identificador existe    ${postRecompensaReferencia}

Checa se esta na pagina de metricas
    [Documentation]    Verifica se usuario esta na pagina de metricas
    Checa se identificador existe    ${metricasReferencia}

Checa se esta na pagina de onboarding 1
    [Documentation]    Checa se usuario esta na segunda pagina de onboarding
    Checa se identificador existe    ${onboarding1Referencia}

Checa se esta na pagina de onboarding 2
    [Documentation]    Checa se usuario esta na primeira pagina de onboarding
    Checa se identificador existe    ${onboarding2Referencia}

Checa se esta na pagina de onboarding 3
    [Documentation]    Checa se usuario esta na primeira pagina de onboarding
    Checa se identificador existe    ${onboarding3Referencia}

Checa se esta na pagina de onboarding 4
    [Documentation]    Checa se usuario esta na primeira pagina de onboarding
    Checa se identificador existe    ${onboarding4Referencia}

#Palavras chave da navbar
Clica no botao de inicio
    [Documentation]    Clica no botao de home da navbar na pagina do feed
    Wait Until Element Is Visible    ${homeButtonID}
    Click Element    ${homeButtonID}

Clica no botao de cultura
    [Documentation]    Clica no botao de cultura da navbar na pagina do feed
    Wait Until Element Is Visible    ${cultureButtonID}
    Click Element    ${cultureButtonID}

Clica no botao de perfil
    [Documentation]    Clica no botao de perfil da navbar na pagina do feed
    Wait Until Element Is Visible    ${profileButtonID}
    Click Element    ${profileButtonID}

Clica no botao de post
    [Documentation]    Clica no botao de post da navbar na pagina do feed
    Wait Until Element Is Visible    ${postButtonID}
    Click Element    ${postButtonID}

#Palavras chave do hamburguer
Clica no hamburguer
    [Documentation]    Clica no hamburguer
    Wait Until Element Is Visible    ${hamburguerID}
    Click Element    ${hamburguerID}

Clica em termos
    [Documentation]    Clica nos termos de uso no hamburguer
    Clica no hamburguer
    Click Element    ${termosID}

Clica em logout
    [Documentation]    Clica em fazer logout no hamburguer
    Clica no hamburguer
    Click Element    ${logoutID}

Clica na ioasys shop
    [Documentation]    Clica na pagina da ioasys shop
    Clica no hamburguer
    Click Element    ${ioasysTradeID}

Clica em metricas
    [Documentation]    Clica no botao de metricas
    Clica no hamburguer
    Click Element    ${metricasID}

Verifica se o hamburguer esta fechado
    [Documentation]    Verifica se o hamburguer esta fechado e falha se estiver aberto
     ${element_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${logoutID}
    Run Keyword If    ${element_visible}    Fail

Checa icones do hamburguer
    [Documentation]    Checa se todos os icones do hamburguer estao sendo corretamente exibidos
    Sleep    1s
    Element Should Be Visible    ${termosID}
    Element Should Be Visible    ${ioasysTradeID}
    Element Should Be Visible    ${logoutID}