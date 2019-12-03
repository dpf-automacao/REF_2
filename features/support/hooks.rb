After("@deslogar") do

    @login = LoginPage.new
    @login.deslogar_sistema
    
end

# Executando metodo para fechar janela modal de registro de frequencia

After("@fechar_registro_de_frequencia") do

    @registro_de_frequencia = RegistroDeFrequenciaPage.new
    @registro_de_frequencia.fechar_registro_frequencia

end

# Executando metodo para tirar foto depois de cada cenario

After do |scenario|

    file_name = scenario.name.tr(' ', '-').downcase!
    shot = "logs/shots/#{file_name}.png"
    page.save_screenshot(shot)
    embed(shot, 'image/png', 'Clique aqui para ver o print da tela')
    
end
