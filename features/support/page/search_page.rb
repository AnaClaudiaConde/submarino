class SearchPage
  include Capybara::DSL

  def information_product
    first_product = all(".TitleUI-bwhjk3-15").first
    name = first_product.text

    value = all(".PriceUI-bwhjk3-11").first
    price = value.text

    { name: name, price: price }
  end

  def first_product_of_search
    all(".TitleUI-bwhjk3-15").first.click
  end

  def one_more_product(expect_produt)
    qtd = 0
    until qtd == 2
      qtd += 1
      find("#h_search-input").set expect_produt
      find("#h_search-btn").click
      all(".TitleUI-bwhjk3-15")[qtd].click
      find("#btn-buy").click
    end
  end

  def result_search(expected_product)
    products = all(:css, ".product-grid .TitleUI-bwhjk3-15").map { |div| div.text.downcase }
    selected_products = products.select { |product| product.include? expected_product }
    selected_products.any?
  end

  def result_not_existent
    find('span[class$="gqIygL"]').text
  end
end
