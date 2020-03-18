#language: pt 

@all_relatorio
@all_relatorio_folhas_pendentes_e_nao_homologadas

Funcionalidade: Relatorio Folhas Pendentes

#Relatorio Folhas Pendentes
@relatorio_folhas_pendentes_e_nao_homologadas_pdf
    Cenario: Consultar Relatorio de Folhas Pendentes e Nao Homologadas - PDF
        Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
        E acessar o menu Relatorios
        E acessar o submenu Relatorio de Folhas Pendentes e Nao Homologadas
        E selecionar a lotacao "DPF/SJE/SP" Relatorio de Folhas Pendentes e Nao Homologadas
        E selecionar situacao "Todas"
        E digitar mes e ano "10/2019" Relatorio de Folhas Pendentes e Nao Homologadas
        E clicar em gerar PDF
        Entao realizo exportacao do arquivo "Relatório_Frequencia_Ocorrencia_DPF_SJE_SP_102019.pdf" com sucesso

@relatorio_folhas_pendentes_e_nao_homologadas_excel
    Cenario: Consultar Relatorio de Folhas Pendentes e Nao Homologadas - Excel
        Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
        E acessar o menu Relatorios
        E acessar o submenu Relatorio de Folhas Pendentes e Nao Homologadas
        E selecionar a lotacao "DPF/SJE/SP" Relatorio de Folhas Pendentes e Nao Homologadas
        E selecionar situacao "Todas"
        E digitar mes e ano "10/2019" Relatorio de Folhas Pendentes e Nao Homologadas
        E clicar em gerar Excel
        Entao realizo exportacao do arquivo "Relatório_Frequencia_Ocorrencia_DPF_SJE_SP_102019.xls" com sucesso