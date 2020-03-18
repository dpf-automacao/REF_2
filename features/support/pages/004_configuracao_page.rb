class ConfiguracaoPage < SitePrism::Page

  # Valor da hora servidor
  element :campo_valor_da_hora_input, "input[class='fLeft']"
  element :cadastrar_btn, "input[value='Cadastrar']"

  # Adicional de fronteira
  element :uf_select, :xpath, "//*[text()[contains(.,'UF')]]/../div/span/div/select[@class='mLeft10px']"
  element :lotacao_select, :xpath, "//*[text()[contains(.,'Lotação')]]/../div/span/div/select[@class='w280px mLeft10px']"
  elements :consultar_uf_td, :xpath, "//td[text()='AC']"
  elements :consultar_lotacao_td, :xpath, "//*[td]/..//*//*[text()[contains(.,'NEOF/SELOG/SR/PF/AC')]]"
  elements :excluir_input, "input[src='/ref/imagens/ico_excluir.gif']"
  element :registro_excluido_span, "span[class='rich-message-label']"
  element :unidade_adicionada, :xpath, "//*[@class='dr-table-thead']/../tbody//*[text()[contains(.,'AC')]]/..//*[text()[contains(.,'NEOF/SELOG/SR/PF/AC')]]"
  element :message_label, ".rich-message-label"

  # Manter Plantonistas
  element :unidade_select, :xpath, "//*[text()[contains(.,'Unidade')]]/../div[2]/span/div[1]/select"
  element :servidor_select, :xpath, "//*[text()[contains(.,'Servidor')]]/../div[2]/span/div[1]/select"
  elements :consultar_plantonista, :xpath, "//*[text()[contains(.,'ALINE COSTA')]]/..//*[text()[contains(.,'03/2020')]]"
  # element :servidor_option, "option[value='org.jboss.seam.ui.NoSelectionConverter.noSelectionValue']"
  element :periodo_inicial_input, :xpath, "//*[text()[contains(.,'Período Inicial')]]/../div[2]/span/div[1]/input"
  element :periodo_final_input, :xpath, "//*[text()[contains(.,'Período Final')]]/../div[2]/span/div[1]/input"
  elements :consultar_nome_td, :xpath, "//*[td]/..//*//*[text()[contains(.,'ALINE COSTA')]]"
  elements :consultar_data_inicio_td, :xpath, "//*[td]/..//*//*[text()[contains(.,'03/2020')]]"
  elements :consultar_data_fim_td, "td[id*='j_id190']"
  elements :excluir_input, "input[src='/ref/imagens/ico_excluir.gif']"

  # Valor da hora servidor

  def cadastrar_valor_da_hora(valor_da_hora)
    campo_valor_da_hora_input.click.set(valor_da_hora)
  end

  def botao_cadastrar
    cadastrar_btn.click
  end

  def validando_cadastro_hora
    puts "Validando o cadastro da hora"
    page.assert_text("Inclusão realizada com sucesso.")
    page.execute_script("window.scrollTo(0,+100000)")
    page.assert_text(" 22,375")
  end

  # Adicional de Fronteira

  def selecionar_uf_lotacao(uf, lotacao)
    puts "Selecionando o UF"
    uf_select.select(uf)
    puts "Selecionando a Lotação"
    lotacao_select.select(lotacao)
  end

  def botao_cadastrar_adicional_fronteira
    puts "Clicando em cadastrar"
    cadastrar_btn.click
  end

  def validar_cadastro_adicional_fronteira
    if (message_label.text.include?("Inclusão realizada com sucesso."))
      puts "Validando o cadastro"
    elsif (message_label.text.include?("Unidade já possui adicional de fronteira."))
      puts "Validando que já existe o cadastro"
    end
  end

  def validar_consulta_adicional_fronteira
    puts "Consultando se a lotação NEOF/SELOG/SR/PF/AC está na lista"
    unidade_adicionada.trust
  end

  def consultar_uf_lotacao(uf, lotacao)
    @indice = 0
    @indice2 = 1
    @tamanho_listagem = consultar_uf_td.size
    while (@indice < @tamanho_listagem)
      if (consultar_uf_td[@indice].text == uf && consultar_lotacao_td[@indice].text == lotacao)
        consultar_lotacao_td[@indice].hover
        @indice = @tamanho_listagem
      else
        puts "#{@indice2} - UF e lotacao nao encontrados"
      end
      @indice += 1
      @indice2 += 1
    end
  end

  def excluir_uf_lotacao(uf, lotacao)
    @indice = 0
    @indice2 = 1
    @tamanho_listagem = consultar_uf_td.size
    while (@indice < @tamanho_listagem)
      if (consultar_uf_td[@indice].text == uf && consultar_lotacao_td[@indice].text == lotacao)
        excluir_input[@indice].click
        wait_until_registro_excluido_span_visible(wait: 5)
        puts "Registro #{consultar_uf_td[@indice].text} e #{consultar_lotacao_td[@indice].text} excluido com sucesso"
        registro_excluido_span.hover
        sleep(1)
        @indice = @tamanho_listagem
      else
        puts "#{@indice2} - #{consultar_uf_td[@indice].text} e #{consultar_lotacao_td[@indice].text} nao encontrados"
      end
      @indice += 1
      @indice2 += 1
    end
  end

  # Manter Plantonistas

  def validar_exclusao_plantonista
    puts "Validando a exclusão"
    page.assert_text("Registro excluído com sucesso.")
  end

  def consultar_plantonista_cadastrado
    puts "Verificando plantonista cadastrado na lista"
    page.execute_script("window.scrollTo(0,+100)")
    consultar_plantonista[0].trust
  end

  def validar_cadastro_manter_plantonistas
    puts "Validando o cadastro do plantonista"
    page.assert_text("Inclusão realizada com sucesso.")
    page.execute_script("window.scrollTo(0,+100)")
  end

  def selecionar_unidade_e_servidor(unidade, servidor)
    puts "Selecionando Unidade e Servidor"
    unidade_select.select(unidade)
    servidor_select.select(servidor)
    # servidor_option.select
  end

  def periodo_inicial_e_periodo_final(periodo_inicial, periodo_final)
    periodo_inicial_input.click.set(periodo_inicial)
    periodo_final_input.click.set(periodo_final)
  end

  def botao_cadastrar
    puts "Clicando no botão cadastrar"
    cadastrar_btn.click
  end

  def consultar_nome_data_inicio(nome, data_inicio)
    @indice = 0
    @indice2 = 1
    @tamanho_listagem = consultar_nome_td.size
    while (@indice < @tamanho_listagem)
      if (consultar_nome_td[@indice].text == nome && consultar_data_inicio_td[@indice].text == data_inicio)
        consultar_nome_td[@indice].hover
        @indice = @tamanho_listagem
      else
        puts "#{@indice2} - Nome e datas nao encontradas"
      end
      @indice += 1
      @indice2 += 1
    end
  end

  def excluir_nome_data_inicio(nome, data_inicio)
    @indice = 0
    @indice2 = 1
    @tamanho_listagem = consultar_nome_td.size
    while (@indice < @tamanho_listagem)
      if (consultar_nome_td[@indice].text == nome && consultar_data_inicio_td[@indice].text == data_inicio)
        excluir_input[@indice].click
        wait_until_registro_excluido_span_visible(wait: 5)
        puts "#{@indice2} - #{consultar_nome_td[@indice].text} e #{consultar_data_inicio_td[@indice].text} excluido com sucesso"
        registro_excluido_span.hover
        sleep(1)
        @indice = @tamanho_listagem
      end
      @indice += 1
      @indice2 += 1
    end
  end
end
