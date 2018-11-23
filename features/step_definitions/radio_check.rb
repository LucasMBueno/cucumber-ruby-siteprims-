Quando("eu marco um checkbox e um radiobox") do
    visit '/buscaelementos/radioecheckbox'
    
    #checkbox
    find('label[for="white"]').click
    check('purple', allow_label_click: true)
    sleep(2)
    uncheck('purple', allow_label_click: true)
    sleep(2)

    #radiobox
    choose('red', allow_label_click: true)
    sleep(2)
end