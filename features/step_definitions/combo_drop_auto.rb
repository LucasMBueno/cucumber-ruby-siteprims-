Quando("interagindo com dropdown e select") do
    visit '/buscaelementos/dropdowneselect'
    find('.btn.dropdown-button').click
    find('#dropdown3').click
    sleep (5)
  end
  
  Quando("preencho o autocomplete") do
    
  end