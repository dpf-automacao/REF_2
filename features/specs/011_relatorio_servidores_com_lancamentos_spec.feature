#language: pt 

@all_relatorio
@all_relatorio_servidores

Funcionalidade: Relatorio Servidores com Lancamentos

#Relatorio de Servidores com Lancamentos 
@relatorio_servidores_com_lancamento_manual_pdf
    Cenario: Consultar Relatorio de Servidores com Lançamento Manual - PDF
        Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar 
        E acessar o menu Relatorios
        E acessar o submenu Relatorio de Servidores com Lancamentos Esportivos
        E escolher o tipo de relatorio "Lançamentos manuais"
        E selecionar a unidade "DPF/SJE/SP" no relatorio de servidores
        E digitar mes e ano "08/2019" no relatorio
        E clicar em gerar PDF
        Entao realizo exportacao do arquivo "Relatório_Excesso_De_Lancamento_Manual_DPF_SJE_SP_082019.pdf" com sucesso

@relatorio_servidores_com_lancamento_manual_excel
    Cenario: Consultar Relatorio de Servidores com Lançamento Manual - Excel
        Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar 
        E acessar o menu Relatorios
        E acessar o submenu Relatorio de Servidores com Lancamentos Esportivos
        E escolher o tipo de relatorio "Lançamentos manuais"
        E selecionar a unidade "DPF/SJE/SP" no relatorio de servidores
        E digitar mes e ano "08/2019" no relatorio
        E clicar em gerar Excel
        Entao realizo exportacao do arquivo "Relatório_Excesso_De_Lancamento_Manual_DPF_SJE_SP_082019.xls" com sucesso

#Relatorio de Servidores com Banco de horas a compensar
@relatorio_servidores_com_banco_a_compensar_pdf
    Cenario: Consultar Relatorio de Servidores com Lançamento a compensar - PDF
        Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar 
        E acessar o menu Relatorios
        E acessar o submenu Relatorio de Servidores com Lancamentos Esportivos
        E escolher o tipo de relatorio "Banco de horas a compensar"
        E selecionar a unidade "DPF/SJE/SP" no relatorio de servidores
        E digitar mes e ano "08/2019" no relatorio
        E clicar em gerar PDF
        Entao realizo exportacao do arquivo "Relatório_Servidores_com_Banco_De_Horas_a_Compensar_DPF_SJE_SP_082019.pdf" com sucesso

@relatorio_servidores_com_banco_a_compensar_excel
    Cenario: Consultar Relatorio de Servidores com Lançamento a compensar - Excel 
        Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar 
        E acessar o menu Relatorios
        E acessar o submenu Relatorio de Servidores com Lancamentos Esportivos
        E escolher o tipo de relatorio "Banco de horas a compensar"
        E selecionar a unidade "DPF/SJE/SP" no relatorio de servidores
        E digitar mes e ano "08/2019" no relatorio
        E clicar em gerar Excel
        Entao realizo exportacao do arquivo "Relatório_Servidores_com_Banco_De_Horas_a_Compensar_DPF_SJE_SP_082019.xls" com sucesso

#Relatorio de Servidores com Lancamento de prática esportiva
@relatorio_servidores_com_pratica_esportiva
    Cenario: Consultar Relatorio de Servidores com Lançamento de prática esportiva - PDF
        Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar 
        E acessar o menu Relatorios
        E acessar o submenu Relatorio de Servidores com Lancamentos Esportivos
        E escolher o tipo de relatorio "Lançamento de prática esportiva"
        E selecionar a unidade "DPF/SJE/SP" no relatorio de servidores
        E digitar mes e ano "08/2019" no relatorio
        E clicar em gerar PDF
        Entao realizo exportacao do arquivo "Relatório_Servidores_Lancamento_Pratica_Esportiva_DPF_SJE_SP_082019.pdf" com sucesso

@relatorio_servidores_com_pratica_esportiva
    Cenario: Consultar Relatorio de Servidores com Lançamento de prática esportiva - Excel
        Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar 
        E acessar o menu Relatorios
        E acessar o submenu Relatorio de Servidores com Lancamentos Esportivos
        E escolher o tipo de relatorio "Lançamento de prática esportiva"
        E selecionar a unidade "DPF/SJE/SP" no relatorio de servidores
        E digitar mes e ano "08/2019" no relatorio
        E clicar em gerar Excel
        Entao realizo exportacao do arquivo "Relatório_Servidores_Lancamento_Pratica_Esportiva_DPF_SJE_SP_082019.xls" com sucesso