# language: pt 

@all_relatorio
@all_relatorio_adicional_de_fronteira

Funcionalidade: Relatorio Adicional de Fronteira

#Relatorio Adicional de Fronteira
@relatorio_adicional_de_fronteira_coletivo_pdf
Cenario: Consultar Relatorio de Adicional de Fronteira - PDF
    Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
    E acessar o menu Relatorios
    E acessar o submenu Relatorios de Adicional de Fronteira
    E seleciono o tipo de pesquisa "Coletivo"
    E selecionar UF "AC"
    E selecionar a lotacao "DPF/CZS/AC" do adicional de fronteira
    E digitar mes e ano "08/2019" do adicional de fronteira
    E clicar em gerar PDF
    Entao realizo exportacao do arquivo "Relatorio_Adicional_Fronteira_Coletivo_DPF_CZS_AC_08_2019.pdf" com sucesso
    

@relatorio_adicional_de_fronteira_coletivo_excel
Cenario: Consultar Relatorio de Adicional de Fronteira - Excel
    Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
    E acessar o menu Relatorios
    E acessar o submenu Relatorios de Adicional de Fronteira
    E seleciono o tipo de pesquisa "Coletivo"
    E selecionar UF "AC"
    E selecionar a lotacao "DPF/CZS/AC" do adicional de fronteira
    E digitar mes e ano "08/2019" do adicional de fronteira
    E clicar em gerar Excel
    Entao realizo exportacao do arquivo "Relatorio_Adicional_Fronteira_Coletivo_DPF_CZS_AC_08_2019.xls" com sucesso
    

@relatorio_adicional_de_fronteira_individual_pdf
Cenario: Consultar Relatorio de Adicional de Fronteira - PDF
    Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
    E acessar o menu Relatorios
    E acessar o submenu Relatorios de Adicional de Fronteira
    E seleciono o tipo de pesquisa "Individual"
    E selecionar UF "AC"
    E selecionar a lotacao "DELECOR/DRCOR/SR/PF/AC" do adicional de fronteira
    E selecionar servidor "EDUARDO GOMES"
    E digitar mes e ano "08/2019" do adicional de fronteira
    E clicar em gerar PDF
    Entao realizo exportacao do arquivo "REF-201908.pdf" com sucesso
    

@relatorio_adicional_de_fronteira_individual_excel
Cenario: Consultar Relatorio de Adicional de Fronteira - Excel
    Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
    E acessar o menu Relatorios
    E acessar o submenu Relatorios de Adicional de Fronteira
    E seleciono o tipo de pesquisa "Individual"
    E selecionar UF "AC"
    E selecionar a lotacao "DELECOR/DRCOR/SR/PF/AC" do adicional de fronteira
    E selecionar servidor "EDUARDO GOMES"
    E digitar mes e ano "08/2019" do adicional de fronteira
    E clicar em gerar Excel
    Entao realizo exportacao do arquivo "REF-201908.xls" com sucesso
