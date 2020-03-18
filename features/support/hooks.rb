Before do |scenario|
  puts "Cenário em execução: " + scenario.name
end

After do |scenario|
  sufix = ("O cenário FALHOU!" if scenario.failed?) || "Cenário executado com Sucesso !\n\n"
  puts "#{sufix}"
end

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
  #tira uma print
  file_name = scenario.name.tr(" ", "_").upcase
  sufix = ("FALHOU" if scenario.failed?) || "PASSOU"
  shot = "logs/shots/#{file_name}_#{sufix}.png"
  #page.switch_to_window(windows.last)
  puts "Tirando print da tela"
  page.save_screenshot(shot)
  embed(shot, "image/png", "Clique aqui para ver o print da tela")
  #Capybara.reset!
end
