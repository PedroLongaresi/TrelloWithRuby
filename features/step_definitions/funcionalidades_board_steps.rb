require_relative "page_objects/ObjectPartner.rb"

Before do
    sessionControler()

end

#  Cenário: Criar Listas
Dado("que sou um usuario no board") do
    clickInAnyBoard()
    sleep(2)
end

Quando("clicar em adicionar lista") do
    clickToActiveListField()
end

E("preencho o nome da lista") do
    fillListName()
end

Então("a mesma deve ser criada") do
    clickAddCartaoToDashboard()
end

#Cenário: Criar Cartões
Dado("que sou um Usuario do Trello na pagina inicial") do
    clickInAnyBoard()
end

Quando("pressionar o botão Criar Cartão") do
    clickInAddCartao()
end

E("preencher o titulo do cartão") do
    fillListCardName()
end

E("clico em adicionar cartão") do
    click_add_cartao()
end

E("adiciono outro card") do
    click_add_other_cartao()
end

Então("o cartão será criado") do
    #Não necessita de conferencia de input pois, as outras tasks são autovalidadas
end


#Cenário: Descrever um cartão
Dado("que sou um Usuario do Trello e estou na pagina do cartão") do
    clickInAnyBoard()
    clickInAnyCard()
end

Quando("preencher uma descrição") do
    fillCommentsInCard()
end

E("clicar em salvar") do
    clickInSaveComments()
end

Então("a descrição será salva") do
    checkIfCommentsisfilled() 
end

#Cenário: Adicionar um etiqueta a um cartão
Dado("que sou um Usuario do Trello na pagina do cartão e necessito de adicionar uma etiqueta") do
    clickInAnyBoard()
    clickInAnyCard()
end

Quando("clicar em etiquetas") do
    clickInEtiquetas()
end

E("selecionar uma das etiquetas disponiveis") do
    clickInGreen()
end

Então("a etiqueta deverá ser assignada") do
    closeEtiqueta() 
    checkGreenEtiqueta()
end

#Cenário: Adicionar um checklist a um cartão

Dado("que sou um Usuario do Trello na pagina do card e necessito de adicionar um checklist") do
    clickInAnyBoard()
    clickInAnyCard()
end

Quando("clico em Checklist") do
    clickInChecklist()
end

E("preencho um titulo") do
    fillCheckboxName()
end

E("clico em Adicionar") do
    sendCheckboxName()
end


Então("o checklist deverá estar disponivel para o usuario") do
    testcheckbox()
end


#Cenário: Remover Cartões
Dado("que sou um Usuario do Trello na pagina do cartão e necessito de arquivar um cartao") do
    clickInAnyBoard()
    clickInAnyCard()
end

Quando("pressionar o botão Arquivar") do
    clickInArquivar()
    sleep(6)
end

E("clicar em excluir") do
    clickInDelet()
end

E("na janela de confirmação clicar em excluir") do
    clickInConfirmDeleted()
end

Então("o cartão será arquivado") do
    #Sem necessidade de confirmar a exclusão no front (analisar backend por meio de conexao ao bd)
end

#Cenário: Remover Listas
Dado("que sou um Usuario do Trello no board e necessito de excluir uma lista") do
    clickInAnyBoard()
end

Quando("pressionar o botão ... na parte superior da lista") do
    pressMenuInList()
end

E("clicar em Arquivar esta lista") do
    clickToDeletList()
end

Então("a lista será excluida") do
    () 
end

