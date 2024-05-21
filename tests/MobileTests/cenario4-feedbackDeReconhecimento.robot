*** Settings ***
Resource    ../../resources/MobileTestsResources/cenario4-feedbackDeREconhecimento.robot

*** Variables ***
#Contas
${userPost}
${psswdPost}

${DESTINATARIO-INEXISTENTE}    Gustavo Kunai    
${DESTINATARIO}
${COMPORTAMENTO-ID}
${FEEDBACK-CURTO}    Testando Feedback
${FEEDBACK-GRANDE}    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor,
${REFERENCIA-DO-POST-NO-FEED}
${ID-MENSAGEM-DE-ERRO}
${MENSAGEM-DE-ERRO-SEM-CAMPOS}    Por favor, verifique se você preencheu todos os campos.
${MENSAGEM-DE-ERRO-TEXTO-LONGO-DEMAIS}    
${MENSAGEM-DE-ERRO-USUARIO-INEXISTENTE}

*** Test Cases ***
CT-1 Feedback de reconhecimento
    Chega na tela de feedback    ${userPost}    ${psswdPost}
    Seleciona feedback de reconhecimento
    Preenche nome do destinatario    ${DESTINATARIO}
    Seleciona comportamento    ${COMPORTAMENTO-ID}
    Escreve feedback    ${FEEDBACK-CURTO}
    Clica para enviar feedback
    Checa se esta na pagina de recompensa
    Voltar para o feed
    Verifica se post esta no feed    ${REFERENCIA-DO-POST-NO-FEED}
    
CT-2 Feedback de reconhecimento sem recipiente
    Chega na tela de feedback    ${userPost}    ${psswdPost}
    Seleciona feedback de reconhecimento
    Seleciona comportamento    ${COMPORTAMENTO-ID}
    Escreve feedback    ${FEEDBACK-CURTO}
    Clica para enviar feedback
    Verifica mensagem de erro    ${ID-MENSAGEM-DE-ERRO}    ${MENSAGEM-DE-ERRO-SEM-CAMPOS}

CT-3 Feedback de reconhecimento sem comportamento
    Chega na tela de feedback    ${userPost}    ${psswdPost}
    Seleciona feedback de reconhecimento
    Preenche nome do destinatario    ${DESTINATARIO}
    Escreve feedback    ${FEEDBACK-CURTO}
    Clica para enviar feedback
    Checa se esta na pagina de recompensa
    Verifica se post esta no feed    ${REFERENCIA-DO-POST-NO-FEED}

CT-4 Feedback de reconhecimento sem texto
    Chega na tela de feedback    ${userPost}    ${psswdPost}
    Seleciona feedback de reconhecimento
    Preenche nome do destinatario    ${DESTINATARIO}
    Seleciona comportamento    ${COMPORTAMENTO-ID}
    Clica para enviar feedback
    Verifica mensagem de erro    ${ID-MENSAGEM-DE-ERRO}    ${MENSAGEM-DE-ERRO-SEM-CAMPOS}

CT-5 Feedback de reconhecimento com texto longo demais
    Chega na tela de feedback    ${userPost}    ${psswdPost}
    Seleciona feedback de reconhecimento
    Preenche nome do destinatario    ${DESTINATARIO}
    Seleciona comportamento    ${COMPORTAMENTO-ID}
    Escreve feedback    ${FEEDBACK-GRANDE}
    Clica para enviar feedback
    Verifica mensagem de erro    ${ID-MENSAGEM-DE-ERRO}    ${MENSAGEM-DE-ERRO-TEXTO-LONGO-DEMAIS}

CT-6 Feedback positivo com usuario inexistente
    Chega na tela de feedback    ${userPost}    ${psswdPost}
    Seleciona feedback de reconhecimento
    Preenche nome do destinatario    ${DESTINATARIO-INEXISTENTE}
    Seleciona comportamento    ${COMPORTAMENTO-ID}
    Escreve feedback    ${FEEDBACK-CURTO}
    Clica para enviar feedback
    Verifica mensagem de erro    ${ID-MENSAGEM-DE-ERRO}    ${MENSAGEM-DE-ERRO-USUARIO-INEXISTENTE}

CT-7 Feedback de reconhecimento anonimo
    Chega na tela de feedback    ${userPost}    ${psswdPost}
    [Tags]    EM_DEV CHECAR_IDS
    Seleciona feedback de reconhecimento
    Preenche nome do destinatario    ${DESTINATARIO}
    Seleciona comportamento    ${COMPORTAMENTO-ID}
    Escreve feedback    ${FEEDBACK-CURTO}
    Clica no botao de anonimato
    Clica para enviar feedback
    
    