#language:pt

@all_extrato

Funcionalidade: Extrato


# Gerenciar Extrato
@gerenciar_extrato
Cenario: Gerenciar extrato
    Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
    E acessar o menu Extrato
    E acessar o submenu Gerenciar Extrato
    E selecionar a unidade "DPF/SJE/SP"
    E selecionar nome do servidor "MAURICIO RAMOS LACERDA"
    E clicar em pesquisar
    Entao realizo pesquisa do extrato com sucesso

# Meu Extrato
@meu_extrato
Cenario: Verificar Meu Extrato
    Quando eu informo login "glauber.ges" e senha "ctidpf" e clico pra acessar
    E acessar o menu Extrato
    E acessar submenu Meu Extrato
    Entao acesso a pagina do meu extrato
 