#language:pt

@all_resgitro_frequencia

Funcionalidade: Registro de Frequencia

@registro_frequencia_diario
Cenario: Realizar registro de frequencia diario com sucesso
    Quando eu informo login "orlando.obsn" e senha "ctidpf" e clico pra acessar
    E acesso o menu da Home
    E informo a Unidade "SST/DITEL/COINF/DTI/PF" e Servidor "ANDRE BUENO E SILVA JATOBA" e clico para pesquisar
    E seleciono o primeiro dia util do mes
    E seleciono Registro Manual de Frequencia 
    E informo Entrada-Inicio "08:00" e Saida-Termino "18:00" e Observacao "Automação: Registrando manualmente"
    E clico para Salvar o registro de frequencia manual diario
    Entao eu realizo um registro de frequencia manual diario com sucesso

#SERVIDOR COMUM:  ANDRE BUENO E SILVA JATOBA
#CHEFE UNIDADE:  ORLANDO BATISTA DA SILVA NETO

@excluir_registro_frequencia_diario
Cenario: Excluir registro de frequencia diario com sucesso
    Quando eu informo login "orlando.obsn" e senha "ctidpf" e clico pra acessar
    E acesso o menu da Home
    E informo a Unidade "SST/DITEL/COINF/DTI/PF" e Servidor "ANDRE BUENO E SILVA JATOBA" e clico para pesquisar
    E seleciono o primeiro dia util do mes
    E clico para excluir todos os registros
    Entao eu realizo a exclusao de um registro de frequencia manual diario com sucesso

# PENDENTE
@registro_frequencia_mensal
Cenario: Realizar registro de frequencia mensal com sucesso
    Quando eu informo login "orlando.obsn" e senha "ctidpf" e clico pra acessar
    E acesso o menu da Home
    E informo a Unidade "SST/DITEL/COINF/DTI/PF" e Servidor "ANDRE BUENO E SILVA JATOBA" e clico para pesquisar
    E seleciono do primeiro dia util ate o ultimo dia util do mes 
    Entao eu realizo a insercao do registro de frequencia mensal com sucesso

@excluir_registro_frequencia_mensal
Cenario: Excluir registro de frequencia diario com sucesso
    Quando eu informo login "orlando.obsn" e senha "ctidpf" e clico pra acessar
    E acesso o menu da Home
    E informo a Unidade "SST/DITEL/COINF/DTI/PF" e Servidor "ANDRE BUENO E SILVA JATOBA" e clico para pesquisar
    E seleciono do primeiro dia util ate o ultimo dia util do mes para exclusao
    Entao eu realizo a exclusao de um registro de frequencia manual mensal com sucesso
    