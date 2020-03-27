class ExtratoPage < SitePrism::Page

  # Gerenciar Extrato
  element :unidade_select, "select[name='formConteudo:unidadeSelecionada']"
  element :servidor_select, "select[name='formConteudo:servidorSelecionado']"
  element :botao_pesquisar_input, "input[id='formConteudo:pesquisar']"
  element :page_extrato, ".form.bloco"

  # Gerenciar Extrato

  def selecionar_unidade(unidade)
    sleep(2)
    puts "Selecionando a unidade"
    wait_until_unidade_select_visible
    unidade_select.select(unidade)
  end

  def selecionar_servidor(servidor)
    sleep(1)
    puts "Selecionando o servidor"
    servidor_select.select(servidor)
  end

  def pressionar_botao_pesquisar
    sleep(1)
    puts "Clicando no botão pesquisar"
    botao_pesquisar_input.click
    sleep(1)
  end

  def verificar_extrato
    puts "Verificando o Extrato Gerencial Analítico"
    wait_until_page_extrato_visible
    page.assert_text("GLAUBER EMERSON SANTOS")
  end

  # Meu Extrato

  def verificar_meu_extrato
    puts "Verificando o Extrato Analítico do Banco de Horas"
    wait_until_page_extrato_visible
  end
end
