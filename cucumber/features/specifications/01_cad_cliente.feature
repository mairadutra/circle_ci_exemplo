#language: pt
@hooks_cliente
Funcionalidade: Cadastro de novo usuário
 Eu quero me tornar usuário do grupon
 para ter acesso as promoções


Cenario: Cadastro de usuário com sucesso
Dado que eu estou na página de cadastro de usuário
Quando eu informos meus dados
E aciono a ação cadastrar
Então eu tenho um usuário cadastrado
