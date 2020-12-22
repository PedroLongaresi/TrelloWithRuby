#language: pt
Funcionalidade: Exclusão dos Quadros
  Como usuario do Trello EU QUERO conseguir excluir Quadros A Fim de conseguir deixar mais facil e rapido o acesso ao meu Board

  Background: Usuario logar no sistema
    Dado que sou um usuario do sistema com sessao já ativa
    Quando acesso o site
    Então devo setar o cookie para agilizar os testes

  Cenário: Excluir pelo quadro
    Dado que sou um Usuario do Trello na Home
    Quando clicar em um board
    E dentro desse board clicar em Mais
    E clicar em Fechar Quadro
    E na tela de confirmação clicar em Fechar
    Então o quadro será fechado

