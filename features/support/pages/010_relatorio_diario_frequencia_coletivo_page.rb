class RelatorioDiarioPage < SitePrism::Page
  element :campo_lotacao_select, :xpath, "//*[text()[contains(.,'Lotação')]]/../../div[2]/span/div[1]/select"
  element :btn_calendario, ".rich-calendar-button"
  element :btn_data_diaria, ".rich-calendar-cell-size.rich-calendar-cell.rich-calendar-today.rich-calendar-btn"
  element :arquivo_pdf_input, "input[value='Gerar PDF']"
  element :arquivo_excel_input, "input[value='Gerar Excel']"

  def campo_lotacao(lotacao)
    sleep(2)
    puts "Selecionando a lotação"
    campo_lotacao_select.select(lotacao)
  end

  def escolher_data
    sleep(2)
    puts "Selecionando a data de hoje"
    btn_calendario.click
    btn_data_diaria.click
  end
end
