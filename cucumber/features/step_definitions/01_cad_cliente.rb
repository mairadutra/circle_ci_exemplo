Dado(/^que eu estou na página de cadastro de usuário$/) do
    visit "https://goo.gl/1VxoEh"
end

Quando(/^eu informos meus dados$/) do
  select "Sr.ª", from: "gender-select"
  @Cliente.nome.set(@nome)
  @Cliente.sobrenome.set(@sobrenome)
  @Cliente.cpf.set(@cpf)
  @Cliente.rua.set(@rua)
  @Cliente.numero.set(@numero)
  @Cliente.cep.set(@cep)
  @Cliente.cidade.set(@cidade)
  @Cliente.email.set(@email)
  @Cliente.senha.set(@senha)
  @Cliente.confirmarsenha.set(@senha)
end

Quando(/^aciono a ação cadastrar$/) do
  execute_script "jQuery('#terms-checkbox').click();"
  click_button 'Cadastro'
end

Então(/^eu tenho um usuário cadastrado$/) do
    expect(page).to have_xpath("//h2[text()='Melhores ofertas para você']")
end
