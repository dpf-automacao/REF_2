# Cadastro de Ocorrências

Quando("acessar o menu Ocorrencias") do
  @menu = MenuPage.new
  @configuracaopage = ConfiguracaoPage.new
  @ocorrencias = OcorrenciasPage.new
  @menu.acessar_menu_ocorrencias
end

Quando("acessar submenu Cadastro de Ocorrencias") do
  @menu.acessar_submenu_cadastro_de_ocorrencia
end

Quando("digito a descricao {string}") do |descricao|
  @ocorrencias.digitar_descricao(descricao)
end

Quando("seleciono o tipo de ocorrencia {string}") do |tipo_ocorrencia|
  @ocorrencias.selecionar_tipo_ocorrencia(tipo_ocorrencia)
end

Quando("seleciono a influencia na carga horaria {string}") do |carga_horaria|
  @ocorrencias.selecionar_carga_horaria(carga_horaria)
end

Quando("seleciono apuracao de horas {string}") do |apuracao_horas|
  @ocorrencias.selecionar_apuracao_horas(apuracao_horas)
end

Quando("seleciono Permite Lancamento {string}") do |lancamento|
  @ocorrencias.permite_lancamento(lancamento)
end

Quando("seleciono Validacao RH {string}") do |validar_rh|
  @ocorrencias.validacao_rh(validar_rh)
end

Quando("seleciono Banco de horas extraordinario {string}") do |banco_horas_ext|
  @ocorrencias.selecionar_banco_horas_extraordinario(banco_horas_ext)
end

Quando("seleciono adicional de fronteira {string}") do |adicional_fronteira|
  @ocorrencias.selecionar_adicional_fronteira(adicional_fronteira)
end

Quando("adiciono o limite de horas {string} para o dia") do |limite_de_horas_ocorrencia_dia|
  @ocorrencias.limite_horas_ocorrencia_dia(limite_de_horas_ocorrencia_dia)
end

Entao("insiro a ocorrencia") do
  @ocorrencias.botao_inserir_ocorrencia
  @ocorrencias.validar_insercao_ocorrencia
end

#Compensação Extraordinária

Quando("acessar o submenu Compensacao Extraordinaria") do
  @menu.acessar_submenu_compensacao_extraordinaria
end

Quando("selecione a ocorrencia") do
  @ocorrencias = OcorrenciasPage.new
  @ocorrencias.selecionar_ocorrencia
end

Quando("digitar o periodo de {string} à {string}") do |periodo_inicial, periodo_final|
  @ocorrencias.digitar_periodo_inicial(periodo_inicial)
  @ocorrencias.digitar_periodo_final(periodo_final)
end

Quando("clicar em salvar") do
  @ocorrencias.botao_salvar
end

Entao("realizo ocorrencia de fim de ano") do
  @ocorrencias.validar_compensacao_extraordinaria
end
