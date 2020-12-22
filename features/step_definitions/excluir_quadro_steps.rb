require_relative "page_objects/ObjectPartner.rb"

Before do
    sessionControler()
end

Dado("que sou um Usuario do Trello na Home") do
    acessSite() # Write code here that turns the phrase above into concrete actions
end

Quando("clicar em um board") do
    clickInAnyBoard()
end

E("dentro desse board clicar em Mais") do
    clickInMais()
end

E("clicar em Fechar Quadro") do
    closeBoard()
end

E("na tela de confirmação clicar em Fechar") do
    clickInClose()
end

Então("o quadro será fechado") do
    closeConfirmation() 
end

