#language: pt

@all_lancamento_periodico
Funcionalidade: Lançamento Periodico

@inserir_lancamento_periodico_sucesso
Cenario: Inserir Lancamento Periodico com sucesso
    Quando eu informo login "andre.absj" e senha "ctidpf" e clico pra acessar
    E acesso o menu de Lancamento Periodico
    E Informo Periodo "23/03/2020" a "27/03/2020"
    E seleciono o Tipo de Ocorrencia "Férias" e informo a Observacao-Justificativa "Justificativa Teste"
    E clico para Inserir Lancamento Periodico e clico para Confirmar
    Entao eu realizo um Lancamento Periodico com sucesso

@consultar_lancamento_periodico_sucesso
Cenario: Consultar Lancamento Periodico com sucesso
    Quando eu informo login "andre.absj" e senha "ctidpf" e clico pra acessar
    E acesso o menu de Lancamento Periodico
    E informo Mes e Ano "03/2020" e clico para Pesquisar
    Entao eu realizo a Consulta do Lancamento Periodico com sucesso

@excluir_lancamento_periodico_sucesso
Cenario: Excluir Lancamento Periodico com sucesso
    Quando eu informo login "andre.absj" e senha "ctidpf" e clico pra acessar
    E acesso o menu de Lancamento Periodico
    E informo Mes e Ano "03/2020" e clico para Pesquisar
    E seleciono todos os checkbox para exclusao do Lancamento periodico
    E clico para Excluir e para Confirmar a Exclusao dos Lancamentos Periodicos
    Entao eu realizo a Exclusao dos Lancamento Periodico com sucesso
