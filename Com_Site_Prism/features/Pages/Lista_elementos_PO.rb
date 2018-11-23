class ListarElementoPage < SitePrism:: Page
    set_url '/buscaelementos/table'

    elements :Lista, 'tr > td'
    
end