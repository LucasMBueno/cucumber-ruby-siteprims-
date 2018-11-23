Quando("mapeio uma tabela") do
    @lista_elementos = ListarElementoPage.new
    @lista_elementos.load

    puts @lista_elementos.Lista.size
    #puts @lista_elementos.Lista[0].text

    expect(@lista_elementos.Lista.size).to eql (24)

    @lista_elementos.Lista.each do |listas|
        puts listas.text
    end


end