#Relatirio Diario de Frequencia

Quando("acessar o submenu Relatorio Diario de Frequencia Coletivo") do
  @menu = MenuPage.new
  @relatorioDiario = RelatorioDiarioPage.new
  @menu.acessar_relatorio_diario_de_frequencia_coletivo
end

Quando("selecionar a lotacao {string} Relatorio Diario de Frequencia Coletivo") do |lotacao|
  @relatorioDiario.campo_lotacao(lotacao)
end

Quando("escolher data de hoje") do
  @relatorioDiario.escolher_data
end
