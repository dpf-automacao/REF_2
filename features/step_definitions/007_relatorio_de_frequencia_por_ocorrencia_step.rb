Quando("acessar o menu Relatorios") do
  @menu = MenuPage.new
  @relatorio_por_ocorrencia = RelatorioPorOcorrenciaPage.new
  @menu.acessar_menu_relatorios
end

Quando("acessar o submenu Relatorios de Frequencia por Ocorrencia") do
  @menu.acessar_submenu_relatorio_frequencia_por_ocorrencia
end

Quando("selecionar a lotacao {string}") do |lotacao|
  @relatorio_por_ocorrencia.selecionar_lotacao(lotacao)
end

Quando("digitar mes e ano {string}") do |data|
  @relatorio_por_ocorrencia.digitar_data(data)
end

Quando("clicar em gerar PDF") do
  @relatorio_por_ocorrencia = RelatorioPorOcorrenciaPage.new
  @relatorio_por_ocorrencia.gerar_arquivo_pdf
end

Quando("clicar em gerar Excel") do
  @relatorio_por_ocorrencia = RelatorioPorOcorrenciaPage.new
  @relatorio_por_ocorrencia.gerar_arquivo_excel
end

Entao("realizo exportacao do arquivo {string} com sucesso") do |arquivo|
  @relatorio_por_ocorrencia.pesquisar_arquivo(arquivo)
end
