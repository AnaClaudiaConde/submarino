Dado("que acesso a home") do
  @home_page.go
end

Quando("realizo a busca de um produto específico") do
  @home_page.search_product(Constants::PRODUCT)
end

Então("verifico se buscou pelo produto correto") do
  expect(@search_page.result_search(Constants::PRODUCT.downcase)).to be(true)
end

Quando("realizo a busca de um produto por contexto") do
  @home_page.search_product(Constants::PRODUCT_CONTEXT)
end

Então("verifico se buscou algo do contexto informado") do
  expect(@search_page.result_search(Constants::PRODUCT_CONTEXT.downcase)).to be(true)
end

Quando('realizo a busca de um produto não existente') do
  @home_page.search_product(Constants::PRODUCT_NOT_EXISTING)
end

Então('vejo a mensagem {string}') do |value_expect|
  expect(@search_page.result_not_existent).to eq(value_expect)
end

Quando('seleciono um item') do
  @name = @search_page.information_product[:name]
  @price = @search_page.information_product[:price]
  @search_page.first_product_of_search
end

Então("verifico se o produto foi o escolhido") do
  expect(@name).to eq(@product_page.validate_name)
  expect(@price).to eq(@product_page.validate_value)
end

Quando('adiciono o item escolhido no carrinho') do
  @product_page.button_buy
end

Então('verifico se o produto foi adicionado') do
  expect(@name).to eq(@cart_page.name_product)
  expect(@price).to eq(@cart_page.product_value)
end

Quando("adiciono mais de um item no carrinho") do
  @search_page.one_more_product(Constants::PRODUCT)
end

Quando('removo os produtos') do
  @cart_page.remove_product
end

Então('visualizo a mensagem {string}') do |message|
  expect(@cart_page.basket_empty).to eq(message)
end