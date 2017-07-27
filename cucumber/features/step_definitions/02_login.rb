Dado(/^que eu esteja na página de login$/) do
    visit 'https://www.groupon.com.br/login'
end

Quando(/^eu informar minhas credenciais$/) do
     Login = PaginaLogin.new
     Login.email.set(@email)
     Login.senha.set(@senha)
end

Quando(/^efetuar o login$/) do
  click_button 'Login'
end

Entao(/^estarei autenticado no sistema$/) do
  expect(page).to have_xpath("//p[text()='Divirta-se']']")
  sleep 2
  puts "O usuário é " +  @email
  puts "A senha é " +   @senha
end
