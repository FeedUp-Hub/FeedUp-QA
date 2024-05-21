*** Settings ***
Documentation    Este arquivo contém palavras-chave e bibliotecas que serão utilizadas em quase todos os cenários de testes
Library    Browser

*** Variables ***
${BASE_URL}    https://feedup-front.pages.dev/

# Referências de cada tela
${loginReferencia}    //*[@id="login-form"]/input[3]
${esqueciSenhaReferencia}    //*[@id="root"]/main/section/p
${onboarding1Referencia}    
${onboarding2Referencia}    
${onboarding3Referencia}    
${onboarding4Referencia}    
${feedReferencia}    
${postReferencia}    
${postReconhecimentoReferencia}    
${postConstrutivoReferencia}    
${postRecompensaReferencia}   
${feedbackReconhecimentoReferencia}    
${feedbackConstrutivoReferencia}    
${culturaReferencia}    
${perfilReferencia}    
${termosReferencia}    
${ioasysShopReferencia}    
${metricasReferencia}    

# Localizadores da navbar
${homeButtonID}      
${cultureButtonID}    
${profileButtonID}    
${postButtonID}    
   
${termosID}    
${metricasID}   
${logoutID}    
${ioasysTradeID}    

*** Keywords ***
Abrir o site
    [Documentation]    Abre o site na pagina de login
    Open Browser    ${BASE_URL}    chromium    False

Checa mensagem de erro
    [Documentation]    Compara se a mensagem de erro em uma localizacao espefica esta de acordo com a mensagem pre-definida
    [Arguments]    ${messageId}    ${messageText}
    ${textoNaTela}=    Get Text    ${messageId}
    Should Be Equal    ${textoNaTela}    ${messageText}

# Verificações de que usuário atingiu certa tela
Checa se identificador existe
    [Documentation]    Verifica se um dado elemento existe
    [Arguments]    ${element}
    Wait For Elements State    ${element}    visible

Checa se esta na tela de login
    [Documentation]    Verifica se o usuário está na tela de login
    Checa se identificador existe    ${loginReferencia}    

Checa se esta no feed
    [Documentation]    Verifica se usuário está no feed
    Checa se identificador existe    ${feedReferencia}

Checa se esta na pagina de cultura
    [Documentation]    Verifica se o usuário está na página de cultura
    Checa se identificador existe    ${culturaReferencia}

Checa se esta na pagina de post
    [Documentation]    Verifica se o usuário está na página de post
    Checa se identificador existe    ${postReferencia}

Checa se esta na pagina de perfil
    [Documentation]    Verifica se o usuário está na página de perfil
    Checa se identificador existe    ${perfilReferencia}

Checa se esta na pagina de termos
    [Documentation]    Verifica se o usuário está na página de termos
    Checa se identificador existe    ${termosReferencia}

Checa se esta na ioasys shop
    [Documentation]    Verifica se o usuário está na página da ioasys shop
    Checa se identificador existe    ${ioasysShopReferencia}

Checa se esta na pagina de feedback de reconhecimento
    [Documentation]    Verifica se o usuário está na tela de realizar feedback de reconhecimento
    Checa se identificador existe    ${postReconhecimentoReferencia}

Checa se esta na pagina de feedback construtivo
    [Documentation]    Verifica se o usuário está na tela de realizar feedback de reconhecimento
    Checa se identificador existe    ${postConstrutivoReferencia}
 
Checa se esta na pagina de recompensa
    [Documentation]    Verifica se usuário está na página de recompensa por feedback
    Checa se identificador existe    ${postRecompensaReferencia}

Checa se esta na pagina de metricas
    [Documentation]    Verifica se o usuário está na página de métricas
    Checa se identificador existe    ${metricasReferencia}

Checa se esta na pagina de onboarding 1
    [Documentation]    Checa se o usuário está na primeira página de onboarding
    Checa se identificador existe    ${onboarding1Referencia}

Checa se esta na pagina de onboarding 2
    [Documentation]    Checa se o usuário está na segunda página de onboarding
    Checa se identificador existe    ${onboarding2Referencia}

Checa se esta na pagina de onboarding 3
    [Documentation]    Checa se o usuário está na terceira página de onboarding
    Checa se identificador existe    ${onboarding3Referencia}

Checa se esta na pagina de onboarding 4
    [Documentation]    Checa se o usuário está na quarta página de onboarding
    Checa se identificador existe    ${onboarding4Referencia}

# Palavras-chave da navbar
Clica no botao de inicio
    [Documentation]    Clica no botão de home da navbar na página do feed
    Wait For Elements State    ${homeButtonID}    visible
    Click    ${homeButtonID}

Clica no botao de cultura
    [Documentation]    Clica no botão de cultura da navbar na página do feed
    Wait For Elements State    ${cultureButtonID}    visible
    Click    ${cultureButtonID}

Clica no botao de perfil
    [Documentation]    Clica no botão de perfil da navbar na página do feed
    Wait For Elements State    ${profileButtonID}    visible
    Click    ${profileButtonID}

Clica no botao de post
    [Documentation]    Clica no botão de post da navbar na página do feed
    Wait For Elements State    ${postButtonID}    visible
    Click    ${postButtonID}


Clica em termos
    [Documentation]    Clica nos termos de uso
    Click    ${termosID}

Clica em logout
    [Documentation]    Clica em fazer logout
    Click    ${logoutID}

Clica na ioasys shop
    [Documentation]    Clica na página da ioasys shop
    Click    ${ioasysTradeID}

Clica em metricas
    [Documentation]    Clica no botão de métricas
    Click    ${metricasID}
