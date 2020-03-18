class LoginPage < SitePrism::Page

  # Mapeamento dos elementos

  element :login_input, "input[id='emailcti']"
  element :senha_input, "input[id='senhacti']"
  element :cardapio_div, "div[id='caixa_central']"
  element :acessar_btn, "input[id='acessarcti']"
  element :pagina_inicial_div, "div[id='infoMigualhaPao']"
  element :nome_usuario, "#infoNome"

  # Definindo Metódos

  def logar_ref2(usuario, senha)
    puts "Realizando o login no sistema REF2"
    visit("")
    login_input.click.set(usuario)
    senha_input.click.set(senha)
    acessar_btn.click
    wait_until_cardapio_div_visible
    click_link("REF2")
    switch_to_window(windows.last)
    wait_until_pagina_inicial_div_visible
  end

  def validar_login
    puts "Validando teste"
    page.assert_text("GLAUBER EMERSON SANTOS")
  end
end
