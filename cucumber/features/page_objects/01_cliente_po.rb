class PaginaCliente < SitePrism::Page

    element :titulo, :xpath, "//select[@name='gender']"
    element :nome, "#first-name-input"
    element :sobrenome, "#last-name-input"
    element :cpf, "#personal-identifier-input"
    element :rua, "#street-input"
    element :numero, "#street-number-input"
    element :cep, "#postal-code-input"
    element :cidade, "#city-input"
    element :email, "#email-input"
    element :senha, "#password-input"
    element :confirmarsenha, "#password-confirmation-input"
    element :bnt_cadastrar, :xpath, "//input[@type='submit'][@name='submit']"
    element :concordo, "#remember-me-checkbox"
end
