class CartPage
  include Capybara::DSL

  def name_product
    find(".basket-productTitle").text
  end

  def product_value
    find(".summary-total").text
  end

  def remove_product
    all(".basket-productRemoveAct").each { |item| item.click }
  end

  def basket_empty
    find(".basket-empty h2").text
  end
end
