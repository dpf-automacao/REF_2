Quando("acessar o menu Extrato") do
  @menu = MenuPage.new
  @extrato = ExtratoPage.new
  @menu.acessar_menu_extrato
end

Quando("acessar o submenu Gerenciar Extrato") do
  @menu.acessar_submenu_gerenciar_extrato
end

Quando("selecionar a unidade {string}") do |unidade|
  @extrato = ExtratoPage.new
  @extrato.selecionar_unidade(unidade)
end

Quando("selecionar nome do servidor {string}") do |servidor|
  @extrato.selecionar_servidor(servidor)
end

Quando("clicar em pesquisar") do
  @extrato.pressionar_botao_pesquisar
end

Entao("realizo pesquisa do extrato com sucesso") do
  @extrato.verificar_extrato
end

Quando("acessar submenu Meu Extrato") do
  @menu.acessar_submenu_meu_extrato
end

# Meu Extrato
Entao("acesso a pagina do meu extrato") do
  @extrato.verificar_meu_extrato
end
