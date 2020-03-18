class RelatorioFolhasPage < SitePrism::Page
  element :lotacao_select, :xpath, "//*[text()[contains(.,'Lotação')]]/../../div[2]/span/select"
  element :situacao_select, :xpath, "//*[text()[contains(.,'Situação')]]/../../div[2]/span/select"
  element :data_folhas_input, :xpath, "//*[text()[contains(.,'Mês/Ano')]]/../../div[2]/span/input"
  element :pdf_input, "input[value='Gerar PDF']"
  element :excel_input, "input[value='Gerar Excel']"

  # Relatorio de Folhas Pendentes

  def escolher_lotacao(lotacao)
    sleep(2)
    puts "Selecionando a lotação"
    lotacao_select.select(lotacao)
  end

  def situacao_pendente_ou_homologada(situacao)
    sleep(2)
    puts "Selecionando a situação"
    situacao_select.select(situacao)
  end

  def data_folhas(data)
    sleep(2)
    puts "Selecionando o Mês/Ano"
    data_folhas_input.set(data)
  end
end
