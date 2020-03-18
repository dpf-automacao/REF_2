#Relatorio Folhas Pendentes
  
Quando("acessar o submenu Relatorio de Folhas Pendentes e Nao Homologadas") do
    @menu = MenuPage.new
    @relatorioFolhas = RelatorioFolhasPage.new
    @menu.acessar_relatorio_de_folhas_pendentes_ou_nao_homologadas
  end

  Quando("selecionar a lotacao {string} Relatorio de Folhas Pendentes e Nao Homologadas") do |lotacao|
    @relatorioFolhas.escolher_lotacao(lotacao)
  end

  Quando("selecionar situacao {string}") do |situacao|
    @relatorioFolhas.situacao_pendente_ou_homologada(situacao)
   end
  
  Quando("digitar mes e ano {string} Relatorio de Folhas Pendentes e Nao Homologadas") do |data|
    @relatorioFolhas.data_folhas(data)
  end

  Quando("clicar em gerar PDF ou gerar Excel") do
    @relatorioFolhas.pdf_e_excel
  end
  