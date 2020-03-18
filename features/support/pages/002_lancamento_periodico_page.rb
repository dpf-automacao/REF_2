class LancamentoPeriodicoPage < SitePrism::Page
  element :periodo_inicial_input, "input[id*='DataInicioInputDate']"
  element :periodo_final_input, "input[id*='DataFimInputDate']"
  element :tipo_ocorrencia_select, "select[id*='idOcorrenciaCombo']"
  element :observacao_justificativa_textarea, "textarea[onkeypress*='limitaTamanho']"
  element :inserir_lancamento_btn, "input[value='Inserir Lançamento Periódico']"
  element :confirmar_insercao_lancamento_btn, :xpath, "//*[@xmlns='http://www.w3.org/1999/xhtml']/div/div/input[@value='Confirmar']"
  element :limpar_btn, "input[value='Limpar']"
  element :pesquisar_btn, "input[value='Pesquisar']"
  elements :lancamentos_checkboxs, "input[type='checkbox']"
  element :excluir_ocorrencia_btn, "input[value='Excluir Ocorrências selecionadas']"
  element :confirmar_exclusao_lancamento_btn, "input[type='button'][value='Confirmar']"
  element :operacao_sucesso_span, "div[id*='sucessGlobal'] span[class='rich-message-label']"
  element :input_mes_ano, ".mesAno.mLeft4px"
  #element :btn_pesquisar, :xpath, "//*[@class='labelMesAno']/tbody/tr/td[6]"
  element :btn_adicionar, :xpath, "//*[@class='labelMesAno']/tbody/tr/td[5]"

  # Definindo Metodos para Insercao do Lancamento Periodico

  def preencher_periodo_inicial(periodo_inicial)
    puts "Informando o período inicial"
    wait_until_periodo_inicial_input_visible
    periodo_inicial_input.click.set(periodo_inicial)
  end

  def preencher_periodo_final(periodo_final)
    puts "Informando o período final"
    periodo_final_input.click.set(periodo_final)
  end

  def selecionar_tipo_ocorrencia(tipo_ocorrencia)
    puts "Selecionando o tipo de ocorrência"
    tipo_ocorrencia_select.select(tipo_ocorrencia)
  end

  def preencher_justificativa(justificativa)
    puts "Preenchendo a justificativa"
    observacao_justificativa_textarea.click.set(justificativa)
  end

  def inserir_lancamento_periodico
    puts "Clicando em Inserir Lançamento Periódico"
    inserir_lancamento_btn.click
  end

  def confirmar_insercao_lancamento_periodico
    puts "Confirmando modal"
    wait_until_confirmar_insercao_lancamento_btn_visible
    confirmar_insercao_lancamento_btn.click
  end

  # def
  #   puts "Verificando o lançamento"
  #   if page.assert_text("02/2020") == true
  #     btn_adicionar.click
  #   end
  # end

  def consultar_ocorrencia_ferias
    puts "Verificando o lançamento"
    input_mes_ano.native.clear
    input_mes_ano.click.set("03/2020")
    pesquisar_btn.click
  end

  def validando_datas
    puts "Validando as datas"
    page.execute_script("window.scrollTo(0,+100000)")
    page.assert_text("23 - Segunda-feira")
    page.assert_text("24 - Terça-feira")
    page.assert_text("25 - Quarta-feira")
    page.assert_text("26 - Quinta-feira")
    page.assert_text("27 - Sexta-feira")
    sleep(2)
  end

  # Definindo Metodos para Consulta do Lancamento Periodico

  def consultar_ocorrencia(mes_ano)
    puts "Verificando o lançamento"
    input_mes_ano.native.clear
    input_mes_ano.click.set(mes_ano)
    pesquisar_btn.click
  end

  # Definindo Meotodos para Exclusao do Lancamento Periodico

  def selecionar_lancamentos_periodicos
    puts "Selecionando os lançamentos"
    wait_until_lancamentos_checkboxs_visible
    @tamanho_lancamentos = lancamentos_checkboxs.size
    @i = 0
    while (@i < @tamanho_lancamentos)
      lancamentos_checkboxs[@i].click
      sleep(0.3)
      @i += 1
    end
  end

  def excluir_ocorrencias_selecionadas
    puts "Clicando em Excluir Ocorrências selecionadas"
    excluir_ocorrencia_btn.click
  end

  def confirmar_exclusao_lancamento
    puts "Confirmando modal"
    confirmar_exclusao_lancamento_btn.click
    wait_until_operacao_sucesso_span_visible
  end

  def validar_exclusao
    puts "Validando a exclusão"
    page.assert_text("Operação executada com sucesso.")
  end
end
