Quando("acesso o menu de Lancamento Periodico") do
    @menu = MenuPage.new
    @menu.acessar_lancamento_periodico
    @lancamento_periodico = LancamentoPeriodicoPage.new
end

Quando("Informo Periodo {string} a {string} e Seleciono o") do |periodo_inicial, periodo_final|
    @lancamento_periodico.preencher_periodo_inicial(periodo_inicial)
    @lancamento_periodico.preencher_periodo_final(periodo_final)
end

Quando("Tipo de Ocorrencia {string} e informo a Observacao-Justificativa {string}") do |tipo_ocorrencia, justificativa|
    @lancamento_periodico.selecionar_tipo_ocorrencia(tipo_ocorrencia)
    @lancamento_periodico.preencher_justificativa(justificativa)
end

Quando("clico para Inserir Lancamento Periodico e clico para Confirmar") do
    @lancamento_periodico.inserir_lancamento_periodico
    @lancamento_periodico.confirmar_insercao_lancamento_periodico
end

Entao("eu realizo um Lancamento Periodico com sucesso") do

end

Quando("informo Mes e Ano {string} e clico para Pesquisar") do |mes_e_ano|
    @lancamento_periodico.consultar_ocorrencia(mes_e_ano)
    @lancamento_periodico.pesquisar_ocorrencia
end

Entao("eu realizo a Consulta do Lancamento Periodico com sucesso") do

end

Quando("seleciono todos os checkbox para exclusao do Lancamento periodico") do
    @lancamento_periodico.selecionar_lancamentos_periodicos
end

Quando("clico para Excluir e para Confirmar a Exclusao dos Lancamentos Periodicos") do
    @lancamento_periodico.excluir_ocorrencias_selecionadas
    @lancamento_periodico.confirmar_exclusao_lancamento
end

Entao("eu realizo a Exclusao dos Lancamento Periodico com sucesso") do

end