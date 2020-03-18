#language: pt

@all_ocorrencias

Funcionalidade: Ocorrencias 


# Tipo de Ocorrencia: Compartilhada
@cadastro_ocorrencias_compartilhada
Cenario: Cadastrar Ocorrencia Compartilhada
    Quando eu informo login "solange.sbm" e senha "Berto@10" e clico pra acessar
    E acessar o menu Ocorrencias
    E acessar submenu Cadastro de Ocorrencias
    E digito a descricao "Recesso de Fim de Ano do periodo de 12/2020 até 01/2021"
    E seleciono o tipo de ocorrencia "Compartilhada"
    E seleciono a influencia na carga horaria "Negativa"
    E seleciono apuracao de horas "Parcial"
    E seleciono Permite Lancamento "Não"
    E seleciono Validacao RH "Não"
    E seleciono Banco de horas extraordinario "Não"
    E seleciono adicional de fronteira "Não"
    E adiciono o limite de horas "08:00" para o dia
    Entao insiro a ocorrencia


# Tipo de Ocorrencia: Diferencial
@cadastro_ocorrencias_diferencial
Cenario: Cadastrar Ocorrencia Diferencial
    Quando eu informo login "solange.sbm" e senha "Berto@10" e clico pra acessar
    E acessar o menu Ocorrencias
    E acessar submenu Cadastro de Ocorrencias
    E digito a descricao "Recesso de Fim de Ano do periodo de 12/2019 até 01/2020"
    E seleciono o tipo de ocorrencia "Diferencial"
    E seleciono a influencia na carga horaria "Positiva"
    E seleciono apuracao de horas "Integral"
    E seleciono Permite Lancamento "Sim"
    E seleciono Validacao RH "Não"
    E seleciono Banco de horas extraordinario "Não"
    E seleciono adicional de fronteira "Sim"
    Entao insiro a ocorrencia



# Tipo de Ocorrencia: Exclusiva
@cadastro_ocorrencias_exclusiva
Cenario: Cadastrar Ocorrencia Exclusiva
    Quando eu informo login "solange.sbm" e senha "Berto@10" e clico pra acessar
    E acessar o menu Ocorrencias
    E acessar submenu Cadastro de Ocorrencias
    E digito a descricao "Recesso de Fim de Ano do periodo de 12/2019 até 01/2020"
    E seleciono o tipo de ocorrencia "Exclusiva"
    E seleciono a influencia na carga horaria "Nula"
    E seleciono Permite Lancamento "Sim"
    E seleciono Validacao RH "Não"
    E seleciono Banco de horas extraordinario "Não"
    E seleciono adicional de fronteira "Sim"
    Entao insiro a ocorrencia



@compensacao_extraordinaria
Cenario: Cadastrar Compensação Extraordinária 
    Quando eu informo login "solange.sbm" e senha "Berto@10" e clico pra acessar
    E acessar o menu Ocorrencias
    E acessar o submenu Compensacao Extraordinaria
    E selecione a ocorrencia
    E digitar o periodo de "12/2020" à "01/2021"
    E clicar em salvar
    Entao realizo ocorrencia de fim de ano


