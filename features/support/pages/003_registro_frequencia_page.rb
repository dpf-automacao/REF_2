class RegistroFrequenciaPage < SitePrism::Page
  elements :status_folha_td, "tbody[id*='opResumoMes'] td"
  elements :dias_do_mes, "tbody[id*='opRelatorio'] a"
  element :registro_manual_frequencia_radio, "input[value='MANUAL']"
  element :entrada_inicio_disabled_input, "input[class='mascaraHora'][disabled='disabled']"
  elements :entrada_inicio_input, "input[class='mascaraHora']"
  elements :saida_termino_input, "input[class='mascaraHora']"
  element :observacao_justificativa_input, "input[maxlength='200']"
  element :unidade_select, "select[id*='unidadeSelecionada']"
  element :servidor_select, "select[id*='servidorSelecionado']"
  element :anterior_btn, "div[class='fRight w77pc'] input[title='Anterior']"
  element :mes_ano_input, "input[id*='mesAnoId']"
  element :pesquisar_btn, "input[value='Pesquisar']"
  elements :excluir_registro_manual_btn, "input[src='/ref/imagens/ico_excluir_cubo.gif']"
  elements :excluir_registro_automatico_btn, "tbody[id*='formInclusao'] input[src='/ref/imagens/ico_cancelar.gif']"
  element :msg_exclusao_reg_manual_sucesso_div, "div[id*='sucessGlobalDelete']"
  element :carregamento_exclusao_reg_automatico_img, "table[id*='carregandoTabelaRegistrosContentTable'] img[src='/ref/imagens/ajax-loader.gif']"
  element :salvar_btn, "input[value='Salvar']"
  element :fechar_btn, "table[id='modalIncluirRegistroContentTable'] input[value='Fechar']"
  element :saldo_horas, "[title='Saldo de Horas Acumulado no mês.']"

  def preencher_unidade(unidade)
    puts "Selecionando a unidade: #{unidade}"
    sleep(1)
    unidade_select.click.select(unidade)
  end

  def preencher_servidor(servidor)
    puts "Selecionando o servidor: #{servidor}"
    sleep(1)
    servidor_select.click.select(servidor)
  end

  # def verificar_status_folha_servidor
  #     @tamanho_colunas_resumo = status_folha_td.size
  #     @indice = 0
  #     while(@indice < @tamanho_colunas_resumo)
  #         if(status_folha_td[5].text == "Aberta")

  #         end
  #     end
  # end

  def preencher_mes_ano(mes_ano)
    sleep(1)
    mes_ano_input.click.set(mes_ano)
  end

  def pesquisar_folha
    sleep(1)
    pesquisar_btn.click
    sleep(5)
  end

  def selecionar_primeiro_dia_util_do_mes
    puts "Selecionando o primeiro dia útil do mes"
    @indice = 0
    @tamanho_do_mes = dias_do_mes.size
    @sabado = "Sábado"
    @domingo = "Domingo"
    @feriado = "(F)"
    @ponto_facultativo = "(PF)"

    while (@indice < @tamanho_do_mes)
      if (dias_do_mes[@indice].text.include?(@sabado) ||
          dias_do_mes[@indice].text.include?(@domingo) ||
          dias_do_mes[@indice].text.include?(@feriado) ||
          dias_do_mes[@indice].text.include?(@ponto_facultativo))
        @indice += 1
      else
        sleep(1)
        dias_do_mes[@indice].click
        @indice = @tamanho_do_mes
      end
    end
  end

  def selecionar_registro_manual_frequencia
    if (has_excluir_registro_manual_btn?(wait: 3))
      excluir_registro_frequencia
      puts "Selecionando o Registro Manual de Frequencia "
      sleep(1)
      registro_manual_frequencia_radio.click
    else
      puts "Selecionando o Registro Manual de Frequencia "
      sleep(1)
      registro_manual_frequencia_radio.click
    end
  end

  def preencher_entrada_inicio(entrada_inicio)
    puts "Informando a Entrada-Inicio"
    sleep(1)
    wait_until_entrada_inicio_disabled_input_invisible
    entrada_inicio_input[0].click.set(entrada_inicio)
  end

  def preencher_saida_termino(saida_final)
    puts "Informando a Saída-Término"
    sleep(1)
    saida_termino_input[1].click.set(saida_final)
  end

  def preencher_justificativa(justificativa)
    sleep(1)
    observacao_justificativa_input.click.set(justificativa)
  end

  def salvar_registro_frequencia
    puts "Clicando em salvar"
    salvar_btn.click
    sleep(1)
  end

  def fechar_modal_registro_frequencia
    puts "Fechando modal"
    fechar_btn.click
    sleep(5)
  end

  def excluir_registro_frequencia
    puts "Excluindo registro frequência"
    sleep(3)
    @indice = 0

    if (has_excluir_registro_manual_btn?(wait: 3))
      @tamanho_registros = excluir_registro_manual_btn.size
      while (@indice < @tamanho_registros)
        excluir_registro_manual_btn[0].click
        wait_until_msg_exclusao_reg_manual_sucesso_div_visible
        sleep(5)
        @indice += 1
      end
    end

    # if (has_excluir_registro_automatico_btn?(wait: 3))
    #   @tamanho_registros = excluir_registro_automatico_btn.size
    #   while (@indice < @tamanho_registros)
    #     excluir_registro_automatico_btn[0].click
    #     wait_until_carregamento_exclusao_reg_automatico_img_invisible
    #     sleep(3)
    #     @indice += 1
    #   end
    # end
  end

  def registrar_frequencia_mensal
    wait_until_dias_do_mes_visible
    puts "Registrando frequência mensal"
    @indice_reg = 0
    @sabado = "Sábado"
    @domingo = "Domingo"
    @feriado = "(F)"
    @ponto_facultativo = "(PF)"
    @entrada_inicio = "09:00"
    @saida_almoco = "12:00"
    @volta_almoco = "13:00"
    @saida_final = "18:00"
    @justificativa = "Teste Automacao registro mensal - Justificativa"

    sleep(5)

    @tamanho_do_mes = dias_do_mes.size

    sleep(5)

    while (@indice_reg < @tamanho_do_mes)
      if (dias_do_mes[@indice_reg].text.include?(@sabado) ||
          dias_do_mes[@indice_reg].text.include?(@domingo) ||
          dias_do_mes[@indice_reg].text.include?(@feriado) ||
          dias_do_mes[@indice_reg].text.include?(@ponto_facultativo))
        @indice_reg += 1
      else
        sleep(3)
        dias_do_mes[@indice_reg].click
        wait_until_registro_manual_frequencia_radio_visible
        sleep(1)

        excluir_registro_frequencia

        selecionar_registro_manual_frequencia
        preencher_entrada_inicio(@entrada_inicio)
        preencher_saida_termino(@saida_almoco)
        preencher_justificativa(@justificativa)
        salvar_registro_frequencia

        wait_until_registro_manual_frequencia_radio_visible
        registro_manual_frequencia_radio.click
        preencher_entrada_inicio(@volta_almoco)
        preencher_saida_termino(@saida_final)
        preencher_justificativa(@justificativa)
        salvar_registro_frequencia
        fechar_modal_registro_frequencia

        @indice_reg += 1
      end
    end
  end

  def excluir_registro_frequencia_mensal
    wait_until_dias_do_mes_visible
    puts "Registrando frequência mensal"
    @indice_reg = 0
    @sabado = "Sábado"
    @domingo = "Domingo"
    @feriado = "(F)"
    @ponto_facultativo = "(PF)"
    @entrada_inicio = "09:00"
    @saida_almoco = "12:00"
    @volta_almoco = "13:00"
    @saida_final = "18:00"
    @justificativa = "Teste Automacao registro mensal - Justificativa"

    sleep(5)

    @tamanho_do_mes = dias_do_mes.size

    sleep(5)

    while (@indice_reg < @tamanho_do_mes)
      if (dias_do_mes[@indice_reg].text.include?(@sabado) ||
          dias_do_mes[@indice_reg].text.include?(@domingo) ||
          dias_do_mes[@indice_reg].text.include?(@feriado) ||
          dias_do_mes[@indice_reg].text.include?(@ponto_facultativo))
        @indice_reg += 1
      else
        wait_until_dias_do_mes_visible
        dias_do_mes[@indice_reg].click
        wait_until_registro_manual_frequencia_radio_visible
        sleep(1)

        excluir_registro_frequencia

        fechar_modal_registro_frequencia

        @indice_reg += 1
      end
    end
  end

  def validar_registro_mensal
    @horas = "000:00"
    if (saldo_horas.text == @horas)
      puts "Validando o Registro Mensal"
    end
  end

  def validar_teste
    puts "Validando o teste"
    page.assert_text("Operação executada com sucesso.")
  end

  def validar_exclusao_registro_mensal
    @horas = "000:00"
    if (saldo_horas.text < @horas)
      puts "Validando exclusão Registro Mensal"
    end
  end
end
