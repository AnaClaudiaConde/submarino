class HomePage
  include Capybara::DSL

  def go
    visit "https://www.submarino.com.br"
  end

  def search_product(expect_produt)
    find("#h_search-input").set expect_produt
    find("#h_search-btn").click
  end
end
