require 'report_builder'

Before do
  @home_page = HomePage.new
  @search_page = SearchPage.new
  @product_page = ProductPage.new
  @cart_page = CartPage.new
end

After do
  temp_shot = page.save_screenshot("log/temp_shot.png")
  screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
  attach(screenshot, "image/png")
end

d = DateTime.now
@current_date = d.to_s.tr(":","-")

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/" + @current_date
    config.report_types = [:html]
    config.report_title = "Submarino"
    config.compress_image = true
    config.additional_info = { "App" => "Web", "Data de execução" => @current_date  }
    config.color = "indigo"
  end
  ReportBuilder.build_report
end