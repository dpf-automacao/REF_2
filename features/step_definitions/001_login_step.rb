Quando("eu informo login {string} e senha {string} e clico pra acessar") do |login, senha|
  @login = LoginPage.new
  @login.logar_ref2(login, senha)
end

Entao("eu realizo um login com sucesso") do
  @login.validar_login
end
