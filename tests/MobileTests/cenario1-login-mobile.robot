*** Settings ***
Documentation    Cenarios de teste da pagina de login da versao mobile da feedup
Resource    ../../resources/MobileTestsResources/cenario1-loginOnboardingMobile.robot

*** Variables ***
#Variaveis para login
${rightEmail}
${rightPsswd}

${wrongEmail}
${wrongPsswd}

${normalEmail}    
${normalPsswd}
${rhEmail}
${rhPsswd}

#variaveis para mapa de humor - NAO SERAO UTILIZADAS
${humor}
${muitoInsatisfeitoBtn}
${insatisfeitoBtn}
${neutroBtn}
${satisfeitoBtn}
${muitoSatisfeitoBtn}

#Variavies para verificacao de roles
${usuarioParaPesquisar}    
${idDoNomeDousuarioParaPesquisar}

*** Comments ***
Testes com tag DEV incluem features em desenvolvimento, portanto nao podem ser executados
Testes involvendo o mapa de humor nao serao executados
TESTES PRONTOS PARA SEREM EXECUTADOS POSSUEM O CODIGO 1
DIVERSOS CASOS DE TESTE FORAM DELETADOS DEVIDO A MUDANCAS NO DESENVOLVIMENTO

*** Test Cases ***

#TESTES DE HUMOR FORAM EXCLUIDOS

CT-2 Login no primeiro acesso (sem humor)
    [Tags]    login    funcional 1
    Abrir o expo no emulador
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
    Checa mensagem de erro do login

CT-6 Fazer login com email incorreto e senha correta
    [Tags]    login    funcional    negativo 1
    Login completo    ${wrongEmail}    ${rightPsswd}
    Checa mensagem de erro do login


CT-7 Fazer login com email correto e senha incorreta
    [Tags]    login    funcional    negativo 1
    Login completo    ${rightEmail}    ${wrongPsswd}
    Checa mensagem de erro do login

CT-8 Fazer login com email e senha incorretos 
    [Tags]    login    funcional    negativo 1
    Login completo    ${wrongEmail}    ${wrongPsswd}
    Checa mensagem de erro do login

CT-9 Ir para o feed sem concordar
    [Tags]    login    funcional    negativo 1
    Login completo    ${rightEmail}    ${rightPsswd}
    Checa se esta na pagina de onboarding 1
    Vai para a ultima pagina de onboarding
    Checa se o botao de ir para feedup esta desativado

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
    Clica no hamburguer do feed
    Checa se hamburguer nao contem metricas

CT-16 Definição de rota de usuário de RH
    [Tags]    roles    funcional    DEV*
    Login completo    ${normalEmail}    ${normalPsswd}
    Checa se esta na pagina de onboarding 1
    Vai para a ultima pagina de onboarding
    Clica para concordar com termos
    Clica para ir para feedup
    Checa se o feed foi atingido
    Clica no hamburguer do feed
    Checa se hamburguer contem metricas
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
    Clica no hamburguer do feed
    Checa se hamburguer contem metricas
    Clica nas metricas
    Pesquisa sobre um usuario nas metricas    ${usuarioParaPesquisar}    ${idDoNomeDousuarioParaPesquisar}

CT-18 Botão de voltar para slide anterior no onboarding
    [Tags]    login    funcional    1
    Login completo    ${normalEmail}    ${normalPsswd}
    Checa se esta na pagina de onboarding 1
    Testa botoes de voltar do onboarding