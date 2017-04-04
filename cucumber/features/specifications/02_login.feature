#language: pt

@login
@hooks_cliente
Funcionalidade: Login

Eu, como usuário do Grupon
Desejo realizar Login
Para que eu possa ter acesso a minha conta

Contexto: Cadastro de usuário com sucesso
Dado que eu estou na página de cadastro de usuário
Quando eu informos meus dados
E aciono a ação cadastrar
Então eu tenho um usuário cadastrado


Cenario: Login com sucesso

    Dado que eu esteja na página de login
    Quando eu informar minhas credenciais
    E efetuar o login
    Entao  estarei autenticado no sistema
