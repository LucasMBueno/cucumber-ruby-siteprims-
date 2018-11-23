Quando("acesso a url de botoes") do
    visit('/buscaelementos/botoes')
    sleep = 5
  end
  
  Entao("verifico se encontrei os elementos") do
    #all busca todos os elementos que contem o all
    page.all(:css, '.btn')
    find_by_id('teste')
    #busca elemento mapeado
    find('#teste')
    find_button(class: 'btn waves-light')
    #busca o primeiro elemento que contenha o elemento mapeado
    first('.btn')
    #busca por algum link
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
  end