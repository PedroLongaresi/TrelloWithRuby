#language: pt
Funcionalidade: Ferramentas de gestão dos quadros
  Como usuario do Trello 
  EU QUERO conseguir adicionar e excluir informações dos boards a 
  Fim de atender minhas necessidades

  Background: Usuario logar no sistema e acessar um board
    Dado que sou um usuario do sistema com sessao já ativa
    Quando acesso o site
    Então devo setar o cookie para agilizar os testes
    E Abrir um Board

  Cenário: Criar Listas
    Dado que sou um usuario no board
    Quando clicar em adicionar lista
    E preencho o nome da lista
    Então a mesma deve ser criada

  Cenário: Criar Cartões
    Dado que sou um Usuario do Trello na pagina inicial
    Quando pressionar o botão Criar Cartão
    E preencher o titulo do cartão
    E clico em adicionar cartão
    E adiciono outro card
    Então o cartão será criado

  Cenário: Descrever um cartão
    Dado que sou um Usuario do Trello e estou na pagina do cartão
    Quando preencher uma descrição
    E clicar em salvar
    Então a descrição será salva

  Cenário: Adicionar um etiqueta a um cartão
    Dado que sou um Usuario do Trello na pagina do cartão e necessito de adicionar uma etiqueta
    Quando clicar em etiquetas
    E selecionar uma das etiquetas disponiveis
    Então a etiqueta deverá ser assignada

  Cenário: Adicionar um checklist a um cartão
    Dado que sou um Usuario do Trello na pagina do card e necessito de adicionar um checklist
    Quando clico em Checklist
    E preencho um titulo
    E clico em Adicionar
    Então o checklist deverá estar disponivel para o usuario
    
  Cenário: Remover Cartões
    Dado que sou um Usuario do Trello na pagina do cartão e necessito de arquivar um cartao
    Quando pressionar o botão Arquivar
    E clicar em excluir
    E na janela de confirmação clicar em excluir
    Então o cartão será arquivado

  Cenário: Remover Listas
    Dado que sou um Usuario do Trello no board e necessito de excluir uma lista
    Quando pressionar o botão ... na parte superior da lista
    E clicar em Arquivar esta lista
    Então a lista será excluida