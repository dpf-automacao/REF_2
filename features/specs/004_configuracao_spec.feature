#language: pt


@all_configuracao

Funcionalidade: Configuracao

@cadastro_valor_hora
Cenario: Cadastrar valor da hora dos servidores
    Quando eu informo login "solange.sbm" e senha "Berto@10" e clico pra acessar
    E acessar o menu configuracao
    E acessar Valor da Hora do Servidor
    E eu digito um valor "22,375" e clicar em Cadastrar
    Entao realizo o cadastro do valor da hora


@cadastro_adicional_fronteira
Cenario: Cadastrar adicional de fronteira
    Quando eu informo login "solange.sbm" e senha "Berto@10" e clico pra acessar
    E acessar o menu configuracao
    E acesso submenu Adicional de Fronteira
    E eu seleciono uf "AC" e seleciono lotacao "NEOF/SELOG/SR/PF/AC" e clico em cadastrar
    Entao valido mensagem de sucesso

@consulta_adicional_fronteira
Cenario: Consultar adicional de fronteira
    Quando eu informo login "solange.sbm" e senha "Berto@10" e clico pra acessar
    E acessar o menu configuracao
    E acesso submenu Adicional de Fronteira
    E consulto a uf "AC" lotacao "NEOF/SELOG/SR/PF/AC"
    Entao eu realizo a consulta com sucesso

@excluir_adicional_fronteira
Cenario: Excluir adicional de fronteira
    Quando eu informo login "solange.sbm" e senha "Berto@10" e clico pra acessar
    E acessar o menu configuracao
    E acesso submenu Adicional de Fronteira
    E consulto a uf "AC" lotacao "NEOF/SELOG/SR/PF/AC" para exclusao
    Entao eu excluo o registro com sucesso

@manter_plantonistas
Cenario: Cadastrar Plantonistas
    Quando eu informo login "solange.sbm" e senha "Berto@10" e clico pra acessar
    E acessar o menu configuracao
    E acesso submenu Manter Plantonistas
    E seleciono a unidade "ANP/DGP/PF" servidor "ALINE COSTA ALMEIDA ARAUJO" 
    E digito periodo inicial "03/2020" e periodo final "" e clico em cadastrar
    Entao eu realizo cadastro com sucesso

@consulta_manter_plantonistas
Cenario: Consultar manter plantonistas
    Quando eu informo login "solange.sbm" e senha "Berto@10" e clico pra acessar
    E acessar o menu configuracao
    E acesso submenu Manter Plantonistas
    E seleciono a unidade "ANP/DGP/PF" e servidor "ALINE COSTA ALMEIDA ARAUJO"
    E consulto o nome "ALINE COSTA ALMEIDA ARAUJO" data inicio "03/2020"
    Entao eu realizo consulta com sucesso
 
@excluir_manter_plantonistas
Cenario: Exclusão plantonista
    Quando eu informo login "solange.sbm" e senha "Berto@10" e clico pra acessar
    E acessar o menu configuracao
    E acesso submenu Manter Plantonistas
    E seleciono a unidade "ANP/DGP/PF" e servidor "ALINE COSTA ALMEIDA ARAUJO"
    E consulto o nome "ALINE COSTA ALMEIDA ARAUJO" data inicio "03/2020" para exclusao
    Entao eu excluo o registro com sucesso