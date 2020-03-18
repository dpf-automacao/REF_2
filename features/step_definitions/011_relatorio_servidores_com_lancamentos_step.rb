#Relatorio de Servidores com Lancamentos Esportivo

Quando("acessar o submenu Relatorio de Servidores com Lancamentos Esportivos") do
  @menu.acessar_menu_relatorios
  @menu.acessar_servidores_com_lancamento_pratica_esportiva
end

Quando("escolher o tipo de relatorio {string}") do |tipo_relatorio|
  @relatorio_servidores = RelatorioServidoresPage.new
  @relatorio_servidores.tipo_relatorio_lancamento(tipo_relatorio)
end

Quando("selecionar a unidade {string} no relatorio de servidores") do |lotacao|
  @relatorio_servidores.selecionar_lotacao(lotacao)
end

Quando("digitar mes e ano {string} no relatorio") do |data|
  @relatorio_servidores.informar_data(data)
end
