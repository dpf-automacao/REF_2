class RelatorioAdicionalFronteiraPage < SitePrism::Page
  element :tipo_pesquisa_coletivo_input, "input[value='C']"
  element :tipo_pesquisa_individual_input, "input[value='I']"
  element :lotacao_coletiva_select, :xpath, "//*[text()[contains(.,'Lotação')]]/../../div[2]/select"
  element :servidor_select, :xpath, "//*[text()[contains(.,'Servidor')]]/../../div[2]/select"
  element :data_ad_fronteira_input, :xpath, "//*[text()[contains(.,'Mês/Ano')]]/../../div[2]/input"
  element :uf_select, :xpath, "//*[text()[contains(.,'UF')]]/../div[2]/select"
  element :pdf_input, "input[value='Gerar PDF']"
  element :excel_input, "input[value='Gerar Excel']"

  # element :tipo_pesquisa_individual_input, "input[value='I']"

  #Relatorio Adicional de Fronteira

  def pesquisa_por(tipo_pesquisa)
    puts "Selecionando pesquisa por #{tipo_pesquisa}"
    if (tipo_pesquisa == "Coletivo")
      tipo_pesquisa_coletivo_input.click
    else
      (tipo_pesquisa == "Individual")
      tipo_pesquisa_individual_input.click
    end
  end

  def selecionar_uf(uf)
    sleep(2)
    puts "Selecionando a UF"
    uf_select.select(uf)
  end

  def selecionar_lotacao(lotacao)
    sleep(2)
    puts "Selecionando a lotação"
    lotacao_coletiva_select.select(lotacao)
  end

  def selecionar_servidor(servidor)
    sleep(2)
    puts "Selecionando o servidor"
    servidor_select.select(servidor)
  end

  def data_ad_fronteira(data)
    sleep(2)
    puts "Selecionando o Mês/Ano"
    data_ad_fronteira_input.set(data)
  end
end
