class PaginaMinhaConta< SitePrism::Page

    #element :titulo, :xpath, "//select[@name='gender']"
    element :nomerua, "#streetAddress1"
    element :numero, "#streetNumber"
    element :telefone, "#phoneNumber"
    element :bairro, "#district"
end
