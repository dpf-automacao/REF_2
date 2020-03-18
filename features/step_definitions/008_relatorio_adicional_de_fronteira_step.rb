#Relatorio Adicional de Fronteira

Quando("acessar o submenu Relatorios de Adicional de Fronteira") do
  @menu = MenuPage.new
  @relatorioAdicionalFronteira = RelatorioAdicionalFronteiraPage.new
  @menu.acessar_relatorio_adicional_fronteira
end

Quando("seleciono o tipo de pesquisa {string}") do |tipo_pesquisa|
  @relatorioAdicionalFronteira.pesquisa_por(tipo_pesquisa)
end

Quando("selecionar UF {string}") do |uf|
  @relatorioAdicionalFronteira.selecionar_uf(uf)
end

Quando("selecionar a lotacao {string} do adicional de fronteira") do |lotacao|
  @relatorioAdicionalFronteira = RelatorioAdicionalFronteiraPage.new
  @relatorioAdicionalFronteira.selecionar_lotacao(lotacao)
end

Quando("selecionar servidor {string}") do |servidor|
  @relatorioAdicionalFronteira.selecionar_servidor(servidor)
end

Quando("digitar mes e ano {string} do adicional de fronteira") do |data|
  @relatorioAdicionalFronteira.data_ad_fronteira(data)
end
