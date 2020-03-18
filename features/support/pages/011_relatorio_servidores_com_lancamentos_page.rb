class RelatorioServidoresPage < SitePrism::Page
  element :relatorio_lancamento_input, "input[value='LANCAMENTO_MANUAL']"
  element :lotacao_select, "select[name*='id-combo-lotacao']"
  element :data_input, "input[id*='inptMesAno']"
  element :relatorio_banco_horas_a_compensar_input, "input[value='BANCO_HORAS_A_COMPENSAR']"
  element :relatorio_lancamento_pratica_esportiva, "input[value='LANCAMENTO_PRATICA_ESPORTIVA']"
  element :gerar_pdf_input, "input[value='Gerar PDF']"
  element :gerar_excel_input, "input[value='Gerar Excel']"

  # LANCAMENTO_MANUAL

  def tipo_relatorio_lancamento(tipo_relatorio)
    sleep(2)
    puts "Selecionando o Tipo de Relatório"
    if (tipo_relatorio == "Lançamentos manuais")
      relatorio_lancamento_input.click
    elsif (tipo_relatorio == "Banco de horas a compensar")
      relatorio_banco_horas_a_compensar_input.click
    elsif (tipo_relatorio == "Lançamento de prática esportiva")
      relatorio_lancamento_pratica_esportiva.click
    end
  end

  def selecionar_lotacao(lotacao)
    sleep(2)
    puts "Selecionando a lotação"
    lotacao_select.select(lotacao)
  end

  def informar_data(data)
    sleep(2)
    puts "Informando o Mês/Ano"
    data_input.set(data)
  end
end
