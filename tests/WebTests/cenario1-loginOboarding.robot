*** Settings ***
Documentation    suite de testes da tela de login na web da FeedUp
Resource    ../../resources/WebTestsResources/cenario1-loginOnboarding.robot

*** Variables ***
${rightEmail}
${rightPsswd}

${usuarioParaPesquisar}   
${idDoNomeDousuarioParaPesquisar}

${wrongEmail}
${wrongPsswd}

${normalEmail}    
${normalPsswd}
${rhEmail}
${rhPsswd}

${mensagemDeErroLogin}
${mensagemDeErroLoginID}


*** Test Cases ***

#TESTES DE HUMOR FORAM EXCLUIDOS

CT-2 Login no primeiro acesso (sem humor)
    [Tags]    login    funcional 1
    Abrir o site
    Login completo    ${rightEmail}    ${rightPsswd}
    Checa se esta na pagina de onboarding 1    
    Vai para a ultima pagina de onboarding
    Clica para concordar com termos
    Clica para ir para feedup
    Checa se o feed foi atingido

CT-4 Segundo login no dia
    [Tags]    login    funcional 1
    Login completo    ${rightEmail}    ${rightPsswd}
    Sleep    1s
    Checa se o feed foi atingido

CT-5 Fazer login sem email e senha correta
    [Tags]    login    funcional    negativo 1
    Login completo    ${wrongEmail}    ${wrongPsswd}
    Checa mensagem de erro    ${mensagemDeErroLoginID}    ${mensagemDeErroLogin}

CT-6 Fazer login com email incorreto e senha correta
    [Tags]    login    funcional    negativo 1
    Login completo    ${wrongEmail}    ${rightPsswd}
    Checa mensagem de erro    ${mensagemDeErroLoginID}    ${mensagemDeErroLogin}


CT-7 Fazer login com email correto e senha incorreta
    [Tags]    login    funcional    negativo 1
    Login completo    ${rightEmail}    ${wrongPsswd}
    Checa mensagem de erro    ${mensagemDeErroLoginID}    ${mensagemDeErroLogin}

CT-8 Fazer login com email e senha incorretos 
    [Tags]    login    funcional    negativo 1
    Login completo    ${wrongEmail}    ${wrongPsswd}
    Checa mensagem de erro    ${mensagemDeErroLoginID}    ${mensagemDeErroLogin}

CT-9 Ir para o feed sem concordar
    #CHECAR O COMPORTAMENTO DA PAGINA COM O BERNARDO
    [Tags]    login    funcional    negativo 
    Login completo    ${rightEmail}    ${rightPsswd}
    Checa se esta na pagina de onboarding 1
    Vai para a ultima pagina de onboarding
    #Checa se o botao de ir para feedup esta desativado

CT-10 Esqueceu a senha direciona usuário corretamente
    [Tags]    login    funcional  DEV  
    Checa o link de esqueci a senha

CT-15 Definição de rota de usuário padrão
    [Tags]    roles    funcional    DEV*
    Login completo    ${normalEmail}    ${normalPsswd}
    Checa se esta na pagina de onboarding 1
    Vai para a ultima pagina de onboarding
    Clica para concordar com termos
    Clica para ir para feedup
    Checa se o feed foi atingido
    

CT-16 Definição de rota de usuário de RH
    [Tags]    roles    funcional    DEV*
    Login completo    ${normalEmail}    ${normalPsswd}
    Checa se esta na pagina de onboarding 1
    Vai para a ultima pagina de onboarding
    Clica para concordar com termos
    Clica para ir para feedup
    Checa se o feed foi atingido
    Clica nas metricas
    Pesquisa sobre um usuario nas metricas    ${usuarioParaPesquisar}    ${idDoNomeDousuarioParaPesquisar}

CT-17 Definição de rota de usuário de liderança
    [Tags]    roles    funcional    DEV*
    Login completo    ${normalEmail}    ${normalPsswd}
    Checa se esta na pagina de onboarding 1
    Vai para a ultima pagina de onboarding
    Clica para concordar com termos
    Clica para ir para feedup
    Checa se o feed foi atingido
    Clica nas metricas
    Pesquisa sobre um usuario nas metricas    ${usuarioParaPesquisar}    ${idDoNomeDousuarioParaPesquisar}

CT-18 Botão de voltar para slide anterior no onboarding
    [Tags]    login    funcional    1
    Login completo    ${normalEmail}    ${normalPsswd}
    Checa se esta na pagina de onboarding 1
    Testa botoes de voltar do onboarding