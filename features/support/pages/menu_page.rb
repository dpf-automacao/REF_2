class MenuPage < SitePrism::Page

  # Mapeamento Menu Home
  element :home_link, "a[id='j_id19']"
  element :login_cpf, "[id='login:username']"
  element :login_submit, "[type='submit']"

  # Mapeamento Menu Configuracao
  element :configuracao_div, :xpath, "//div[text()='Configuração']"
  element :valor_da_hora_do_servidor_div, "div[id='j_id21:j_id24']"
  element :adicional_de_fronteira_div, "div[id='j_id21:j_id26']"
  element :manter_plantonistas_div, "div[id='j_id21:j_id28']"

  # Mapeamento Menu Ocorrencias
  element :ocorrencias_div, :xpath, "//div[text()='Ocorrências']"
  element :cadastro_de_ocorrencia_span, :xpath, "//span[text()='Cadastro de Ocorrências']"
  element :compensacao_extraordinaria_span, :xpath, "//span[text()='Compensação Extraordinária']"

  # Mapeamento Menu Lancamento
  element :lancamento_periodico_link, "a[id='j_id35']"

  # Mapeamento Menu Extrato
  element :extrato_div, :xpath, "//div[text()='Extrato']"
  element :gerenciar_extrato_div, :xpath, "//span[text()='Gerênciar Extrato']"
  element :meu_extrato_span, :xpath, "//span[text()='Meu Extrato']"

  # Mapeamento Menu Homologacao
  element :homologacao_div, :xpath, "//div[text()='Homologação']"
  element :folhas_pendentes_span, :xpath, "//span[text()='Folhas Pendentes']"
  element :folhas_homologadas_finalizadas_div, :xpath, "//span[text()='Folhas Finalizadas']"

  # Mapeamento Menu Relatorio
  element :relatorios_div, :xpath, "//div[text()='Relatórios']"
  element :relatorios_de_frequencia_por_ocorrencia_span, :xpath, "//span[text()='Relatórios de Frequência por Ocorrência']"
  element :relatorios_de_adicional_de_fronteira_span, :xpath, "//span[text()='Relatórios de Adicional de Fronteria']"
  element :relatorio_de_folhas_pendentes_ou_nao_homologadas_span, :xpath, "//span[text()='Relatório de Folhas Pendentes ou Não Homologadas']"
  element :relatorio_diario_de_frequencia_coletivo_span, :xpath, "//span[text()='Relatório Diário de Frequência Coletivo']"
  element :relatorios_de_servidores_com_lancamento_pratica_esportiva_span, :xpath, "//span[text()='Relatórios de Servidores com Lançamento Manual/Prática Esportiva']"

  # Menu Home

  def acessar_menu_home
    home_link.click
  end

  # Menu Configuracoes

  def acessar_menu_configuracoes
    configuracao_div.hover
  end

  def acessar_valor_da_hora_do_servidor
    puts "Acessando o valor da Hora do Servidor"
    valor_da_hora_do_servidor_div.hover
    valor_da_hora_do_servidor_div.click
  end

  def acesso_submenu_adiconal_fronteira
    puts "Acessando o submenu adicional de fronteira"
    adicional_de_fronteira_div.hover
    adicional_de_fronteira_div.click
  end

  def acessar_submenu_manter_plantonistas
    puts "Acessando o submenu manter de plantonista"
    manter_plantonistas_div.hover
    manter_plantonistas_div.click
  end

  # Menu Ocorrencias

  def acessar_menu_ocorrencias
    puts "Acessando menu ocorrências"
    ocorrencias_div.hover
  end

  def acessar_submenu_cadastro_de_ocorrencia
    puts "Acessando o submenu cadastro de ocorrência"
    cadastro_de_ocorrencia_span.hover
    cadastro_de_ocorrencia_span.click
  end

  def acessar_submenu_compensacao_extraordinaria
    puts "Acessando o submenu compensação extraordinária"
    compensacao_extraordinaria_span.hover
    compensacao_extraordinaria_span.click
  end

  # Menu Lancamento Periodico

  def acessar_lancamento_periodico
    puts "Acessando o Menu Lançamento Periodico"
    click_link "Lançamento Periódico"
    #lancamento_periodico_link.click
  end

  # Menu Extrato

  def acessar_menu_extrato
    puts "Acessando menu extrato"
    extrato_div.hover
  end

  def acessar_submenu_gerenciar_extrato
    puts "Acessando o submenu Gerenciar Extrato"
    gerenciar_extrato_div.hover.click
  end

  def acessar_submenu_meu_extrato
    puts "Acessando o submenu Meu Extrato"
    meu_extrato_span.click
  end

  # Menu Relatorios

  def acessar_menu_relatorios
    puts "Acessando o o Menu Relatórios"
    relatorios_div.hover
  end

  def acessar_submenu_relatorio_frequencia_por_ocorrencia
    puts "Submenu - Relatórios de Frequência por Ocorrência"
    relatorios_de_frequencia_por_ocorrencia_span.hover.click
  end

  def acessar_relatorio_adicional_fronteira
    puts "Submenu - Relatórios de Adicional de Fronteria"
    relatorios_de_adicional_de_fronteira_span.hover.click
  end

  def acessar_relatorio_de_folhas_pendentes_ou_nao_homologadas
    puts "Submenu - Relatório de Folhas Pendentes ou Não Homologadas"
    relatorio_de_folhas_pendentes_ou_nao_homologadas_span.hover.click
  end

  def acessar_relatorio_diario_de_frequencia_coletivo
    puts "Submenu - Relatório Diário de Frequência Coletivo"
    relatorio_diario_de_frequencia_coletivo_span.hover.click
  end

  def acessar_servidores_com_lancamento_pratica_esportiva
    puts "Submenu - Relatórios de Servidores com Lançamento Manual/Prática Esportiva"
    relatorios_de_servidores_com_lancamento_pratica_esportiva_span.hover.click
  end
end
