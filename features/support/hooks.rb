Before do |scenario|

end

After do|scenario|
  if scenario.failed?
    puts $browser.url
  end
end