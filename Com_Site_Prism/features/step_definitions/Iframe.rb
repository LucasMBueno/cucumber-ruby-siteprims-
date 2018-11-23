Quando("preencho os campos") do
    @paginaframe = PaginaPadrao.new
    @paginaframe.load

   @paginaframe.iframefoco do |dados|
        dados.nome.set 'Lucas'
        dados.last.set 'Bueno'
        sleep (4)
   end
end