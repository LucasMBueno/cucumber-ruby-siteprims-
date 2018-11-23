Quando("eu realizo um cadastro") do
    
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Lucas')
    find('#user_lastname').set('Bueno')
    find('#user_email').send_keys('teste@gmail.com')
    find('input[value="Criar"]').click

end
  
Entao("verifico se cadastrei com sucesso") do
    
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'

end
  
Quando("edito um usuario") do
    find ('.btn.waves-light.blue').click

end
  
Entao("verifico se o usuario foi editado") do
    

end