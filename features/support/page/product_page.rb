class ProductPage
  include Capybara::DSL

  def validate_name
    find("#product-name-default").text
  end

  def validate_value
    find(".sales-price").text
  end

  def button_buy
    find("#btn-buy").click
  end
end
