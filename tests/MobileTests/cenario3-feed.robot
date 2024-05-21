*** Settings ***
Documentation    Suite de testes do feed
Resource    ../../resources/MobileTestsResources/cenario3-feed.robot

*** Variables ***
#Usuarios e senhas
${usuario}
${senha}

#Localizacaoes de botoes de like e de contadores de like
${likeID}
${contagemDeLikeID}

#Localizacoes de botoes de comentarios
${BOTAO-DE-VER-COMENTARIOS-ID}
${BOTAO-DE-COMENTAR-ID}
${CAMPO-DE-COMENTARIO-ID}
${SELETOR-POS-COMENTARIO}
${ERRO-COMENTARIO-ID}
${HUGE-TEXT}    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor,
${BOTAO-DE-DELETAR}


*** Test Cases ***
CT-1 Botão de início
    Chega no feed    ${usuario}    ${senha}
    Clica no botao de inicio
    Checa se esta no feed

CT-2 Botão de cultura
    Chega no feed    ${usuario}    ${senha}
    Clica no botao de cultura
    Checa se esta na pagina de cultura

CT-3 Botão de perfil
    Chega no feed    ${usuario}    ${senha}
    Clica no botao de perfil
    Checa se esta na pagina de perfil

CT-4 Botão de criar feedback
    Chega no feed    ${usuario}    ${senha}
    Clica no botao de post
    Checa se esta na pagina de post

CT-5 Dar like no post
    Chega no feed    ${usuario}    ${senha}
    Verifica contagem de likes sobe    ${contagemDeLikeID}    ${likeID}

CT-6 Clicar duas vezes no like
    Chega no feed    ${usuario}    ${senha}
    Verifica contagem de likes desce    ${contagemDeLikeID}    ${likeID}

CT-7 Comentar num post
    Chega no feed    ${usuario}    ${senha} 
    Comentar num post    ${BOTAO-DE-VER-COMENTARIOS-ID}    ${CAMPO-DE-COMENTARIO-ID}    ${BOTAO-DE-COMENTAR-ID}    TESTE    ${SELETOR-POS-COMENTARIO}

CT-8 Comentar num post com mais de 250 caracteres
    Chega no feed    ${usuario}    ${senha}
    Comentar com texto grande demais    ${BOTAO-DE-VER-COMENTARIOS-ID}    ${CAMPO-DE-COMENTARIO-ID}    ${BOTAO-DE-COMENTAR-ID}    ${HUGE-TEXT}    ${ERRO-COMENTARIO-ID}

CT-9 Hamburguer exibe todos os icones
    Chega no feed    ${usuario}    ${senha}
    Clica no hamburguer
    Checa icones do hamburguer

CT-10 Ver termos
    Chega no feed    ${usuario}    ${senha}
    Clica em termos
    Checa se esta na pagina de termos

CT-11 Ioasys shop
    Chega no feed    ${usuario}    ${senha}
    [Tags]    DEV
    Clica na ioasys shop
    Checa se esta na ioasys shop

CT-12 Logout   
    Chega no feed    ${usuario}    ${senha}
    Clica em logout
    Checa se esta na tela de login

CT-13 Fechar icone hamburguer
    Chega no feed    ${usuario}    ${senha}
    Verifica se o hamburguer esta fechado

CT-15 Deletar post
    Chega no feed    ${usuario}    ${senha}
    Deletar post    ${BOTAO-DE-DELETAR}