Cenário: Realizar login com uma conta nunca logada e informações corretas (CT-1)
    Dado que o usuário está na página de login
    Quando ele insere um email válido e uma senha correta e clica no botão de login
    Então ele deve ser direcionado para a tela de onboarding
    Detalhes:
    O email e a senha devem ser válidos e pertencer a uma conta que nunca foi logada antes
    O usuário deve ser direcionado para o feed ao passar por todos os slides
    O usuário não deve ver nenhuma mensagem de erro ou aviso.

Cenário: Login no primeiro acesso (sem humor) (CT-2)
    Dado que o usuário está na página de login
    Quando ele insere um email válido e uma senha correta e clica no botão de login
    E ser direcionado para a página de onboarding
    E passar por todos os slides
    E Clicar para ir para ir para o feed
    Então ele deverá ser direcionado para o feed
    Detalhes:
    O email e a senha devem ser válidos e pertencer a uma conta que nunca foi logada antes.
    O usuário deve ser direcionado para o feed principal do aplicativo.
    O usuário não deve ver nenhuma mensagem de erro ou aviso.
    O usuário não deve ser direcionado para a página de seleção de humor.

Cenário: Segundo login da conta e primeiro do dia (CT-3)
    Dado que o usuário está na página de login
    Quando ele insere um email válido e uma senha correta e clica no botão de login
    Então ele deve ser direcionado para o feed
    Detalhes:
    O email e a senha devem ser válidos e pertencer a uma conta que já foi logada antes.
    O usuário deve ser direcionado para o feed principal do aplicativo.
    O usuário não deve ver nenhuma mensagem de erro ou aviso.
    O usuário não deve ver o onboarding nem os mapas de humor (MAPAS DE HUMOR FORAM EXCLUIDOS).

Cenário: Segundo login no dia (CT-4)
    Dado que o usuário está na página de login
    Quando ele insere um email válido e uma senha correta e clica no botão de login
    Então ele deve ser direcionado para o feed

Cenário: Fazer login sem email e senha correta (CT-5)
    Dado que o usuário insere um e-mail incorreto
    E o usuário insere uma senha correta
    Quando o usuário clica em Login
    Então o sistema deve exibir uma mensagem de erro de login


Cenário: Fazer login com email incorreto e senha correta (CT-6)
    Dado que o usuário insere um e-mail incorreto
    E o usuário insere uma senha correta
    Quando o usuário clica em Login
    Então o sistema deve exibir uma mensagem de erro de login

Cenário: Fazer login com email correto e senha incorreta (CT-7)
    Dado que o usuário insere um e-mail válido
    E o usuário insere uma senha incorreta
    Quando o usuário clica em Login
    Então o sistema deve exibir uma mensagem de erro de login

Cenário: Fazer login com email e senha incorretos (CT-8)
    Dado que o usuário está na tela de login
    Quando ele insere um e-mail e senha incorretos
    E clica em "Login"
    Então ele deve receber uma mensagem de erro e permanecer na tela de login

Cenario: Ir para o feed sem concordar (CT-9)
    Dado que o usuário está na tela de login
    Quando ele realiza o login pela primeira vez com qualquer usuário
    E passa pelos slides de boas-vindas 
    Mas não clica em "Aceitar termos e condições"
    E clica em "Prosseguir para Feedup"
    Então ele deve permanecer na mesma tela

Cenario: Esqueceu a senha direciona usuario corretamente (CT-10)
    Dado que o usuário está na tela de login
    Quando ele clica em "Esqueci a senha"
    Então ele deve ser redirecionado para a tela de "Esqueci a senha"

Cenario: Botão de mood - muito insatisfeito (CT-11)
    Dado que o usuário está logado
    E este é seu primeiro login do dia
    Quando ele escolhe o humor "Muito Insatisfeito"
    E clica no botão de feedback
    Então ele deve receber uma mensagem de agradecimento pelo feedback
    E ser direcionado para o feed

Cenario: Botão de mood - insatisfeito (CT-12)
    Dado que o usuário está logado
    E este é seu primeiro login do dia
    Quando ele escolhe o humor "Insatisfeito"
    E clica no botão de feedback
    Então ele deve receber uma mensagem de agradecimento pelo feedback
    E ser direcionado para o feed

Cenario: Botão de mood - neutro (CT-13)
    Dado que o usuário está logado
    E este é seu primeiro login do dia
    Quando ele escolhe o humor "Neutro"
    E clica no botão de feedback
    Então ele deve receber uma mensagem de agradecimento pelo feedback
    E ser direcionado para o feed

Cenario: Botão de mood - satisfeito (CT-14)
    Dado que o usuário está logado
    E este é seu primeiro login do dia
    Quando ele escolhe o humor "Satisfeito"
    E clica no botão de feedback
    Então ele deve receber uma mensagem de agradecimento pelo feedback
    E ser direcionado para o feed

Cenario: Botão de mood - muito satisfeito (CT-15)
    Dado que o usuário está logado
    E este é seu primeiro login do dia
    Quando ele escolhe o humor "Muito Satisfeito"
    E clica no botão de feedback
    Então ele deve receber uma mensagem de agradecimento pelo feedback
    E ser direcionado para o feed

Cenario: Definir a rota de usuário padrão (CT-16)
    Dado que o usuário realiza o login pela primeira vez com o usuário padrão
    E passa por todos os slides de boas-vindas
    E clica em "Aceitar termos e condições"
    Quando ele é direcionado para o feed
    E clica no botão no canto superior esquerdo no mobile ou em metricas na nav na web
    Então ele não deve ver a opção de métricas

Cenario: Definir a rota de usuário para o usuário de RH (CT-17)
    Dado que o usuário realiza o login pela primeira vez com o usuário de RH
    E passa por todos os slides de boas-vindas
    E clica em "Aceitar termos e condições"
    Quando ele é direcionado para o feed
    E clica no botão no campo superior esquerdo no mobile ou metricas na navbar na web
    Então ele deve ser capaz de visualizar usuários de todas as equipes
    E verificar a página de métricas
    E pesquisar por um usuário e ver as métricas dele

Cenario: Definir a rota de usuário para o usuário de lideranca (CT-18)
    Dado que o usuário realiza o login pela primeira vez com o usuário de RH
    E passa por todos os slides de boas-vindas
    E clica em "Aceitar termos e condições"
    Quando ele é direcionado para o feed
    E clica no botão no campo superior esquerdo no mobile ou metricas na navbar na web
    Então ele deve ser capaz de visualizar usuários de todas as equipes
    E verificar a página de métricas
    E pesquisar por um usuário e ver as métricas dele

Cenario: Botão de voltar para slide anterior Onboarding (CT-19)
    Dado que o usuário realiza login pela primeira vez
    Quando o usuário passa para o segundo slide
    E o usuário clica para voltar para o primeiro slide
    E o usuário passa para o segundo slide novamente
    E o usuário passa para o terceiro slide
    E o usuário clica para voltar para o segundo slide
    E o usuário passa para o terceiro slide novamente
    E o usuário passa para o quarto slide
    E o usuário clica para voltar para o terceiro slide
    Então o usuário deve estar no terceiro slide

Cenario: Checar layout (CT-20)
    Dado que o usuário abriu o site
    Quando o usuário esta na tela de login
    Então deverá ser ser analisada a conformidade do wireframe com a aplicação