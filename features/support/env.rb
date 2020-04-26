require 'cucumber'
require 'rake'
require 'rspec'
require 'selenium-webdriver'

require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'site_prism/all_there'

Capybara.register_driver :site_prism do |app|
  browser = ENV.fetch('browser', 'chrome').to_sym
  Capybara::Selenium::Driver.new(app, browser: browser)
end

Capybara.configure do |config|
  config.default_driver = :site_prism
end


# require 'watir'
# require 'page-object'
# require 'page-object/page_factory'
# World(PageObject::PageFactory)
#
# $browser=Watir::Browser.new :chrome