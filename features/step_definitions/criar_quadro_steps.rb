require_relative "page_objects/ObjectPartner.rb"
# include "/page_objects/ObjectPartner"
Before do
    sessionControler()
end

Dado("que sou um Usuario do Trello na pagina inicial2") do
    acessSite() 
end

Dado("que necessito de adicionar pelo body") do
    acessSite() 
end

Quando("pressionar o botão + na parte superior") do
    clickInPlus()
end

E("clicar em Criar Quadro") do
    clickInCriarQuadroHead()
end

E("preencher o titulo do Quadro como Teste header") do
    fillBoardName("Teste header")
end

E("pressionar o campo Criar") do
    clickInCreateBoard()
end

Então("o quadro será criado") do
    checkBoardAsCreated() 
end

E("preencher o titulo do Quadro como Teste Body") do
    fillBoardName("Teste Body")
end

Quando("pressionar o botão Criar Quadro") do
    clickInCriarBody()
end


