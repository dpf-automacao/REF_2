#language: pt 

@all_relatorio
@all_relatorio_diario_frequencia_coletivo

Funcionalidade: Relatorio Diario de Frequencia

#Relatório Diario de Frequencia
@relatorio_diario_frequencia_coletivo_pdf
    Cenario: Consultar Relatorio de Diario de Frequencia - PDF
        Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
        E acessar o menu Relatorios
        E acessar o submenu Relatorio Diario de Frequencia Coletivo
        E selecionar a lotacao "DPF/SJE/SP" Relatorio Diario de Frequencia Coletivo
        E escolher data de hoje
        E clicar em gerar PDF
        Entao realizo exportacao do arquivo "DGP_PF_1584327600000.pdf" com sucesso

@relatorio_diario_frequencia_coletivo_excel
    Cenario: Consultar Relatorio de Diario de Frequencia - Excel
        Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
        E acessar o menu Relatorios
        E acessar o submenu Relatorio Diario de Frequencia Coletivo
        E selecionar a lotacao "DPF/SJE/SP" Relatorio Diario de Frequencia Coletivo
        E escolher data de hoje
        E clicar em gerar Excel
        Entao realizo exportacao do arquivo "DGP_PF_1584327600000.xls" com sucesso



 