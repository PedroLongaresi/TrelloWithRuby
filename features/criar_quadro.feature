#language: pt
Funcionalidade: Gestão da adição dos quadros no Trello
  Como usuario do Trello EU QUERO conseguir adicionar Quadros A Fim de atender minhas necessidades

  Background: Usuario logar no sistema
    Dado que sou um usuario do sistema com sessao já ativa
    Quando acesso o site
    Então devo setar o cookie para agilizar os testes

  Cenário: Adicionar pelo header
    Dado que sou um Usuario do Trello na pagina inicial
    Quando pressionar o botão + na parte superior
    E clicar em Criar Quadro
    E preencher o titulo do Quadro como Teste header
    E pressionar o campo Criar
    Então o quadro será criado

  Cenário: Adicionar pelo body do site
    Dado que necessito de adicionar pelo body
    Quando pressionar o botão Criar Quadro
    E preencher o titulo do Quadro como Teste Body
    E pressionar o campo Criar
    Então o quadro será criado

  
