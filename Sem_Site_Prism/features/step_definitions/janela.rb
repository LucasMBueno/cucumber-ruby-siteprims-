Quando("eu entro na janela e verifico a mensagem") do
    visit '/mudancadefoco/janela'
    @janela = window_opened_by do
        click_on('Clique aqui')
    end

    within_window @janela do 
        expect(current_url).to eql ('https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow')
        @mensagem = find('h5')
        expect(@mensagem.text).to eql ('Você Abriu uma nova janela!!')
        @janela.close
        sleep(2)
    end
end
  
Quando("eu entro no alert  e verifico, faco a acao") do
    visit '/mudancadefoco/alert'
    find('button[onclick="jsAlert()"]').click
    sleep(2)
    page.accept_alert
    sleep(2)

    #cancelar alert
    find('button[onclick="jsConfirm()"]').click
    sleep(2)
    page.dismiss_confirm
    sleep(2)

    find('button[onclick="jsPrompt()"]').click
    sleep(2)
    page.accept_prompt(with: 'Lucas Bueno')
    sleep(2)
end