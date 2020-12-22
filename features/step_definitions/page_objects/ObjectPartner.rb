require_relative "elements/ElementsPage"

$list = BotoesECss()

def sessionControler()
    visit "https://trello.com/"
    browser = Capybara.current_session.driver.browser
    browser.manage.add_cookie :name => "token", :value => "5fe046957de24d03518a7f30%2FmLEhxzZgDhh6pdKVA0ndzL8bJ6RurWScNH7ccbWB4DUhyUA1MRZbtai9rm1rFXJO"
end

def acessSite()
    visit "https://trello.com/"
end

def clickInPlus()
    find($list[:plus_header]).click
end

def clickInCriarQuadroHead()
    find($list[:criar_quadro_header]).click
end

def fillBoardName(name)
    $name = name
    if $name=="Teste header"
        find($list[:board_name]).set($list[:name_board_header])
    else
        find($list[:board_name]).set($list[:name_board_body])
    end
end

def clickInCreateBoard()
    find($list[:create_board]).click
end

def checkBoardAsCreated()
    sleep(2)
    if $name=="Teste header"
        expect(find(:xpath,$list[:text_in_header_board]).text).to eql($list[:name_board_header])
    else
        expect(find(:xpath,$list[:text_in_header_board]).text).to eql($list[:name_board_body])
    end

end


def clickInCriarBody()
    find(:xpath,$list[:button_criar_body]).click
end

# Exclusão de Quadro

def clickInAnyBoard()
    first(:xpath, $list[:click_any_board]).click
    sleep(1)
end

def clickInMais()
    sleep(1)
    find(:xpath, $list[:click_mais]).click
    sleep(10)
    # click_link("Mais")
end

def closeBoard()
    # find(:link_text, 'Fechar Quadro…').click
    find(:css, '.js-close-board').click
    sleep(4)
end

def clickInClose()
    find(:xpath, $list[:click_In_close]).click
end

def closeConfirmation()
    expect(find(:css, 'h1').text).to include(' está fechado')

end

def confirmBoard()
    expect(find(:css, $list[:confirm_board]).text).to include('Menu')
end

def clickToActiveListField()
    find($list[:add_list_to_dashboard]).click
end

def fillListName()
    find(:css, $list[:dashboard_fill_list_name]).send_keys($list[:name_list])
end

def clickAddCartaoToDashboard()
    find(:css, $list[:button_adicionar_cartao]).click
end

def clickInAddCartao()
    find(:css, $list[:button_adicionar_cartao2]).click
end

def fillListCardName()
    find(:css, $list[:dashboard_fill_card_name]).send_keys($list[:name_card])
end

def click_add_cartao()
    find(:css, $list[:button_confirm_css]).click
end

def click_add_other_cartao()
    sleep(2)
    find(:css, $list[:dashboard_fill_card_name]).send_keys($list[:name_card2])
    find(:css, $list[:button_confirm_css]).click 
    sleep(5)
end

def checkIfCardAsCreated() 
    expect(find(:css, $list[:text_in_card]).text).to include($list[:name_card])
end

#add Coments

def clickInAnyCard()
    first(:css, $list[:click_in_first_card]).click()
end

def fillCommentsInCard()
    # first(:css, $list[:fill_coments_css]).click()
    find(:css, $list[:fill_coments_css2]).send_keys($list[:lorem_ipsum])
end

def clickInSaveComments()
    find(:css, $list[:button_confirm_comment_css]).click
end

def checkIfCommentsisfilled() 
    expect(find(:xpath, $list[:comment_field]).text).to include($list[:lorem_ipsum])
end

#Cenário: Adicionar um etiqueta a um cartão

def clickInEtiquetas()
    first(:css, $list[:click_add_tag]).click()
end

def clickInGreen()
    first(:css, $list[:click_tag_verde]).click()
end

def closeEtiqueta()
    find(:css, $list[:click_escape_tag]).click()
end

def checkGreenEtiqueta()
    expect(find(:css, $list[:text_in_header_tag]).text).to include('ETIQUETAS')
end

#Cenário: Adicionar um checklist a um cartão

def clickInChecklist()
    find(:css, $list[:click_in_checklist_field]).click()
end

def fillCheckboxName()
    find(:id, $list[:fill_checkbox_name]).send_keys($list[:lorem_ipsum_Checkbox_name])
end

def sendCheckboxName()
    find(:css, $list[:click_send_name_checkbox]).click()
end


def testcheckbox()
    expect(find(:xpath, $list[:search_in_card]).text).to include($list[:lorem_ipsum_Checkbox_name])
end

#Cenário: Remover Cartões

def clickInArquivar()
    find(:css, $list[:click_to_shelve_a_card]).click()
end

def clickInDelet()
    find(:css, $list[:click_to_delet_card]).click()
end

def clickInConfirmDeleted()
    find(:css, $list[:click_to_confirm_deleted]).click()
end

#Cenário: Remover Listas

def pressMenuInList()
    first(:css, $list[:click_to_open_menu_in_list]).click()
end

def clickToDeletList()
    find(:css, $list[:click_to_exclud_list]).click()
end