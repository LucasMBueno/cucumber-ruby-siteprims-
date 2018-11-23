Quando("eu faco cadastro") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Lucas')
    find('#user_lastname').set('Bueno')

    find('#user_email').send_keys('teste@gmail.com')
    fill_in(id: 'user_address', with: 'rua teste')

    find('#user_university').set('UNIP')
    find('#user_profile').send_keys('ADS')

    fill_in(id: 'user_gender', with: 'Masculino')
    find('#user_age').set('24')
    
    sleep(5)
    find('input[value="Criar"]').click
    
  end
  
  Entao("verifico se fui cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'

  end