require "capybara"
require "capybara/cucumber"
require "httparty"
require "selenium-webdriver"
require "pry"
require "rspec"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 40
end
