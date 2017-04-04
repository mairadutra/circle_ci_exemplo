Before '@hooks_cliente' do
  @Cliente = PaginaCliente.new
  @nome = Faker::Name.name_with_middle
  @sobrenome = Faker::Name.name_with_middle
  @cpf = Faker::CPF.numeric
  @rua = Faker::Address.street_name
  @numero = Faker::Base.numerify("####")
  @cep = Faker::Base.numerify("#####-###")
  @cidade = Faker::Address.city
  @email = Faker::Internet.email
  senha = "AB" + Faker::Base.numerify("######")
  @senha = senha
  @titulo = "Sr.ª"
  @bairro = Faker::Name.name_with_middle
end
