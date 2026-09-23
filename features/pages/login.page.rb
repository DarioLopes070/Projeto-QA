class LoginPage < SitePrism::Page

    # element :entrarComEmailButton, :xpath, "//*[@id=\"main-content\"]/section[1]/div/div/a"
    # element :emailField, :css, "#«Rsvvtiejj35659j6»"
    # element :passwordField, :css, "#«R5fvtiejj35659j6»"
    # element :loginButton, :css, "#auto-component-8a2af6dd-a7de-44af-a06c-b1fdfc6134db > div > div > div._342f8125.f6555255 > div > div._48e06e86._8a6ac38f.a7439114.a78f11cb.f031975b._68b61909._41c64240.f6555255 > button"

    # Botão inicial para entrar com e-mail
    element :entrarComEmailButton, :xpath, "//*[@id=\"main-content\"]/section[1]/div/div/a"
    
    # Campos de e-mail e senha utilizando atributos fixos
    element :emailField, :css, "input[type='email'][autocomplete*='username']"
    element :passwordField, :css, "input[type='password'][autocomplete*='current-password']"
    
    # Botão de submit padrão do formulário do LinkedIn
    element :loginButton, :button, 'Entrar'

    def userLogin
        entrarComEmailButton.click
        sleep 3
        emailField.set ENV['LINKEDIN_USER']
        passwordField.set ENV['LINKEDIN_PASS']
        loginButton.click
    end
end    