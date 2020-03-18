class OcorrenciasPage < SitePrism::Page

  # Cadastro de Ocorrências
  element :codigo_siape_input, "input[name='formConteudo:j_id99']"
  element :descricao_input, :xpath, "//*[text()=('Descrição')]/../../input[@type='text']"
  element :descricao_completa_textarea, "textarea[name='formConteudo:j_id122']"

  element :tipo_ocorrencia_compartilhada_radio, "input[value='C']"
  element :tipo_ocorrencia_diferencial_radio, "input[value='D']"
  element :tipo_ocorrencia_exclusiva_radio, "input[value='E']"

  element :carga_horaria_positiva_radio, "input[value='PO']"
  element :carga_horaria_negativa_radio, "input[value='NE']"
  element :carga_horaria_nula_radio, "input[value='NU']"

  element :apuracao_horas_integral_radio, "input[value='I']"
  element :apuracao_horas_parcial_radio, "input[value='P']"

  element :permite_lancamento_sim_radio, :xpath, "//*[text()=('Permite Lançamento')]/../../../tbody/tr/td/table/tbody/tr/td/input[@value='true']"
  element :permite_lancamento_nao_radio, :xpath, "//*[text()=('Permite Lançamento')]/../../../tbody/tr/td/table/tbody/tr/td/input[@value='false']"

  element :valiacao_rh_nao_radio, :xpath, "//*[text()=('Validação RH')]/../../../tbody/tr/td/table/tbody/tr/td/input[@value='false']"
  element :valiacao_rh_sim_radio, :xpath, "//*[text()=('Validação RH')]/../../../tbody/tr/td/table/tbody/tr/td/input[@value='true']"

  element :banco_horas_extraordinario_sim_radio, :xpath, "//*[text()=('Banco de Horas Extraordinário')]/../../../tbody/tr/td/table/tbody/tr/td/input[@value='true']"
  element :banco_horas_extraordinario_nao_radio, :xpath, "//*[text()=('Banco de Horas Extraordinário')]/../../../tbody/tr/td/table/tbody/tr/td/input[@value='false']"

  element :adicional_fronteira_nao_radio, :xpath, "//*[text()=('Adicional de Fronteira')]/../../../tbody/tr/td/table/tbody/tr/td/input[@value='false']"
  element :adicional_fronteira_sim_radio, :xpath, "//*[text()=('Adicional de Fronteira')]/../../../tbody/tr/td/table/tbody/tr/td/input[@value='true']"

  element :limite_hora_ocorrencia_dia_input, "input[class='quantidadeLimiteHoras']"
  element :btn_inserir_ocorrencia_input, "input[value='Inserir Ocorrência']"

  # Compensação Extraordinária

  # element :ocorrencia_select, "option[value='3']"
  element :select_ocorrencia, "select[id='formConteudo:ocorrenciaId']"
  element :perido_inicial_input, "input[id='formConteudo:referenciaInicialId']"
  element :periodo_final_input, "input[id='formConteudo:referenciaFinalId']"
  element :btn_salvar_input, "input[id='formConteudo:commandButtonSalvarId']"

  # Cadastro de Ocorrências

  def digitar_descricao(descricao)
    puts "Informando a descrição"
    descricao_input.click.set(descricao)
  end

  # def digitar_descricao_completa(descricao_completa)
  #     descricao_completa_textarea.click.set(descricao_completa_textarea)
  # end

  def selecionar_tipo_ocorrencia(tipo_ocorrencia)
    sleep(0.5)
    puts "Selecionando o tipo de ocorrência"
    if (tipo_ocorrencia == "Compartilhada")
      tipo_ocorrencia_compartilhada_radio.click
    elsif (tipo_ocorrencia == "Diferencial")
      tipo_ocorrencia_diferencial_radio.click
    elsif (tipo_ocorrencia == "Exclusiva")
      tipo_ocorrencia_exclusiva_radio.click
    else
      puts "------------> Não foi possível selecionar nenhum tipo de ocorrencia <------------"
    end
  end

  def selecionar_carga_horaria(carga_horaria)
    sleep(0.5)
    puts "Selecionando a carga horária"
    if (carga_horaria == "Positiva")
      carga_horaria_positiva_radio.click
    elsif (carga_horaria == "Negativa")
      carga_horaria_negativa_radio.click
    elsif (carga_horaria == "Nula")
      carga_horaria_nula_radio.click
    else
      puts "------------> Não foi possível selecionar nenhuma carga horaria <------------"
    end
  end

  def selecionar_apuracao_horas(apuracao_horas)
    sleep(0.5)
    puts "Selecionando a apuração de horas"
    if (apuracao_horas == "Integral")
      apuracao_horas_integral_radio.click
    elsif (apuracao_horas == "Parcial")
      apuracao_horas_parcial_radio.click
    else
      puts "------------> Não foi possível selecionar nenhuma apuracao de horas <------------"
    end
  end

  def permite_lancamento(lancamento)
    sleep(0.5)
    puts "Selecionando a permissão de lançamento"
    if (lancamento == "Sim")
      permite_lancamento_sim_radio.click
    elsif (lancamento == "Não")
      permite_lancamento_nao_radio.click
    else
      puts "------------> Não foi possível selecionar nenhum lancamento <------------"
    end
  end

  def validacao_rh(validar_rh)
    sleep(0.5)
    puts "Selecionando a validação RH"
    if (validar_rh == "Sim")
      valiacao_rh_sim_radio.click
    elsif (validar_rh == "Não")
      valiacao_rh_nao_radio.click
    else
      puts "------------> Não foi possível selecionar nenhum lancamento <------------"
    end
  end

  def selecionar_banco_horas_extraordinario(banco_horas_ext)
    sleep(0.5)
    puts "Selecionando o banco de horas extraordinário"
    if (banco_horas_ext == "Sim")
      banco_horas_extraordinario_sim_radio.click
    elsif (banco_horas_ext == "Não")
      banco_horas_extraordinario_nao_radio.click
    else
      puts "------------> Não foi possível selecionar nenhum lancamento <------------"
    end
  end

  def selecionar_adicional_fronteira(adicional_fronteira)
    sleep(0.5)
    puts "Selecionando o adicional de fronteira"
    if (adicional_fronteira == "Sim")
      adicional_fronteira_sim_radio.click
    elsif (adicional_fronteira == "Não")
      adicional_fronteira_nao_radio.click
    else
      puts "------------> Não foi possível selecionar nenhum lancamento <------------"
    end
  end

  def limite_horas_ocorrencia_dia(limite_de_horas_ocorrencia_dia)
    sleep(0.5)
    limite_hora_ocorrencia_dia_input.click.set(limite_de_horas_ocorrencia_dia)
  end

  def botao_inserir_ocorrencia
    puts "Clicando em Inserir Ocorrência"
    btn_inserir_ocorrencia_input.click
  end

  def validar_insercao_ocorrencia
    puts "Validando o cadastro da ocorrência"
    page.assert_text("Operação Realizada com Sucesso.")
  end

  # Compensação Extraordinária

  def selecionar_ocorrencia
    puts "Selecionando a ocorrência"
    select_ocorrencia.select("Recesso de Fim de Ano")
  end

  def digitar_periodo_inicial(periodo_inicial)
    puts "Informando o período inicial"
    perido_inicial_input.click.set(periodo_inicial)
  end

  def digitar_periodo_final(periodo_final)
    puts "Informando o período inicial"
    periodo_final_input.click.set(periodo_final)
  end

  def botao_salvar
    puts "Clicando em salvar"
    btn_salvar_input.click
  end

  def validar_compensacao_extraordinaria
    if (page.assert_text("Operação Realizada com Sucesso.") == true)
      puts "Validando o cadastro da compensação extraordinária"
    elsif (page.assert_text("Inclusão não permitida. Já existe período cadastrado para este exercício") == true)
      puts "Validando que já existe período cadastrado para este exercício"
    end
  end
end
