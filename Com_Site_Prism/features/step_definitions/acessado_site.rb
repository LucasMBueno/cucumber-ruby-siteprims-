Quando("acesso a URL") do
    @home = PaginaInicial.new
    @home.load
    sleep(5)
end
  
Entao("verifico se estou na pagina inicial") do
   pagina = 'https://automacaocombatista.herokuapp.com/treinamento/home'
   expect(page).to have_current_path(pagina, url: true)
end