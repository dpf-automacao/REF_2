#language: pt 

@all_relatorio
@all_relatorio_por_ocorrencia

Funcionalidade: Relatorio por Ocorrencia 

@relatorio_frequencia_por_ocorrencia_pdf
Cenario: Consultar Relatorio de Frequencia por Ocorrencia - PDF
    Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
    E acessar o menu Relatorios
    E acessar o submenu Relatorios de Frequencia por Ocorrencia
    E selecionar a lotacao "DPF/SJE/SP"
    E digitar mes e ano "08/2019"
    E clicar em gerar PDF
    Entao realizo exportacao do arquivo "Relatório_Frequencia_Ocorrencia_DPF_SJE_SP_082019.pdf" com sucesso

@relatorio_frequencia_por_ocorrencia_excel
Cenario: Consultar Relatorio de Frequencia por Ocorrencia - Excel
    Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
    E acessar o menu Relatorios
    E acessar o submenu Relatorios de Frequencia por Ocorrencia
    E selecionar a lotacao "DPF/SJE/SP"
    E digitar mes e ano "08/2019"
    E clicar em gerar Excel
    Entao realizo exportacao do arquivo "Relatório_Frequencia_Ocorrencia_DPF_SJE_SP_082019.xls" com sucesso

    