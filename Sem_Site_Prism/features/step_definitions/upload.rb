Quando("eu faço um upload de arquivo") do
    visit '/outros/uploaddearquivos'
    #attach_file('upload', 'C:\Projetos Particulares\cucumber-ruby-siteprims-\foto.jpg', make_visible: true)
    

    @imagem = File.join(Dir.pwd, 'foto.jpg')
    attach_file('upload', @imagem,  make_visible: true)
    
    sleep(4) 
end