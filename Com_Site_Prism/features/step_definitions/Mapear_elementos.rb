Quando("preencho o fomulario") do
    @mapeando = MapearElementosPage.new
    @mapeando.load
    @mapeando.preencher
    sleep (4)

end