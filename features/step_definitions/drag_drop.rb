Dado("que eu estou na tela de dragdrop") do
    visit '/iteracoes/draganddrop'
end
  
Quando("movo o dragdrop") do
    elemento1 = find('#winston')
    elemento2 = find ('#dropzone')

    elemento1.drag_to(elemento2)
    sleep(5)
end