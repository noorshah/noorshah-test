Capybara.register_driver :site_prism do |app|
  $browser=Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_driver = :site_prism
end

Before do |scenario|

end

After do|scenario|
  if scenario.failed?
    puts $browser.current_url
    screenshot_dir='screen_shots/'+scenario.name+'.png'
    $browser.save_screenshot(screenshot_dir)
  end
end