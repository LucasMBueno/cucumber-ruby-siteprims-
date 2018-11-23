Quando("Clico em um botão") do
    visit '/buscaelementos/botoes'
    find('#teste').click

    texto = find('#div1')
    expect(texto.text).to eql ('Você Clicou no Botão!')
    page.assert_text(text, 'Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')

    find('#teste').click

end
  
Entao("verifico so o texto desapareceu na tela com sucesso") do
   
    assert_no_text(text, 'Você Clicou no Botão!')
    has_no_text?('Você Clicou no Botão!')
end