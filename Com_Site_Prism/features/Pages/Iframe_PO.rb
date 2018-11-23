class PaginaIframePage < SitePrism:: Page
    

    element :nome, '#first_name'
    element :last, '#last_name'

end

class PaginaPadrao < SitePrism:: Page

    set_url '/mudancadefoco/iframe'
    iframe :iframefoco, PaginaIframePage, '#id_do_iframe'

    
end