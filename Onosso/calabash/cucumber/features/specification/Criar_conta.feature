#language:pt
@geral
Funcionalidade: cadastro Login

Cenário: cadastrar usuário no aplicativo
  Dado que cilque no botão crie seua conta
  Quando preencho os campos para cadastro
  E confirmo o cadastro acionando o botão cadastrar
  Então o usuário é direcionado para tela de login com o e-mail disponivel no campo e-mail
