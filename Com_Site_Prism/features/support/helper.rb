module Helper

    def Tirar_foto(nome_foto, resultado)
        caminho = "results/screenshots/test_#{resultado}"
        foto = "#{caminho}/#{nome_foto}.png"
        page.save_screenshot(foto)
        embed(foto, 'image/png', 'Clique Aqui')
    end

end
