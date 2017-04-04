Dado(/^que eu esteja na página inicial$/) do
  visit 'https://www.groupon.com.br/'
end

Quando(/^eu acessar a minha conta$/) do
  #Clina no nome do usuário para abirir o menu
  page.find("#user-name").click
  sleep 2
  #Clica no link Minha conta
  page.find('#user-account').click
  sleep 2
  #Escolhe Minha Conta
  page.find('#ls-my-account').click
  sleep 2
  #Ecolhe Meu endereço
  page.find(:xpath, "//a[contains(text(),'Meu endereço')]").click
  sleep 2
end

Quando(/^editar meus dados$/) do
    click_link 'Editar este endereço'
    MinhaConta = PaginaMinhaConta.new
    MinhaConta.nomerua.set(@rua)
    MinhaConta.numero.set(@numero)
    MinhaConta.telefone.set(@telefone)
    MinhaConta.bairro.set(@bairro)
    select "Minas Gerais", from: "state"
    click_button 'Atualizar endereço'

end

Entao(/^estarei com informações atualizadas$/) do
  resultado = find(:xpath, "//*[@id='addresses_form']/div/div/p[2]/span[1]").text
  expect(resultado).to eq @rua
end
