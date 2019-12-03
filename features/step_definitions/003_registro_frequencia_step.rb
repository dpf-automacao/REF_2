Quando("acesso o menu da Home") do
    @menu = MenuPage.new
    @registro_frequencia = RegistroFrequenciaPage.new
    @menu.acessar_menu_home
end

Quando("informo a Unidade {string} e Servidor {string} e clico para pesquisar") do |unidade, servidor|
    @registro_frequencia.preencher_unidade(unidade)
    @registro_frequencia.preencher_servidor(servidor)
    @registro_frequencia.pesquisar_folha
end

Quando("seleciono o primeiro dia util do mes") do
    @registro_frequencia.selecionar_primeiro_dia_util_do_mes
end

Quando("seleciono Registro Manual de Frequencia") do
    @registro_frequencia.selecionar_registro_manual_frequencia
end

Quando("informo Entrada-Inicio {string} e Saida-Termino {string} e Observacao {string}") do |entrada_inicio, saida_termino, observacao|
    @registro_frequencia.preencher_entrada_inicio(entrada_inicio)
    @registro_frequencia.preencher_saida_termino(saida_termino)
    @registro_frequencia.preencher_justificativa(observacao)
end

Quando("clico para Salvar o registro de frequencia manual diario") do
    @registro_frequencia.salvar_registro_frequencia
end

Entao("eu realizo um registro de frequencia manual diario com sucesso") do

end

Quando("clico para excluir todos os registros") do
    @registro_frequencia.excluir_registro_frequencia
end

Entao("eu realizo a exclusao de um registro de frequencia manual diario com sucesso") do

end

Quando("seleciono do primeiro dia util ate o ultimo dia util do mes") do

end

Quando("verifico se ja existe registro inserido, se houver realizo a exclusao e insercao, se nao somente a insercao") do
    @registro_frequencia.registrar_frequencia_mensal
end

Entao("eu realizo a insercao do registro de frequencia mensal com sucesso") do

end