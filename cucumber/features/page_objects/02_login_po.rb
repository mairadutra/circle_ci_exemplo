class PaginaLogin< SitePrism::Page

    #element :titulo, :xpath, "//select[@name='gender']"
    element :email, "#email-input"
    element :senha, "#password-input"
end
