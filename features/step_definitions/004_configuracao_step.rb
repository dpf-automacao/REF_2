# Valor da Hora dos Servidores

Quando("acessar o menu configuracao") do
  @menu = MenuPage.new
  @configuracao_page = ConfiguracaoPage.new
  @menu.acessar_menu_configuracoes
end

Quando("acessar Valor da Hora do Servidor") do
  @menu.acessar_valor_da_hora_do_servidor
end

Quando("eu digito um valor {string} e clicar em Cadastrar") do |valor_da_hora|
  @configuracao_page.cadastrar_valor_da_hora(valor_da_hora)
  @configuracao_page.botao_cadastrar
end

Entao("realizo o cadastro do valor da hora") do
  @configuracao_page.validando_cadastro_hora
end

# Adicional de Fronteira

Quando("acesso submenu Adicional de Fronteira") do
  @menu.acesso_submenu_adiconal_fronteira
end

Quando("eu seleciono uf {string} e seleciono lotacao {string} e clico em cadastrar") do |uf, lotacao|
  @configuracao_page.selecionar_uf_lotacao(uf, lotacao)
  @configuracao_page.botao_cadastrar_adicional_fronteira
end

Entao("valido mensagem de sucesso") do
  @configuracao_page = ConfiguracaoPage.new
  @configuracao_page.validar_cadastro_adicional_fronteira
end

Quando("consulto a uf {string} lotacao {string}") do |uf, lotacao|
  @configuracao_page.consultar_uf_lotacao(uf, lotacao)
end

Entao("eu realizo a consulta com sucesso") do
  @configuracao_page = ConfiguracaoPage.new
  @configuracao_page.validar_consulta_adicional_fronteira
end

Quando("consulto a uf {string} lotacao {string} para exclusao") do |uf, lotacao|
  @configuracao_page.excluir_uf_lotacao(uf, lotacao)
end

Entao("eu excluo o registro com sucesso") do
  @configuracao_page.validar_exclusao_plantonista
end

# Manter Plantonistas

Quando("acesso submenu Manter Plantonistas") do
  @menu.acessar_submenu_manter_plantonistas
end

Quando("seleciono a unidade {string} servidor {string}") do |unidade, servidor|
  @configuracao_page.selecionar_unidade_e_servidor(unidade, servidor)
end

Quando("digito periodo inicial {string} e periodo final {string} e clico em cadastrar") do |periodo_inicial, periodo_final|
  @configuracao_page.periodo_inicial_e_periodo_final(periodo_inicial, periodo_final)
  @configuracao_page.botao_cadastrar
end

Entao("eu realizo cadastro com sucesso") do
  @configuracao_page = ConfiguracaoPage.new
  @configuracao_page.validar_cadastro_manter_plantonistas
end

Quando("seleciono a unidade {string} e servidor {string}") do |unidade, servidor|
  @configuracao_page.selecionar_unidade_e_servidor(unidade, servidor)
end

Quando("consulto o nome {string} data inicio {string}") do |nome, data_inicio|
  @configuracao_page.consultar_nome_data_inicio(nome, data_inicio)
end

Entao("eu realizo consulta com sucesso") do
  @configuracao_page.consultar_plantonista_cadastrado
end

Quando("seleciono a unidade {string} e servirdor {string") do |unidade, servidor|
  @configuracao_page.selecionar_unidade_e_servidor(unidade, servidor)
end

Quando("consulto o nome {string} data inicio {string} para exclusao") do |nome, data_inicio|
  @configuracao_page.excluir_nome_data_inicio(nome, data_inicio)
end
